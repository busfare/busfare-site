<?php

namespace App\Http\Controllers\User;

use App\Models\Wallet;
use App\Models\Currency;
use App\Models\Driver;
use App\Models\Transaction;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class MakePaymentController extends Controller
{
    public function checkDriver(Request $request){
        $receiver['data'] = Driver::where('email',$request->receiver)->first();
        if($receiver['data']){
            return response($receiver);
        }
        return response(null);
    }

    public function paymentForm()
    {
        $wallets = Wallet::where('user_id',auth()->id())->where('user_type',1)->where('balance', '>', 0)->get();
        $recentPayments = Transaction::where('user_id',auth()->id())->where('user_type',1)->where('remark','driver_payment')->with('currency')->paginate(10);
        $charge = charge('driver-payment');
        return view('user.payment.payment_form',compact('wallets','charge','recentPayments'));
    }

    public function submitPayment(Request $request)
    {
        
        $request->validate([
            'receiver'  => 'required|email',
            'wallet' => 'required|integer',
            'amount'    => 'required|numeric|gt:0' 
        ]);

        $receiver = Driver::where('email',$request->receiver)->first();
        if(!$receiver) return back()->with('error','Driver not found');
        
        $senderWallet = Wallet::where('id',$request->wallet)->where('user_type',1)->where('user_id',auth()->id())->first();
        if(!$senderWallet) return back()->with('error','Your wallet not found');
        
        $currency = Currency::findOrFail($senderWallet->currency->id);
        $charge = charge('driver-payment');
       
        $driverWallet = Wallet::where('currency_id',$currency->id)->where('user_id',$receiver->id)->where('user_type',2)->where('user_id',$receiver->id)->first();

        if(!$driverWallet){
            $driverWallet = Wallet::create([
                'user_id'     => $receiver->id,
                'user_type'   => 2,
                'currency_id' => $currency->id,
                'balance'     => 0
            ]);
        }

        $finalCharge = chargeCalc($charge,$request->amount,$currency->rate);
        if($finalCharge > $request->amount) $finalCharge = 0;
        $finalAmount =  numFormat($request->amount - $finalCharge);

        if($finalAmount < 0)return back()->with('error','Amount can not be less than 0.');
        if($senderWallet->balance < $finalAmount) return back()->with('error','Insufficient balance.');
    
        $senderWallet->balance -= $request->amount;
        $senderWallet->update();

        $trnx              = new Transaction();
        $trnx->trnx        = str_rand();
        $trnx->user_id     = auth()->id();
        $trnx->user_type   = 1;
        $trnx->currency_id = $currency->id;
        $trnx->wallet_id   = $senderWallet->id;
        $trnx->amount      = $request->amount;
        $trnx->charge      = 0;
        $trnx->type        = '-';
        $trnx->remark      = 'driver_payment';
        $trnx->details     = trans('Payment to driver : '). $receiver->email;
        $trnx->save();

        $driverWallet->balance += $finalAmount;
        $driverWallet->update();

        $receiverTrnx              = new Transaction();
        $receiverTrnx->trnx        = $trnx->trnx;
        $receiverTrnx->user_id     = $receiver->id;
        $receiverTrnx->user_type   = 2;
        $receiverTrnx->currency_id = $currency->id;
        $receiverTrnx->wallet_id   = $driverWallet->id;
        $receiverTrnx->amount      = $finalAmount;
        $receiverTrnx->charge      = $finalCharge;
        $receiverTrnx->type        = '+';
        $receiverTrnx->remark      = 'driver_payment';
        $receiverTrnx->details     = trans('Payment received from : '). auth()->user()->email;
        $receiverTrnx->save();

        //mail to user
        @mailSend('make_payment',["curr"=>$currency->code,'amount'=>amount($request->amount,$currency->type,3),"trnx"=>$trnx->trnx,"to_driver"=>$receiver->email,'date_time'=> dateFormat( $receiverTrnx->created_at),"after_balance"=>amount($senderWallet->balance,$currency->type,3)],auth()->user());

         //mail to driver
         @mailSend('make_payment',["curr"=>$currency->code,'amount'=>amount($request->amount,$currency->type,3),"trnx"=>$trnx->trnx,"from_user"=>auth()->user()->email,'date_time'=> dateFormat( $receiverTrnx->created_at),"after_balance"=>amount($driverWallet->balance,$currency->type,3),"charge"=>$finalCharge],auth()->user());
        
        return back()->with('success','Payment successfull');
    }

    public function paymentHistory()
    {
        $search = request('search');
        $payments = Transaction::where('user_id',auth()->id())->where('user_type',1)->where('remark','make_payment')->when($search,function($q) use($search){return $q->where('trnx',$search);})->with('currency')->latest()->paginate(15);
        return view('user.payment.history',compact('payments','search'));
    }

}
