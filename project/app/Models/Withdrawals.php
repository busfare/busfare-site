<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Withdrawals extends Model
{
    use HasFactory;
    protected $with = ['currency'];

    public function method()
    {
        return $this->belongsTo(Withdraw::class,'method_id')->withDefault();
    }

    public function currency()
    {
        return $this->belongsTo(Currency::class,'currency_id')->withDefault();
    }
    
    public function user()
    {
        return $this->belongsTo(User::class,'user_id');
    }
    
    public function driver()
    {
        return $this->belongsTo(Driver::class,'driver_id');
    }

    public function agent()
    {
        return $this->belongsTo(Agent::class,'agent_id');
    }

    public function userDetails()
    {
        if($this->user)
         $user = $this->user;
        elseif($this->driver)
         $user = $this->driver;
        elseif($this->agent)
         $user = $this->agent;
        return $user;
    }
}
