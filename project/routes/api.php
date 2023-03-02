<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\User\AuthController;
use App\Http\Controllers\Api\User\UserController;
use App\Http\Controllers\Front\FrontendController;
use App\Http\Controllers\Api\User\EscrowController;
use App\Http\Controllers\Api\User\DepositController;
use App\Http\Controllers\Api\User\VoucherController;
use App\Http\Controllers\Api\SupportTicketController;
use App\Http\Controllers\Api\User\TransferController;
use App\Http\Controllers\Api\Driver\LoginController;
use App\Http\Controllers\Api\User\MakePaymentController;
use App\Http\Controllers\Api\Driver\DriverController;
use App\Http\Controllers\Api\User\RequestMoneyController;
use App\Http\Controllers\Api\User\ExchangeMoneyController;
use App\Http\Controllers\Api\User\ManageInvoiceController;
use App\Http\Controllers\Api\Driver\WithdrawalController;


Route::get('qr-code-scan/{email}',   [FrontendController::class,'scanQR']);

Route::prefix('user')->middleware('maintenance')->group(function(){
    Route::post('login',                           [AuthController::class,'login']);
    Route::post('register',                        [AuthController::class,'register']);
    Route::post('forgot-password',                 [AuthController::class,'forgotPasswordSubmit']);
    Route::post('forgot-password/verify-code',     [AuthController::class,'verifyCodeSubmit']);
    Route::post('reset-password',                  [AuthController::class,'resetPasswordSubmit']);
   
    Route::post('verify-email',                    [AuthController::class,'verifyEmailSubmit'])->middleware('auth:sanctum');
    
    Route::get('resend/verify-email/code',         [AuthController::class,'verifyEmailResendCode'])->name('verify.email.resend')->middleware('auth:sanctum');

    Route::post('two-step/verification',           [AuthController::class,'twoStepVerify'])->middleware('auth:sanctum');
    Route::get('resend/two-step/verify-code',      [AuthController::class,'twoStepResendCode'])->middleware('auth:sanctum');

    Route::middleware(['auth:sanctum','email_verify','twostep_api'])->group(function(){
        Route::post('logout',                  [AuthController::class,'logout']);
        Route::get('/dashboard',               [UserController::class,'index']);
        Route::get('/generate-qrcode',         [UserController::class,'generateQR']);
        Route::get('/user-info',               [UserController::class,'userInfo']);

        Route::get('kyc-form-data',            [UserController::class,'kycForm']);
        Route::post('kyc-form',                [UserController::class,'kycFormSubmit']);

        Route::get('transactions',             [UserController::class,'transactions']);
        Route::get('transaction/details/{id}', [UserController::class,'trxDetails']);

        Route::post('profile-settings',        [UserController::class,'profileSubmit']);
        Route::post('change-password',         [UserController::class,'changePass']);

        Route::middleware(['module','kyc'])->group(function () {
            //transfer-money
            Route::get('transfer-money',    [TransferController::class,'transferForm']);
            Route::post('transfer-money',   [TransferController::class,'submitTransfer']);

            //Request Money
            Route::get('request-money',     [RequestMoneyController::class,'requestForm']);
            Route::post('request-money',    [RequestMoneyController::class,'requestSubmit']);

            //exchange money
            Route::get('exchange-money',    [ExchangeMoneyController::class,'exchangeForm']);
            Route::post('exchange-money',   [ExchangeMoneyController::class,'submitExchange']);

            // driver payment
            Route::get('make-payment',      [MakePaymentController::class,'paymentForm']);
            Route::post('make-payment',     [MakePaymentController::class,'submitPayment']);

            //voucher
            Route::get('create-voucher',    [VoucherController::class,'create']);
            Route::post('create-voucher',   [VoucherController::class,'submit']);

            //withdraw
            Route::get('withdraw-money',    [WithdrawalController::class,'withdrawForm']);
            Route::post('withdraw-money',   [WithdrawalController::class,'withdrawSubmit']);

            //invoice
            Route::get('create-invoice',    [ManageInvoiceController::class,'create']);
            Route::post('create-invoice',   [ManageInvoiceController::class,'store']);

            //escrow
            Route::get('make-escrow',       [EscrowController::class,'create']);
            Route::post('make-escrow',      [EscrowController::class,'store']);

            //deposit
            Route::get('deposit',           [DepositController::class,'index'])->name('deposit.index');

        });
        
        //transfer-money
        Route::get('transfer-money/history',  [TransferController::class,'transferHistory']);
        Route::post('check-receiver',         [TransferController::class,'checkReceiver']);

        //Request Money
        Route::get('money-request',           [RequestMoneyController::class,'moneyRequests']);
        Route::get('sent-money-requests',     [RequestMoneyController::class,'sentRequests']);
        Route::get('received-money-requests', [RequestMoneyController::class,'receivedRequests']);
        Route::post('accept-money-request',   [RequestMoneyController::class,'acceptRequest']);
        Route::post('reject-money-request',   [RequestMoneyController::class,'rejectRequest']);

        //exchange money
        Route::get('exchange-money/history',  [ExchangeMoneyController::class,'exchangeHistory']);

        //payment history
        Route::get('payment/history',   [MakePaymentController::class,'paymentHistory']);
        Route::post('check-driver',   [MakePaymentController::class,'checkDriver']);

        //Reedem voucher
        Route::get('vouchers',          [VoucherController::class,'vouchers']);
        Route::get('redeem-voucher',    [VoucherController::class,'reedemForm']);
        Route::post('redeem-voucher',   [VoucherController::class,'reedemSubmit']);
        Route::get('redeemed-history',  [VoucherController::class,'reedemHistory']);

        //withdraw
        Route::get('withdraw-methods',  [WithdrawalController::class,'methods']);
        Route::get('withdraw-history',  [WithdrawalController::class,'history']);

        //support ticket
        Route::get('support/tickets',                        [SupportTicketController::class,'index'])->name('user.tickets');
        Route::get('support/ticket/messages/{ticket_num}',   [SupportTicketController::class,'messages'])->name('user.ticket.messages');
        Route::post('open/support/ticket',                   [SupportTicketController::class,'openTicket'])->name('user.ticket.open');
        Route::post('reply/ticket/{ticket_num}',             [SupportTicketController::class,'replyTicket'])->name('user.ticket.reply');

        //invoice
        Route::get('invoices',                  [ManageInvoiceController::class,'index']);
        Route::post('invoice/pay-status',       [ManageInvoiceController::class,'payStatus']);
        Route::post('invoice/publish-status',   [ManageInvoiceController::class,'publishStatus']);
        Route::get('invoices-edit/{id}',        [ManageInvoiceController::class,'edit']);
        Route::post('invoices-update/{id}',     [ManageInvoiceController::class,'update']);
        Route::get('invoice-cancel/{id}',       [ManageInvoiceController::class,'cancel']);
        Route::get('invoice/send-mail/{id}',    [ManageInvoiceController::class,'sendToMail']);
        Route::get('invoice/view/{number}',     [ManageInvoiceController::class,'view']);

        //escrow
        Route::get('my-escrow',              [EscrowController::class,'index']);
        Route::get('escrow-pending',         [EscrowController::class,'pending']);
        Route::get('escrow-dispute/{id}',    [EscrowController::class,'disputeForm']);
        Route::post('escrow-dispute/{id}',   [EscrowController::class,'disputeStore']);
        Route::get('release-escrow/{id}',    [EscrowController::class,'release']);
        Route::get('file-download/{id}',     [EscrowController::class,'fileDownload']);

        //deposit
        Route::post('deposit/submit',        [DepositController::class,'depositSubmit']);
        Route::post('payment-submit',        [DepositController::class,'depositPayment'])->name('deposit.payment');
        Route::get('deposit/history',        [DepositController::class,'dipositHistory'])->name('deposit.history');
        Route::get('gateway-methods',        [DepositController::class,'methods'])->name('gateway.methods');
        Route::post('deposit-process',       [DepositController::class,'depositProcess'])->name('deposit.process');

        //twostep
        Route::post('/two-step/send-code',        [UserController::class,'twoStepSendCode']);
        Route::post('/two-step/verify',           [UserController::class,'twoStepVerifySubmit']);
   
    });
});

//driver
Route::prefix('driver')->middleware('maintenance')->group(function () {

    Route::post('login',                           [LoginController::class,'login']);
    Route::post('register',                        [LoginController::class,'register']);
    Route::post('forgot-password',                 [LoginController::class,'forgotPasswordSubmit']);
    Route::post('forgot-password/verify-code',     [LoginController::class,'verifyCodeSubmit']);
    Route::post('reset-password',                  [LoginController::class,'resetPasswordSubmit']);

    Route::post('verify-email',                    [LoginController::class,'verifyEmailSubmit'])->middleware('auth:sanctum');
    
    Route::get('resend/verify-email/code',         [LoginController::class,'verifyEmailResendCode'])->name('verify.email.resend')->middleware('auth:sanctum');

    Route::post('two-step/verification',           [LoginController::class,'twoStepVerify'])->middleware('auth:sanctum');
    Route::get('resend/two-step/verify-code',      [LoginController::class,'twoStepResendCode'])->middleware('auth:sanctum');

    Route::get('/logout',                          [LoginController::class,'logout'])->name('logout')->middleware('auth:sanctum');

    Route::middleware(['auth:sanctum','driver_email_verify','twostep_api'])->group(function(){
        Route::get('/dashboard',                  [DriverController::class,'dashboard'])->name('dashboard');
        Route::get('/generate-qrcode',            [DriverController::class,'generateQR'])->name('qr');

        Route::get('transactions',                [DriverController::class,'transactions']);
        Route::get('transaction/details/{id}',    [DriverController::class,'trxDetails']);

        Route::post('/profile-setting',           [DriverController::class,'profileUpdate']);
        Route::post('/change-password',           [DriverController::class,'updatePassword']);

        //kyc form
        Route::get('kyc-form-data',               [DriverController::class,'kycForm']);
        Route::post('kyc-form',                   [DriverController::class,'kycFormSubmit']);

        //twostep
        Route::post('/two-step/send-code',        [DriverController::class,'twoStepSendCode']);
        Route::post('/two-step/verify',           [DriverController::class,'twoStepVerifySubmit']);

        //withdraw
        Route::get('withdraw-money',              [WithdrawalController::class,'withdrawForm'])->middleware(['module','kyc']);
        Route::post('withdraw-money',             [WithdrawalController::class,'withdrawSubmit'])->middleware(['module','kyc']);

        Route::get('withdraw-methods',            [WithdrawalController::class,'methods']);
        Route::get('withdraw-history',            [WithdrawalController::class,'history']);

        Route::post('generate-api-key',           [DriverController::class,'apiKeyGenerate']);
        Route::get('service-mode',                [DriverController::class,'serviceMode']);

        //support ticket
        Route::get('support/tickets',                        [SupportTicketController::class,'index'])->name('driver.tickets');
        Route::get('support/ticket/messages/{ticket_num}',   [SupportTicketController::class,'messages'])->name('driver.ticket.messages');
        Route::post('open/support/ticket',                   [SupportTicketController::class,'openTicket'])->name('driver.ticket.open');
        Route::post('reply/ticket/{ticket_num}',             [SupportTicketController::class,'replyTicket'])->name('driver.ticket.reply');
    });
});