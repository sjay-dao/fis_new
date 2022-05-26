<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AdoptorRawMaterial extends Model
{
    public function RawMaterial()
    {
        return $this->belongsTo('App\RawMaterial');
    }
    public function Supplier()
    {
        return $this->belongsTo('App\Supplier');
    }
}
