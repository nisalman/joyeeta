<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class location extends Model
{
    public function transaction()
    {
        $this->hasOne(Transaction::class);
    }
}
