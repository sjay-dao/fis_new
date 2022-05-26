<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use OwenIt\Auditing\Contracts\Auditable;

class Region extends Model implements Auditable
{
    use \OwenIt\Auditing\Auditable;

    public function adoptors()
    {
        return $this->hasMany('App\Adoptor');
    }
}
