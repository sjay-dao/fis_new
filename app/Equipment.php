<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
// use OwenIt\Auditing\Contracts\Auditable;
class Equipment extends Model 
{
    // use \OwenIt\Auditing\Auditable;
    public function Products()
    {
        return $this->belongsToMany('App\Product')->withTimestamps();
    }
    public function AdoptorProduct()
    {
        return $this->belongsToMany('App\AdoptorProduct')->withTimestamps();
    }
    public function adoptors()
    {
        return $this->belongsToMany('App\Adoptor')->withTimestamps();
    }
 
}
