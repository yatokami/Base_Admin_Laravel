<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Builder;

class BaseModel extends Model
{
    protected $dateFormat = 'U';
    
    protected static function boot()
    {
        parent::boot();

        static::addGlobalScope('flag', function(Builder $builder){
            $builder->where('flag', 1);
        });
    }
}
