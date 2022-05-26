<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;
use OwenIt\Auditing\Contracts\Auditable;


class User extends Authenticatable implements Auditable
{
    use \OwenIt\Auditing\Auditable;

    use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    public function role()
    {
        return $this->belongsTo('App\Role');
    }

    public function inquiries()
    {
        return $this->hasMany('App\Inquiry');
    }
    public function adoptor()
    {
        return $this->belongsTo('App\Adoptor');
    }
    public function forum()
    {
        return $this->belongsTo('App\Forum');
    }
    public function Comment()
    {
        return $this->hasMany('App\Comment');
    }
    public function otherEquipment()
    {
        return $this->hasMany('App\OtherEquipment');
    }

}
