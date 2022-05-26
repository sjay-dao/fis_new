<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use OwenIt\Auditing\Contracts\Auditable;
class Comment extends Model implements Auditable
{
    use \OwenIt\Auditing\Auditable;
    public function forum()
    {
        return $this->belongsTo('App\Forum');
    }
    public function user()
    {
        return $this->belongsTo('App\User');
    }
}
