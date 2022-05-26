<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Production extends Model
{
    
    public function RawMaterialUsed(){
        return $this->hasMany('App\RawMaterialUsed');
    }
    public function AdoptorProduct(){
        return $this->belongsTo('App\AdoptorProduct');
    }
    public function Sale()
    {
        return $this->belongsToMany('App\Sale');
    }
}
