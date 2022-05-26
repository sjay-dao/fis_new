<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Reject extends Model
{
    public function Adoptor()
    {
        return $this->belongsTo('App\Adoptor');
    }
    public function Production()
    {
        return $this->belongsTo('App\Production');
    }
}
