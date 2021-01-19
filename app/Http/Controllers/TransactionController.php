<?php

namespace App\Http\Controllers;

use App\Customer;
use App\Http\Requests\TransactionFormRequest;
use App\location;
use App\Store;
use App\Transaction;
use App\User;
use Carbon\Carbon;
use Illuminate\Http\Request;
use DB;

class TransactionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {


        \LogActivity::addToLog('Transaction Viewed');

        $transactions = Transaction::all();
        return view('transaction.view', compact('transactions'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        \LogActivity::addToLog('Transaction Create Clicked');

        $locationData = location::where('admin_id', userType())->first();
        $shopData = Store::where('location_id', $locationData->id)->get();
        $allLocation = location::all();

        return view('transaction.create', compact('locationData', 'shopData', 'allLocation'));
    }

    public function test()
    {
        return Transaction::find(4)->customers;
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        $storePrefix = Store::find($request->storeLocation)->location->prefix;
        $transactionID = $storePrefix . '-' . mt_rand(100000, 999999);

        $getCustomerInfo = Customer::where('mobile', $request->country_name)
            ->first();

        $invoiceNO = Carbon::parse()->nowWithSameTz()->format('ydmhm');

        if ($getCustomerInfo == NULL) {
            $Customer = new Customer();
            $Customer->name = $request->customerName;
            $Customer->mobile = $request->country_name;
            $Customer->address = $request->customerAddress;
            $Customer->save();

            $customerId = $Customer->id;

        } else {

            $customer = Customer::where('mobile', $request->country_name)
                ->select('id')
                ->first();
            $customerId = $customer->id;
        }

        return $this->saveTransaction($customerId, $transactionID,$invoiceNO, $request);

    }


    /**
     * Display the specified resource.
     *
     * @param \App\Transaction $transaction
     * @return \Illuminate\Http\Response
     */
    public function show(Transaction $transaction)
    {
        //
    }

    public function saveTransaction($customerId, $transactionID,$invoiceNO, $request)
    {
        $Transaction = new Transaction();
        $Transaction->store_id = $request->storeLocation;
        $Transaction->transactionID = $transactionID;
        $Transaction->location_id = $request->state;
        $Transaction->customer_id = $customerId;
        $Transaction->net_amount = $request->netAmount;
        $Transaction->discount = $request->discount;
        $Transaction->coupon = $request->coupon;
        $Transaction->final_payable = $request->finalPayable;
        $Transaction->cardNo = $request->cardNo;
        $Transaction->cardType = $request->cardType;
        $Transaction->apprCode = $request->apprCode;
        $Transaction->dateTime = $request->dateTime;
        $Transaction->invoice_no = $request->storeLocation.$invoiceNO;
        $Transaction->save();

        if ($request->pr) {
            return $this->print($request, $Transaction);
        }

        \LogActivity::addToLog('Transaction created');
        return redirect()->back()->with('successMsg', 'Transaction Successfully created');
    }

    public function autocomplete(Request $request)
    {

        if ($request->get('query')) {

            $query = $request->get('query');
            $data = DB::table('customers')
                ->where('mobile', 'LIKE', "%{$query}%")
                ->get();
            $output = '<ul class="dropdown-menu" style="display:block; position:relative">';
            foreach ($data as $row) {
                $output .= '
       <li>' . $row->mobile . '</li>
       ';
            }
            $output .= '</ul>';
            echo $output;
        }

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param \App\Transaction $transaction
     * @return \Illuminate\Http\Response
     */
    public function edit(Transaction $transaction)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param \App\Transaction $transaction
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Transaction $transaction)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param \App\Transaction $transaction
     * @return \Illuminate\Http\Response
     */
    public function destroy(Transaction $transaction)
    {
        //
    }

    public function getStorebyLocation($id)
    {
        $states = DB::table("stores")->where("location_id", $id)->pluck("name", "id");
        return json_encode($states);
    }

    public function print($request, $Transaction)
    {
        $trans = $request;
        $trans['transactionID'] = $Transaction->transactionID;

        $store = Store::find($trans->storeLocation)->first();
        $trans['store_name'] = $store->name;
        $trans['date'] = Carbon::parse($trans->dateTime)->format('d-m-Y');
        $trans['time'] = Carbon::parse($trans->dateTime)->format('h:m');
        $trans['invoice_no'] = $Transaction->invoice_no;

        //return $trans;
        return view('print', compact('trans'));
    }

}
