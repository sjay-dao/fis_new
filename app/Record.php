<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Record extends Model
{
    public function adoptor()
    {
        return $this->belongsTo('App\Adoptor');
    }

    public function equipment()
    {
        return $this->belongsTo('App\Equipment','table_id');
    }
    public function product()
    {
        return $this->belongsTo('App\Product','table_id');
    }

}
