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
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Gate;
use Yoeunes\Toastr\Facades\Toastr;

class TransactionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function check()
    {
        return 1;
    }

    public function index()
    {

        $this->vat_tax_calculation();
        \LogActivity::addToLog('Transaction Viewed');
        if (Gate::allows('isSuperAdmin')) {
            $transactions = Transaction::paginate(10);
            $allLocation = location::all();

            return view('transaction.view', compact('transactions', 'allLocation'));

        } elseif (Gate::allows('isAdmin')) {

            $location = location::where('admin_id', userId())->first();
            if (empty($location)) {
                Toastr()->error('You have no Transactions', 'Create a store first');
                return redirect()->back();
            } else {
                $transactions = Transaction::where('location_id', $location->id)->orderBy('id', 'desc')->paginate(10);
                return view('transaction.view', compact('transactions'));
            }


        } elseif (Gate::allows('isOperator')) {
             $location = location::where('operator_id', userId())->first();
            if (empty($location)) {
                Toastr()->error('You have no Transactions', 'Create a store first');
                return redirect()->back();
            } else {
                $transactions = Transaction::where('location_id', $location->id)->paginate(10);
                return view('transaction.view', compact('transactions'));
            }

        }
    }

    public function search(Request $request)
    {
        $cus = Customer::where('mobile', $request->number)->first();

        if (isset($request->transId)) {
            return Transaction::where('transactionID', $request->transId)->get();
        } else {
            return Transaction::Where('location_id', $request->storeLocation)
                ->orWhere('store_id', $request->storeId)
                ->orWhere('is_disburse', $request->isDisbursed)
                ->orWhere('customer_id', $cus->id)
                ->orwhereBetween('created_at', [$request->from . '%', $request->to . '%'])
                ->get();
        }

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        // return User::find(userId())->location;

        \LogActivity::addToLog('Transaction Create Clicked');


        if (Gate::allows('isSuperAdmin')) {
            $locationData = location::where('admin_id', userId())->first();

            $shopData = Store::where('location_id', $locationData->id)->get();
            $allLocation = location::all();


            return view('transaction.create', compact('locationData', 'shopData', 'allLocation'));

        } elseif (Gate::allows('isAdmin')) {

            $locationData = location::where('admin_id', userId())->first();

            if (empty($locationData)) {
                Toastr()->error('You can not Transact store without creating location', 'Create a store first');
                return redirect()->back();
            } else {
                $allLocations = location::where('admin_id', userId())->first();
                $shopData = Store::where('location_id', $locationData->id)->get();
                $allLocation = location::all();
                return view('transaction.create', compact('locationData', 'shopData', 'allLocation'));

            }

            $shopData = Store::where('location_id', $locationData->id)->get();
            $allLocation = location::all();


            return view('transaction.create', compact('locationData', 'shopData', 'allLocation'));

        } elseif (Gate::allows('isOperator')) {

            $locationData = location::where('operator_id', Auth::user()->id)->first();
            if (empty($locationData)) {
                Toastr()->error('You can not Transact store without creating location', 'Create a store first');
                return redirect()->back();
            } else {
                $shopData = Store::where('location_id', $locationData->id)->get();
                $allLocation = location::all();
                return view('transaction.create', compact('locationData', 'shopData', 'allLocation'));

            }


        }


    }

    public function show($id)
    {
        $transaction = [];
        $transactions = Transaction::find($id);

        $store = Store::find($transactions->store_id);
        $customer = Customer::find($transactions->customer_id);

        $transactions->id;
        $transactions->transactionID;
        $transactions->location_id = $store->location->name;
        $transactions->store_id = $store->name;
        $transactions->customerName = $customer->name;
        $transactions->customerMobile = $customer->mobile;
        $transactions->customerAddress = $customer->address;
        $transactions->cardNo;
        $transactions->final_payable;
        $transactions->cardType = getCardType($transactions->cardType);
        $transactions->apprCode;
        $transactions->dateTime = Carbon::parse($transactions->dateTime)->format('d-m-y h:m');;

        return response()->json($transactions);
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
    public function store(TransactionFormRequest $request)
    {

        $storePrefix = location::find($request->storeLocation)->prefix;
        $transactionID = $storePrefix . '-' . mt_rand(100000, 999999);

        $getCustomerInfo = Customer::where('mobile', $request->customer_number)
            ->first();

        $invoiceNO = Carbon::parse()->nowWithSameTz()->format('ydmhm');

        /*        $updateBalance = Store::find($request->storeLocation)->balance + $request->finalPayable;*/


        if ($getCustomerInfo == NULL) {

            $Customer = new Customer();
            $Customer->name = $request->customerName;
            $Customer->mobile = $request->customer_number;
            $Customer->address = $request->customerAddress;
            $Customer->save();

            $customerId = $Customer->id;

        } else {

            $customer = Customer::where('mobile', $request->customer_number)
                ->select('id')
                ->first();
            $customerId = $customer->id;
        }

        return $this->saveTransaction($customerId, $transactionID, $invoiceNO, $request);

    }

    public function viewCancelledlist()
    {
        $allLocation = location::all();
        return $transactions = Transaction::where('is_cancelled', '1')
            ->paginate(10);
        return view('transaction.view_cancelled', compact('transactions', 'allLocation'));

    }

    /**
     * Display the specified resource.
     *
     * @param \App\Transaction $transaction
     * @return \Illuminate\Http\Response
     */


    public function saveTransaction($customerId, $transactionID, $invoiceNO, $request)
    {
        //return $request;
        $Transaction = new Transaction();
        $Transaction->store_id = $request->store_id;
        $Transaction->transactionID = $transactionID;
        $Transaction->location_id = $request->storeLocation;
        $Transaction->customer_id = $customerId;
        $Transaction->final_payable = $request->finalPayable;
        $Transaction->cardNo = $request->cardNo;
        $Transaction->cardType = $request->cardType;
        $Transaction->apprCode = $request->apprCode;
        $Transaction->dateTime = $request->dateTime;
        $Transaction->invoice_no = $request->storeLocation . $invoiceNO;
        $Transaction->save();

        /* Store::where('id', $request->storeLocation)
             ->update(['balance' => $updateBalance]);*/

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

            $output = '<ul class="dropdown-menu" id="numberDropDown" style="display:block; position:relative">';
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
    public function cancel($id)
    {

        $transaction = Transaction::where('id', $id)->first();

        if ($transaction->is_disburse == 0 || $transaction->batch_id == null) {
            Transaction::where('id', $id)->update(['is_cancelled' => 1]);
            return redirect()->back()->with('successMsg', 'Transaction Successfully cancelled');
        } else {
            Toastr()->error('Transaction can not cancelled', 'Sorry');
            return redirect()->back();
        }


    }

    public function active($id)
    {
        Transaction::where('id', $id)->update(['is_cancelled' => 0]);
        return redirect()->back()->with('successMsg', 'Transaction Successfully reactivated');
    }


    public function getStorebyLocation($id)
    {
        $store_ids = DB::table("stores")->where("location_id", $id)->pluck("name", "id");
        return json_encode($store_ids);
    }

    public function print($request, $Transaction)
    {
        $trans = $request;
        $customer = Customer::where('mobile', $request->customer_number)->first();
        $trans['transactionID'] = $Transaction->transactionID;

        $store = Store::find($trans->storeLocation)->first();
        $trans['store_name'] = $store->name;
        $trans['date'] = Carbon::parse($trans->dateTime)->format('d-m-Y');
        $trans['time'] = Carbon::parse($trans->dateTime)->format('h:m');
        $trans['invoice_no'] = $Transaction->invoice_no;

        //return $trans;
        return view('print', compact('trans', 'customer'));
    }

    public function vat_tax_calculation()
    {
        return 1;
    }

}
