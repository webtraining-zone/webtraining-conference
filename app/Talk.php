<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Talk extends Model
{
    public function speaker()
    {
        return $this->belongsTo('App\User', 'user_id');
    }

    public function room()
    {
        return $this->belongsTo('App\Room');
    }
}
