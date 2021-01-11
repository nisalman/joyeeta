<?php

namespace App\Http\Controllers;

use App\Transaction;
Use App\Customer;
use Illuminate\Http\Request;

class TestController extends Controller
{
    public function test()
    {
        return customer::find(1);
    }
}
