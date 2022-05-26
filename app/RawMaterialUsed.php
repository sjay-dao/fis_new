<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class RawMaterialUsed extends Model
{
    public function AdoptorRawMaterial(){
        return $this->belongsTo('App\AdoptorRawMaterial');
    }
    public function Production()
    {
        return $this->belongsTo('App\Production');
    }
    public function RawMaterial()
    {
        return $this->belongsTo('App\RawMaterial');
    }
}
