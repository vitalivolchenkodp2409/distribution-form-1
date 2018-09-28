<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Laravel\Passport\HasApiTokens;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    use Notifiable, HasApiTokens;

    protected $appends = array('karma_color');

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password','avatar','ip','arrows','karma','last_dub_time',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    public function getKarmaColorAttribute()
    {
        return self::getUserAvatarColorByKaram($this->point);  
    }

    public static function getUserAvatarColorByKaram($karma)
    {
        $min = config('constant.KARMA_COLOR_MIN_VALUE');
        $max = config('constant.KARMA_COLOR_MAX_VALUE');

        if ($karma < $min) {
            return "user-avatar-shadow-red";
        } else if ($karma >= $min && $karma <= $max) {
            return "user-avatar-shadow-orange";
        } else if ($karma > $max) {
            return "user-avatar-shadow-green";
        }

        return "";
    }
}
