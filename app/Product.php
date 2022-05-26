<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use OwenIt\Auditing\Contracts\Auditable;
class Product extends Model implements Auditable
{
    use \OwenIt\Auditing\Auditable;
    public function equipments()
    {
        return $this->belongsToMany('App\Equipment')->withTimestamps();
    }

    public function rawMaterials()
    {
        return $this->belongsToMany('App\RawMaterial')->withTimestamps();
    }
    public function adoptors()
    {
        return $this->belongsToMany('App\Adoptor')->withTimestamps();
    }
   
    
}
