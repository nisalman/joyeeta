<?php

namespace App\Http\Controllers;

use App\Disbursement;
use App\Http\Controllers\Auth;

use App\location;
use App\Store;
use App\Transaction;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Gate;

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

        if (Gate::allows('isSuperAdmin')) {

            $adminCount = [];
            $adminCount['location'] = location::all()->count();
            $adminCount['store'] = Store::all()->count();
            $adminCount['transaction'] = Transaction::where('is_cancelled', '0')->count();
            $adminCount['disbursement'] = Disbursement::all()->count();
            return view('admin.home', compact('adminCount'));

        } elseif (Gate::allows('isAdmin')) {

            $adminOperatorCount = [];
             $userLocation = location::where('admin_id', userId())->first();
             if (empty($userLocation))
             {
                 $adminOperatorCount['store'] = 0;
                 $adminOperatorCount['transaction'] = 0;
             }
             else
             {
                 $adminOperatorCount['store'] = Store::where('location_id', $userLocation->id)->count();
                 $adminOperatorCount['transaction'] = Transaction::where('location_id', $userLocation->id)->count();
             }


            return view('admin.home', compact('adminOperatorCount'));


        } elseif (Gate::allows('isOperator')) {

            $adminOperatorCount = [];
            $userLocation = location::where('operator_id', userId())->first();
            if (empty($userLocation))
            {
                $adminOperatorCount['store'] = 0;
                $adminOperatorCount['transaction'] = 0;
            }
            else
            {
                $adminOperatorCount['store'] = Store::where('location_id', $userLocation->id)->count();
                $adminOperatorCount['transaction'] = Transaction::where('location_id', $userLocation->id)->count();
            }

            return view('admin.home', compact( 'adminOperatorCount'));


        }


    }

    public function localAdminHome()
    {
        return view('admin.home');
    }

    public function operatorHome()
    {
        return view('admin.home');
    }


    public function myTestAddToLog()
    {
        dd('log insert successfully.');
    }


    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function logActivity()
    {
        $logs = \LogActivity::logActivityLists();
        return view('logActivity', compact('logs'));
    }
}
