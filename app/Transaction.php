<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Transaction extends Model
{
    public function Customer()
    {
        return $this->belongsTo(Customer::class);
    }
    public function location()
    {
        return $this->belongsTo(location::class);
    }
    public function store()
    {
        return $this->belongsTo(Store::class);
    }
}
