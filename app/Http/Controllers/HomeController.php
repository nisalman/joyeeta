<?php

namespace App\Http\Controllers;

use App\Disbursement;
use App\Http\Controllers\Auth;

use App\location;
use App\Store;
use App\Transaction;
use App\User;
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
        $adminCount = [];
        $adminCount['location'] = location::all()->count();
        $adminCount['store'] = Store::all()->count();
        $adminCount['transaction'] = Transaction::all()->count();
        $adminCount['disbursement'] = Disbursement::all()->count();

        $adminOperatorCount = [];
        $userLocation = location::where('admin_id', userId())->first();
//        $adminOperatorCount['store'] = count($userLocation->store);
//        $adminOperatorCount['transaction']=Transaction::where('location_id',$userLocation->id)->count();
//

        /*$otherCount=[];
        $userLocation = location::where('admin_id', userId())->first();
        $userStoreCount= $userLocation->Store->count();
        return $userStoreCount= $userLocation->transaction->count();
        //$otherCount['store']=Tra::find(userId())->count();
        $otherCount['transaction']=Transaction::all()->count();
        $otherCount['disbursement'] =Disbursement::all()->count();*/

        return view('admin.home', compact('adminCount','adminOperatorCount'));
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
        \LogActivity::addToLog('My Testing Add To Log.');
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
