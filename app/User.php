<?php

namespace App;

use Laravel\Passport\HasApiTokens;
use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    
    use HasApiTokens, Notifiable;
    protected $table = 'base_users';
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = 
[        'username', 'password',
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
     * [findForPassport 验证用户名]
     * @param  [string] $username [用户名]
     * @return [type]           [description]
     */
    public function findForPassport($username) {
        return $this->where('username', $username)->first();
    }
}
