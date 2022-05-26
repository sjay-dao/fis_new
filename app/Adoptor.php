<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
// use OwenIt\Auditing\Contracts\Auditable;
class Adoptor extends Model 
{
    // use \OwenIt\Auditing\Auditable;
    public function region()
    {
        return $this->belongsTo('App\Region');
    }
    public function records()
    {
        return $this->hasMany('App\Record');
    }
    public function user()
    {
        return $this->belongsTo('App\User');
    }
    public function equipments()
    {
        return $this->belongsToMany('App\Equipment')->withTimestamps();
    }

    public function rawMaterials()
    {
        return $this->belongsToMany('App\RawMaterial')->withTimestamps();
    }
    public function technologies()
    {
        return $this->belongsToMany('App\Product')->withTimestamps();
    }
    public function forum()
    {
        return $this->belongsTo('App\Forum');
    }
    public function Sale()
    {
        return $this->belongsTo('App\Sale');
    }

 
   
}
