<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Disbursement extends Model
{
    public function store()
    {
        return $this->belongsTo(Store::class);
    }
}
