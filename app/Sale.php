<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use OwenIt\Auditing\Contracts\Auditable;
class Sale extends Model implements Auditable
{
    use \OwenIt\Auditing\Auditable;
    public function adoptor()
    {
        return $this->belongsTo('App\Adoptor');
    }
    public function Production()
    {
        return $this->belongsTo('App\Production');
    }
    public function Client()
    {
        return $this->belongsTo('App\Client');
    }
    // public function AdoptorProduct()
    // {
    // return $this->hasMany('App\AdoptorProduct');
    // }
}
