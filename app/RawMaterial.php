<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use OwenIt\Auditing\Contracts\Auditable;
class RawMaterial extends Model implements Auditable
{
    use \OwenIt\Auditing\Auditable;

    public function Products()
    {
        return $this->belongsToMany('App\Product')->withTimestamps();
    }
    public function adoptors()
    {
        return $this->belongsToMany('App\Adoptor')->withTimestamps();
    }
    public function AdoptorProduct()
    {
        return $this->belongsToMany('App\AdoptorProduct')->withTimestamps();
    }

    public function RawMats()
    {
        return $this->belongsTo('App\RawMaterialList','name');
    }
  
}
