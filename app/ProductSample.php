<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ProductSample extends Model
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
