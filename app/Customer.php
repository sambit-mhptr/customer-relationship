<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Foundation\Auth\User;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Customer extends Model
{
    protected $guarded = [] ;
    public function users(){
       
        $this->belongsToMany(User::class)->withPivot('activity_type', 'description','reaction')->withTimestamps();;
    }
    
}
