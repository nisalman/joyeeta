<?php

namespace App\Http\Controllers;

use App\Disbursement;
use App\EkshopCommission;
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
        $disbursements = Disbursement::where('is_disbursement', '1')->get();
        return view('disbursement.view', compact('disbursements'));

    }

    public function batchList()
    {
        $transData = Transaction::whereNotNull('batch_id')
            ->where('is_disburse', '0')
            ->where('is_cancelled', '0')
            ->get();

        $groupTrans = $transData->groupBy('batch_id');

        $trans = [];

        foreach ($groupTrans as $keys => $froupTran) {
            $totalPay = 0;

            foreach ($froupTran as $key => $tran) {

                if ($keys == $tran->batch_id) {
                    $totalPay = $totalPay + $tran->final_payable;
                }
            }


            $commission = Setting::find(1)->commission;
            $ekshopComissionAmount = ($totalPay * $commission) / 100;
            $finalPayable = $totalPay - $ekshopComissionAmount;


            $trans[$keys]['total_pay'] = $totalPay;
            $trans[$keys]['ekshop_commission'] = $ekshopComissionAmount;
            $trans[$keys]['final_pay'] = $finalPayable;
            $trans[$keys]['store_id'] = $tran->store_id;
            $trans[$keys]['transactionID'] = $tran->transactionID;
            $trans[$keys]['fromDate'] = $froupTran->min('created_at');
            $trans[$keys]['toDate'] = $froupTran->max('created_at');
        }


        return view('disbursement.batchList', compact('trans'))->with('successMsg', 'Batch Successfully created');
    }

    public function batchDetail($id)
    {
        $batchTransaction = Transaction::where('batch_id', $id)->get();

        return view('disbursement.batch_detail', compact('batchTransaction'));
    }

    public function batchPayment(Request $request)
    {
        //return $request;
        $storeName = Store::find($request->storeID)->name;
        $commission = Setting::find(1)->commission;
        $commissionAmount = ($request->totalAmount * $commission) / 100;
        $netPayable = $request->totalAmount - $commissionAmount;
        /*Transaction::where('batch_id', $request->batchID)->update(['is_disburse' => '1']);
        Disbursement::where('disburse_id', $request->batchID)->update(['is_disbursement' => '1']);*/
        return view('disbursement.final_disbursement', compact('request', 'netPayable', 'commissionAmount', 'storeName'));

    }

    public function batchDelete($id)
    {
        Transaction::where('batch_id', $id)
            ->update(['batch_id' => null]);
        return redirect()->back()->with('successMsg', 'Disbursement batch Successfully Deleted');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {

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
        //return $request;
        $storeId = Store::find($request->storeId);
        $fromDate = Carbon::parse($request->from)->format('d-m-y');
        $toDate = Carbon::parse($request->to)->format('d-m-y');

        $locationData = location::where('admin_id', userType())
            ->first();

        $allLocation = location::all();

        $storeList = Store::select('id', 'name')
            ->get();

        $search = Transaction::where('store_id', $request->storeId)
            ->whereBetween('created_at', [$request->from , $request->to ])
            ->where('is_disburse', '0')
            ->where('is_cancelled', '0')
            ->whereNull('batch_id');
        $searchRes = $search->get();


        $searchSum = $search->sum('final_payable');

        return view('disbursement.batch_selection', compact('searchRes',
            'locationData', 'allLocation', 'storeList', 'searchSum', 'storeId',
            'fromDate', 'toDate'));


    }

    public function batchDisburse(Request $request)
    {

        $transID = $request->transID;

        $nullChecking = [];
        for ($i = 0; $i < count($transID); $i++) {
            $nullChecking[$i] = $transTableData = Transaction::find($transID[$i]);
            if ($transTableData->batch_id == null or $transTableData->batch_id == "") {
                $nullChecking[$i] = $transTableData->id;
            } else {
                toastr()->warning('Transaction id ' . $transTableData->transactionID . ' is already exist at ' . $transTableData->batch_id, 'Stop!');
                return $this->create();
            }

        }

        $storePrefix = Store::find($request->storeID)->location->prefix;
        $batchId = $storePrefix . '-' . mt_rand(100000, 999999);
        for ($i = 0; $i < count($nullChecking); $i++) {

            $batchTrans = Transaction::where('id', $nullChecking[$i]);
            $batchTrans->update(
                ['batch_id' => $batchId]
            );
        }

        return $this->batchList();
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
            ->where('is_disburse', 0)
            ->where('is_cancelled', '0');
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
            return redirect()->back()->with('successMsg', 'Disbursement Successfully Updated');


        } else {
            return 'You dont get more than your earning';
        }
        //return $Disbursement;
        $Disbursement->save();
        return redirect()->back()->with('successMsg', 'Disbursement Successfully Made');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param \App\Disbursement $disbursement
     * @return \Illuminate\Http\Response
     */
    public function confirmDisburse(Request $request)
    {

        $this->validate($request, [

            'image' => 'mimes:jpeg,jpg,bmp,png',
        ]);
        $image = $request->file('image');
        if (isset($image)) {
            $currentDate = Carbon::now()->toDateString();
            $imagename = $request->batchID . '-' . $currentDate . '-' . uniqid() . '.' . $image->getClientOriginalExtension();
            if (!file_exists('uploads')) {
                mkdir('uploads', 0777, true);
            }
            $image->move('uploads/', $imagename);
        } else {
            $imagename = $request->image;
        }
        $Disbursement = new Disbursement();
        $Disbursement->comment = $request->comment;
        $Disbursement->disburse_id = $request->batchID;
        $Disbursement->is_disbursement = 1;
        $Disbursement->commission_amount = $request->commissionAmount;
        $Disbursement->store_id = $request->storeID;
        $Disbursement->net_payable = $request->totalAmount;
        $Disbursement->image = $imagename;
        // return $Disbursement;
        $Disbursement->save();
        Transaction::where('batch_id', $request->batchID)->update(['is_disburse' => '1']);
        Disbursement::where('disburse_id', $request->batchID)->update(['is_disbursement' => '1']);

        $ekshopcommission =new EkshopCommission;
        $ekshopcommission->batch_id=$request->batchID;
        $ekshopcommission->amount=$request->commissionAmount;
        $ekshopcommission->save();

        return $this->index()->with('successMsg', 'Batch Successfully disbursed');
    }

    public function destroy($id)
    {


    }

}
