<?php

namespace App\Http\Controllers;

use App\Transaction;
Use App\Customer;
use Illuminate\Http\Request;
use Flasher\Prime\FlasherInterface;
use Brian2694\Toastr\Facades\Toastr;

class TestController extends Controller
{
    public function test()
    {
        return customer::find(1);
    }
    public function toast(FlasherInterface $flasher)
    {
        Toastr::success('Messages in here', 'Title', ["positionClass" => "toast-top-center"]);

        //$flasher->addSuccess('An error has occurred please try again later.');
        return view('test');


    }
}
