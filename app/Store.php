<?php

namespace App;

use Illuminate\Database\Eloquent\Model;




class Store extends Model
{
    protected $fillable = [
        'balance',
    ];


    public function disbursement()
    {
        return $this->hasMany(Disbursement::class);
    }
    public function transaction()
    {
        return $this->hasMany(Transaction::class);
    }
    public function location()
    {
        return $this->belongsTo(location::class);
    }

}
