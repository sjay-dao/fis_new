<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Message extends Model
{
    public function adoptor()
    {
        return $this->belongsTo('App\Adoptor', 'from');
    }
    public function adoptorSent()
    {
        return $this->belongsTo('App\Adoptor', 'to');
    }
    public function adoptorInbox()
    {
        return $this->belongsTo('App\Adoptor', 'from');
    }
}
