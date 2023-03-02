<?php

namespace App\Http\Controllers\Driver;

use App\Models\Wallet;
use App\Models\Country;
use App\Models\Driver;
use App\Models\LoginLogs;
use Illuminate\Http\Request;
use App\Models\Generalsetting;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Cache;


class LoginController extends Controller
{
    public function __construct()
    {
      $this->middleware('guest:driver', ['except' => ['logout']]);
    }

    public function registerForm()
    {
      $gs = Generalsetting::first();
      if($gs->registration == 0){
        return back()->with('error','Registration is currently off.');
      } 
      $countries = Country::get();
      $info = loginIp();
      return view('driver.auth.register',compact('countries','info'));
    }

    public function register(Request $request)
    {
      $gs = Generalsetting::first();
      if($gs->registration == 0){
        return back()->with('error','Registration is currently off.');
      } 

      $countries = Country::query();
      $name = $countries->pluck('name')->toArray();
      $data = $request->validate([
        'business_name' => 'required',
        'name' => 'required',
        'email' => ['required','email','unique:drivers',$gs->allowed_email != null ? 'email_domain:'.$request->email:''],
        'dial_code' => 'required',
        'phone' => 'required',
        'country' => 'required|in:'.implode(',',$name),
        'address' => 'required',
        'password' => 'required|min:4|confirmed'
      ],['email.email_domain'=>'Allowed emails are only within : '.$gs->allowed_email]);
      
      $currency = $countries->where('name',$request->country)->value('currency_id');
      $data['phone'] = $request->dial_code.$request->phone;
      $data['password'] = bcrypt($request->password);
      $data['email_verified	'] = $gs->is_verify == 1 ? 0:1;
      $user = Driver::create($data);
   
      Wallet::create([
        'user_id' => $user->id,
        'user_type' => 2,
        'currency_id' => $currency,
        'balance' => 0
      ]);
      
      session()->flush('success','Registration successful');
      Auth::guard('driver')->attempt(['email' => $request->email, 'password' => $request->password]);

      if($gs->is_verify == 1){
        $user->verify_code = randNum();
        $user->save();
        
        @email([
          'email'   => $user->email,
          'name'    => $user->name,
          'subject' => __('Email Verification Code'),
          'message' => __('Email Verification Code is : '). $user->verify_code,
        ]);

      }
      return redirect(route('driver.dashboard'));
    }


    public function showLoginForm()
    {
      return view('driver.auth.login');
    }

    public function login(Request $request)
    {
      $request->validate( [
        'email'   => 'required|email',
        'password' => 'required'
      ]);


      if (Auth::guard('driver')->attempt(['email' => $request->email, 'password' => $request->password], $request->remember)) {
        if($request->remember){
          Cache::put('remember_login',['email' => $request->email, 'password' => $request->password], 60000);
        }
        LoginLogs::create([
          'driver_id' => driver()->id,
          'ip' => @loginIp()->geoplugin_request,
          'country' => @loginIp()->geoplugin_countryName,
          'city' => @loginIp()->geoplugin_city,
        ]);
        return redirect(route('driver.dashboard'));
      }
      return back()->with('error','Sorry! Credentials Mismatch.');
    }

    public function forgotPasswordForm()
    {
      return view('driver.auth.forgot_passowrd');
    }

    public function forgotPasswordSubmit(Request $request)
    {
       $request->validate(['email'=>'required|email']);
       $existDriver = Driver::where('email',$request->email)->first();
       if(!$existDriver){
         return back()->with('error','Sorry! Email doesn\'t exist');
       }

       $existDriver->verify_code = randNum();
       $existDriver->save();

      @email([
        'email'   => $existDriver->email,
        'name'    => $existDriver->name,
        'subject' => __('Password Reset Code'),
        'message' => __('Password reset code is : ').$existDriver->verify_code,
      ]);
      session()->put('email',$existDriver->email);
      return redirect(route('driver.verify.code'))->with('success','A password reset code has been sent to your email.');
    }

    public function verifyCode()
    {
       return view('driver.auth.verify_code');
    }

    public function verifyCodeSubmit(Request $request)
    {
       $request->validate(['code' => 'required|integer']);
       $user = Driver::where('email',session('email'))->first();
       if(!$user){
         return back()->with('error','User doesn\'t exist');
       }

       if($user->verify_code != $request->code){
         return back()->with('error','Invalid verification code.');
       }
       return redirect(route('driver.reset.password'));
    }

    public function resetPassword()
    {
      return view('driver.auth.reset_password');
    }

    public function resetPasswordSubmit(Request $request)
    {
       $request->validate(['password'=>'required|confirmed|min:6']);
       $driver = Driver::where('email',session('email'))->first();
       $driver->password = bcrypt($request->password);
       $driver->update();
       return redirect(route('driver.login'))->with('success','Password reset successful.');
    }

    public function logout()
    {
      $auth = Auth::guard('driver');
      if($auth->user()->two_fa_status == 1){
        $auth->user()->two_fa = 1;
        $auth->user()->save();
      }
      $auth->logout();
      return redirect('/driver/login');
    }

   
}
