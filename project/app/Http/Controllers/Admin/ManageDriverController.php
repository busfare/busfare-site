<?php

namespace App\Http\Controllers\Admin;

use App\Models\Wallet;
use App\Models\Country;
use App\Models\Deposit;
use App\Models\Driver;
use App\Models\LoginLogs;
use App\Models\Transaction;
use App\Models\Withdrawals;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class ManageDriverController extends Controller
{
    public function index()
    {
        $search = request('search');
        $status = null;
        if(request('status') == 'active')  $status = 1;
        if(request('status') == 'banned')  $status = 2;
      
        $users = Driver::when($status,function($q) use($status) {
            return $q->where('status',$status);
        })->when($search,function($q) use($search) {
            return $q->where('email','like',"%$search%");
        })->latest()->paginate(15);

        return view('admin.driver.index',compact('users','search'));
    }

  
    public function details($id)
    {
        $user = Driver::with('wallets')->findOrFail($id);
        $countries = Country::get(['id','name']);
    
        $withdraw = collect([]);
        Withdrawals::where('user_id',$user->id)->with('currency')->get()->map(function($q) use($withdraw){
            $withdraw->push((float) amountConv($q->amount,$q->currency));
        });
        $totalWithdraw = $withdraw->sum();
        return view('admin.driver.details',compact('user','countries','totalWithdraw'));
    }

    public function profileUpdate(Request $request,$id)
    {
        $request->validate([
            'name' => 'required',
            'email' => 'required|email|unique:drivers,email,'.$id,
            'phone' => 'required',
            'country' => 'required',
        ]);

        $user          = Driver::findOrFail($id);
        $user->name    = $request->name;
        $user->email   = $request->email;
        $user->phone   = $request->phone;
        $user->country = $request->country;
        $user->city    = $request->city;
        $user->zip     = $request->zip;
        $user->address = $request->address;
        $user->status  = $request->status ? 1 : 0;
        $user->email_verified  = $request->email_verified ? 1 : 0;
        $user->kyc_status  = $request->kyc_status ? 1 : 0;
        $user->update();

        return back()->with('success','Driver profile updated');
    }

   
    public function modifyBalance(Request $request)
    {
        $request->validate([
            'wallet_id' => 'required',
            'user_id'   => 'required',
            'amount'    => 'required|gt:0',
            'type'      => 'required|in:1,2'
         ]);
         $user = Driver::findOrFail($request->user_id);
         $wallet = Wallet::where('id',$request->wallet_id)->where('user_id',$request->user_id)->where('user_type',2)->firstOrFail();

         if($request->type == 1){
            $wallet->balance += $request->amount;
            $wallet->update();

            $trnx              = new Transaction();
            $trnx->trnx        = str_rand();
            $trnx->user_id     = $request->user_id;
            $trnx->user_type   = 2;
            $trnx->currency_id = $wallet->currency->id;
            $trnx->amount      = $request->amount;
            $trnx->charge      = 0;
            $trnx->remark      = 'add_balance';
            $trnx->type        = '+';
            $trnx->details     = trans('Balance added by system');
            $trnx->save();

            $msg = 'Balance has been added';

            @mailSend('add_balance',[
                'amount'=> amount($request->amount,$wallet->currency->type,2),
                'curr'  => $wallet->currency->code,
                'trnx'  => $trnx->trnx,
                'after_balance' => amount($wallet->balance,$wallet->currency->type,2),
                'date_time'  => dateFormat($trnx->created_at)
                ],
            $user);
         }
         if($request->type == 2){
            $wallet->balance -= $request->amount;
            $wallet->update();

            $trnx              = new Transaction();
            $trnx->trnx        = str_rand();
            $trnx->user_id     = $request->user_id;
            $trnx->user_type   = 2;
            $trnx->currency_id = $wallet->currency->id;
            $trnx->amount      = $request->amount;
            $trnx->charge      = 0;
            $trnx->remark      = 'subtract_balance';
            $trnx->type        = '-';
            $trnx->details     = trans('Balance subtracted by system');
            $trnx->save();

            $msg = 'Balance has been subtracted';

            @mailSend('subtract_balance',[
                'amount'=> amount($request->amount,$wallet->currency->type,2),
                'curr'  => $wallet->currency->code,
                'trnx'  => $trnx->trnx,
                'after_balance' => amount($wallet->balance,$wallet->currency->type,2),
                'date_time'  => dateFormat($trnx->created_at)
                ],
            $user);
         }

         return back()->with('success',$msg);
         
    }

    public function login($id)
    {
        $driver = Driver::findOrFail($id);
        Auth::guard('driver')->loginUsingId($driver->id);
        return redirect(route('driver.dashboard'));
    }

    public function loginInfo($id)
    {
        $user = Driver::findOrFail($id);
        $loginInfo = LoginLogs::where('driver_id',$id)->latest()->paginate(15);
        return view('admin.driver.login_info',compact('loginInfo','user'));
    }
}
