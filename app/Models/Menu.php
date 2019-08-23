<?php

namespace App\Models;

use App\Models\BaseModel;

class Menu extends BaseModel
{
    protected $table = 't_menu';

    protected $fillable = ['name', 'pid', 'url'];

    public function roles()
    {
        return $this->belongsTo('App\Models\Role', 't_role_menu', 'mid', 'rid');
    }
}
