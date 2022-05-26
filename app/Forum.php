<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use OwenIt\Auditing\Contracts\Auditable;
class Forum extends Model implements Auditable
{
    use \OwenIt\Auditing\Auditable;
    public function user()
    {
        return $this->belongsTo('App\User');
    }
    public function Comment()
    {
        return $this->hasMany('App\Comment');
    }
}
