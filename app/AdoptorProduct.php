<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AdoptorProduct extends Model
{
    public function adoptor()
    {
        return $this->belongsTo('App\Adoptor');
    }
    public function product()
    {
        return $this->belongsTo('App\Product');
    }
    public function production()
    {
        return $this->hasMany('App\Production');
    }
   
   
}
