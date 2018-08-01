<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Talk extends Model
{
    public function speaker()
    {
        return $this->belongsTo('App\User');
    }
}
