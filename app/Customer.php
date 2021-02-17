<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Customer extends Model
{
    public function transaction()
    {
        return $this->hasMany(Transaction::class, 'customer_id');
    }
}
