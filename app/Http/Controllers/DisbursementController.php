<?php

namespace App\Http\Controllers;

use App\Disbursement;
use App\Http\Requests\DisbursementFormRequest;
use App\location;
use App\Setting;
use App\Store;
use App\Transaction;
use Illuminate\Http\Request;
use DB;
use Carbon\Carbon;

class DisbursementController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //return Disbursement::find(2)->store->name;
        \LogActivity::addToLog('Disbursement Clicked');


        $disbursements = Disbursement::all();
        return view('disbursement.view', compact('disbursements'));

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        \LogActivity::addToLog('Disbursement Create Clicked');

        $locationData = location::where('admin_id', userType())
            ->first();
        $allLocation = location::all();
        $storeList = Store::select('id', 'name')
            ->get();
        return view('disbursement.create', compact('storeList', 'locationData', 'allLocation'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(DisbursementFormRequest $request)
    {
        // return $request;


        $storePrefix = Store::find($request->storeId)->location->prefix;
        $disburseID = $storePrefix . '-' . mt_rand(100000, 999999);


        $transactionQuery = Transaction::where('store_id', $request->storeId)
            ->whereBetween('created_at', [$request->from . '%', $request->to . '%'])
            ->where('is_disburse', 0);
        if ($transactionQuery == NULL) {
            return 'null';
        }

        $totalAmountBetweenDate = $transactionQuery->sum('final_payable');
        $allTrans = $transactionQuery->select('created_at')->get();

        foreach ($allTrans as $allTran) {
            Transaction::where('created_at', $allTran->created_at)
                ->update(['is_disburse' => 1]);
        }

        //return Store::where('id', $request->storeId);
        $storeBalance = Store::find($request->storeId)->balance;

        if ($storeBalance > $totalAmountBetweenDate) {
            $balanceAfterDisburse = $storeBalance - $totalAmountBetweenDate;
            // return $totalAmountBetweenDate;
            Store::where('id', $request->storeId)
                ->update(['balance' => $balanceAfterDisburse]);

            $commmission=Setting::find(1)->commission;
            $ekShop_commission=($commmission*$request->commission)/100;
            $netPayble=$request->commission-$ekShop_commission;

            $Disbursement = new Disbursement();
            $Disbursement->store_id = $request->storeId;
            $Disbursement->disburse_id = $disburseID;
            $Disbursement->commission_amount = $ekShop_commission;
            $Disbursement->is_disbursement = $request->isDisvursed;
            $Disbursement->payment_amount = $netPayble;
            $Disbursement->payment_detail = $request->paymentDetails;
            $Disbursement->net_payable = $totalAmountBetweenDate;
            $Disbursement->from = $request->from;
            $Disbursement->to = $request->to;
            //return $Disbursement;
            $Disbursement->save();
            \LogActivity::addToLog('Disbursement Stored');
            return redirect()->back()->with('successMsg', 'Disbursement Successfully Made');


        } else {
            return redirect()->back()->with('error', 'You dont get more than your earning');
        }

    }

    /**
     * Display the specified resource.
     *
     * @param \App\Disbursement $disbursement
     * @return \Illuminate\Http\Response
     */
    public function show(Disbursement $disbursement)
    {

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param \App\Disbursement $disbursement
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {

        $locationData = location::where('admin_id', userType())
            ->first();
        $allLocation = location::all();
        $storeList = Store::select('id', 'name')
            ->get();

        return $disbursement = Disbursement::find($id);
        return view('disbursement.edit', compact('storeList', 'locationData', 'allLocation', 'disbursement'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param \App\Disbursement $disbursement
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {

        $transactionQuery = Transaction::where('store_id', $request->storeId)
            ->whereBetween('created_at', [$request->from . '%', $request->to . '%'])
            ->where('is_disburse', 0);
        if ($transactionQuery == NULL) {
            return 'null';
        }

        $totalAmountBetweenDate = $transactionQuery->sum('final_payable');
        $allTrans = $transactionQuery->select('created_at')->get();

        foreach ($allTrans as $allTran) {
            Transaction::where('created_at', $allTran->created_at)
                ->update(['is_disburse' => 1]);
        }

        //return Store::where('id', $request->storeId);
        $storeBalance = Store::find($request->storeId)->balance;

        if ($storeBalance > $totalAmountBetweenDate) {
            $balanceAfterDisburse = $storeBalance - $totalAmountBetweenDate;
            // return $totalAmountBetweenDate;
            Store::where('id', $request->storeId)
                ->update(['balance' => $balanceAfterDisburse]);

            $Disbursement = Disbursement::find($id);
            $Disbursement->store_id = $request->storeId;
            $Disbursement->disburse_id = $request->disburse_id;
            $Disbursement->commission_amount = $request->commission;
            $Disbursement->is_disbursement = $request->isDisvursed;
            $Disbursement->payment_amount = $request->paymentAmount;
            $Disbursement->payment_detail = $request->paymentDetails;
            $Disbursement->net_payable = $totalAmountBetweenDate;
            $Disbursement->discount = $request->discount;
            $Disbursement->from = $request->from;
            $Disbursement->to = $request->to;
            //return $Disbursement;
            $Disbursement->save();
            \LogActivity::addToLog('Disbursement Stored');
            return redirect()->back()->with('successMsg', 'Disbursement Successfully Updated');


        } else {
            return 'You dont get more than your earning';
        }
        //return $Disbursement;
        $Disbursement->save();
        \LogActivity::addToLog('Disbursement Stored');
        return redirect()->back()->with('successMsg', 'Disbursement Successfully Made');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param \App\Disbursement $disbursement
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        /* $disbursement = Disbursement::find($id);

         $storeData = Store::find($disbursement->store_id);

        $transactionQuery = Transaction::where('store_id', $disbursement->store_id)
            ->whereBetween('created_at', [$disbursement->from . '%', $disbursement->to . '%'])
            ->where('is_disburse', 1);

        $transactionQuery->update(['is_disburse'=> 0]);

        $newBalance = $storeData->balance + $disbursement->net_payable;

        $storeData->update(['balance' => $newBalance]);*/


        //return Store::where('id', $request->storeId);
        //$storeBalance = Store::find($request->storeId)->balance;

    }

}
