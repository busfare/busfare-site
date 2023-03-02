<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SupportTicket extends Model
{
    use HasFactory;
    protected $guarded = [];

    public function user()
    {
        return $this->belongsTo(User::class)->withDefault();
    }
    public function driver()
    {
        return $this->belongsTo(Driver::class,'user_id')->withDefault();
    }
    public function agent()
    {
        return $this->belongsTo(Driver::class,'user_id')->withDefault();
    }
    public function messages()
    {
        return $this->hasMany(TicketMessage::class,'ticket_id');
    }
    
}
