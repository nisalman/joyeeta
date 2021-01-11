<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Store extends Model
{
    public function disbursement()
    {
        return $this->hasMany(Disbursement::class);
    }

}
