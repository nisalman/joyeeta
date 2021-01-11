<?php

namespace App\Http\Controllers;

use App\Disbursement;
use App\location;
use App\Store;
use Illuminate\Http\Request;

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

       $storeList = Store::select('id','name')
            ->get();
        return view('disbursement.create', compact('storeList',));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $Disbursement = new Disbursement();
        $Disbursement->store_id = $request->storeId;
        $Disbursement->commission_amount = $request->commission;
        $Disbursement->is_disbursement = $request->isDisvursed;
        $Disbursement->payment_amount = $request->paymentAmount;
        $Disbursement->payment_detail = $request->paymentDetails;
        $Disbursement->net_payable = $request->netPayable;
        $Disbursement->discount = $request->discount;

        $Disbursement->save();
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Disbursement  $disbursement
     * @return \Illuminate\Http\Response
     */
    public function show(Disbursement $disbursement)
    {

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Disbursement  $disbursement
     * @return \Illuminate\Http\Response
     */
    public function edit(Disbursement $disbursement)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Disbursement  $disbursement
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Disbursement $disbursement)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Disbursement  $disbursement
     * @return \Illuminate\Http\Response
     */
    public function destroy(Disbursement $disbursement)
    {
        //
    }
}
