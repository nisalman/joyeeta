<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class location extends Model
{
    public function transaction()
    {
        $this->hasOne(Transaction::class);
    }
    public function admin()
    {
        return $this->belongsTo(User::class,'admin_id');
    }
    public function operator()
    {
        return $this->belongsTo(User::class,'operator_id');
    }
    public function store()
    {
        return $this->hasMany(Store::class);
    }

}
