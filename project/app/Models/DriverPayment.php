<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class DriverPayment extends Model
{
    use HasFactory;

    protected $fillable = [
        'currency_code',
        'amount',
        'details',
        'web_hook',
        'custom',
        'cancel_url',  
        'success_url',  
        'customer_email',
        'payment_id',
        'driver_id',
        'currency_id',
        'mode'
    ];

    public function currency()
    {
        return $this->belongsTo(Currency::class,'currency_id');
    }
    public function driver()
    {
        return $this->belongsTo(Driver::class,'driver_id');
    }


}
