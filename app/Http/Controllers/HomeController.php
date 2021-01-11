<?php

namespace App\Http\Controllers;
Use App\Http\Controllers\Auth;

use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        return view('home');
    }
    public function superAdminHome()
    {
        return view('admin.home');
    }
    public function localAdminHome()
    {
        return view('admin.home');
    }
    public  function operatorHome()
    {
        return view('admin.home');
    }

}
