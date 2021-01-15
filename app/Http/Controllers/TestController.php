<?php

namespace App\Http\Controllers;

use App\Transaction;
Use App\Customer;
use Illuminate\Http\Request;
use Flasher\Prime\FlasherInterface;

class TestController extends Controller
{
    public function test()
    {
        return customer::find(1);
    }
    public function toast(FlasherInterface $flasher)
    {
        $flasher->addSuccess('An error has occurred please try again later.');
        return view('test');


    }
}
