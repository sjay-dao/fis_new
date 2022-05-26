<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ProductionRawMaterial extends Model
{
    public function production()
    {
        return $this->belongsTo('App\Production');
    }

}
