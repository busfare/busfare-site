<?php

use Illuminate\Support\Facades\Route;

use App\Http\Controllers\SupportTicketController;
use App\Http\Controllers\Driver\LoginController;
use App\Http\Controllers\Driver\DriverController;
use App\Http\Controllers\Driver\WithdrawalController;
use App\Http\Controllers\Driver\AuthorizationController;


// ************************** ADMIN SECTION START ***************************//

Route::prefix('driver')->name('driver.')->middleware('maintenance')->group(function () {

    Route::get('/register',            [LoginController::class,'registerForm'])->name('register');
    Route::post('/register',            [LoginController::class,'register']);
    Route::get('/login',            [LoginController::class,'showLoginForm'])->name('login');
    Route::post('/login',           [LoginController::class,'login']);
    Route::get('/forgot-password',   [LoginController::class,'forgotPasswordForm'])->name('forgot.password');
    Route::post('/forgot-password',   [LoginController::class,'forgotPasswordSubmit']);

    Route::get('forgot-password/verify-code',     [LoginController::class,'verifyCode'])->name('verify.code');
    Route::post('forgot-password/verify-code',     [LoginController::class,'verifyCodeSubmit']);

    Route::get('reset-password',     [LoginController::class,'resetPassword'])->name('reset.password');
    Route::post('reset-password',     [LoginController::class,'resetPasswordSubmit']);

    Route::get('verify-email',     [AuthorizationController::class,'verifyEmail'])->name('verify.email')->middleware('auth:driver');
    Route::post('verify-email',     [AuthorizationController::class,'verifyEmailSubmit'])->middleware('auth:driver');

    Route::get('resend/verify-email/code',     [AuthorizationController::class,'verifyEmailResendCode'])->name('verify.email.resend')->middleware('auth:driver');

    Route::get('two-step/verification',     [AuthorizationController::class,'twoStep'])->name('two.step.verification')->middleware('auth:driver');

    Route::post('two-step/verification',     [AuthorizationController::class,'twoStepVerify'])->middleware('auth:driver');

    Route::get('resend/two-step/verify-code', [AuthorizationController::class,'twoStepResendCode'])->name('two.step.resend')->middleware('auth:driver');

    Route::get('/logout',[LoginController::class,'logout'])->name('logout')->middleware('auth:driver');

    Route::middleware(['auth:driver','driver_email_verify','twostep'])->group(function(){
        Route::get('transaction/details/{id}', [DriverController::class,'trxDetails'])->name('trx.details');

        Route::get('/profile-setting', [DriverController::class,'profileSetting'])->name('profile.setting');
        Route::post('/profile-setting', [DriverController::class,'profileUpdate']);

        Route::get('/change-password', [DriverController::class,'changePassword'])->name('change.password');
        Route::post('/change-password', [DriverController::class,'updatePassword']);

        Route::get('/two-step/authentication', [DriverController::class,'twoStep'])->name('two.step');
        Route::get('/two-step/verify', [DriverController::class,'twoStepVerifyForm'])->name('two.step.verify');
        Route::post('/two-step/verify', [DriverController::class,'twoStepVerifySubmit']);
        Route::post('/two-step/authentication', [DriverController::class,'twoStepSendCode']);


        Route::get('/', [DriverController::class,'dashboard'])->name('dashboard');
        Route::get('/generate-qrcode', [DriverController::class,'generateQR'])->name('qr');

         //withdraw
         Route::get('withdraw-money',     [WithdrawalController::class,'withdrawForm'])->name('withdraw.form')->middleware(['module','kyc']);
         Route::post('withdraw-money',    [WithdrawalController::class,'withdrawSubmit'])->middleware(['module','kyc']);

         Route::get('withdraw-methods',   [WithdrawalController::class,'methods'])->name('withdraw.methods');
         Route::get('withdraw-history',   [WithdrawalController::class,'history'])->name('withdraw.history');

         Route::get('api-key',            [DriverController::class,'apiKeyForm'])->name('api.key.form');
         Route::post('generate-api-key',  [DriverController::class,'apiKeyGenerate'])->name('api.key.generate');
         Route::get('service-mode',       [DriverController::class,'serviceMode'])->name('api.service.mode');

         Route::get('transactions',        [DriverController::class,'transactions'])->name('transactions');
         Route::get('download-qr/{email}', [DriverController::class,'downloadQR'])->name('download.qr');

        //kyc form
        Route::get('kyc-form',    [DriverController::class,'kycForm'])->name('kyc.form');
        Route::post('kyc-form',   [DriverController::class,'kycFormSubmit']);

        Route::get('module/{module}',   [DriverController::class,'moduleOff'])->name('module.off');

        // support ticket
        Route::get('support/tickets',           [SupportTicketController::class,'index'])->name('ticket.index');
        Route::post('open/support/tickets',     [SupportTicketController::class,'openTicket'])->name('ticket.open');
        Route::post('reply/ticket/{ticket_num}',[SupportTicketController::class,'replyTicket'])->name('ticket.reply');
    });


});
