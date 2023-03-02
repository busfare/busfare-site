<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use App\Models\Generalsetting;

class DriverEmailVerify
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure(\Illuminate\Http\Request): (\Illuminate\Http\Response|\Illuminate\Http\RedirectResponse)  $next
     * @return \Illuminate\Http\Response|\Illuminate\Http\RedirectResponse
     */
    public function handle(Request $request, Closure $next)
    { 
        $is_verify = Generalsetting::value('is_verify');
        if($is_verify){
            if (auth()->guard('driver')->check()) {
                $user = driver();
                if($user->email_verified == 0){
                    if($request->expectsJson()){
                        $response = [
                            'success'    => true,
                            'message'    => 'Please verify your email.',
                            'response'   => ['email_verify' => true],
                        ];
                
                        return response()->json($response);
                    }
                    return redirect()->route('driver.verify.email');
                }
                return $next($request);
            }
            return redirect(route('driver.login'));
        }
        return $next($request);
    }
}
