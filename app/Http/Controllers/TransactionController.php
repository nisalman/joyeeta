<?php

namespace App\Http\Controllers;

use App\Customer;
use App\Store;
use App\Transaction;
use App\User;
use Illuminate\Http\Request;
Use DB;
class TransactionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $transactions=Transaction::all();
        return  view('transaction.view', compact('transactions'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('transaction.create');
    }
    public function test()
    {
        return Transaction::find(4)->customers;
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //return $request;

         $getCustomerInfo = Customer::where('mobile',$request->country_name)
             ->first();
         if ($getCustomerInfo==NULL)
         {
             $Customer =new Customer();
             $Customer->name= $request->customerName;
             $Customer->mobile=$request->country_name;
             $Customer->address=$request->customerAddress;
             $Customer->save();

             $Transaction = new Transaction();
             $Transaction->name = $request->storeName;
             $Transaction->store_id = $request->storeNumber;
             $Transaction->location_id = $request->contactName;
             $Transaction->customer_id = $Customer->id;
             $Transaction->net_amount = $request->netAmount;
             $Transaction->discount = $request->discount;
             $Transaction->coupon = $request->coupon;
             $Transaction->final_payable = $request->finalPayable;

             $Transaction->save();

         }
         else{

             $customerId=Customer::where('mobile',$request->country_name)
                 ->select('id')
                 ->first();

             $Transaction = new Transaction();
             $Transaction->name = $request->storeName;
             $Transaction->store_id = $request->storeNumber;
             $Transaction->location_id = $request->contactName;
             $Transaction->customer_id = $customerId->id;
             $Transaction->net_amount = $request->netAmount;
             $Transaction->discount = $request->discount;
             $Transaction->coupon = $request->coupon;
             $Transaction->final_payable = $request->finalPayable;
             $Transaction->save();

         }


    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Transaction  $transaction
     * @return \Illuminate\Http\Response
     */
    public function show(Transaction $transaction)
    {
        //
    }
    public function autocomplete(Request $request)
    {
//       return $data = DB::table('customers')
//            ->get();
        if($request->get('query'))
        {

            $query = $request->get('query');
            $data = DB::table('customers')
                ->where('mobile', 'LIKE', "%{$query}%")
                ->get();
            $output = '<ul class="dropdown-menu" style="display:block; position:relative">';
            foreach($data as $row)
            {
                $output .= '
       <li>'.$row->mobile.'</li>
       ';
            }
            $output .= '</ul>';
            echo $output;
        }


    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Transaction  $transaction
     * @return \Illuminate\Http\Response
     */
    public function edit(Transaction $transaction)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Transaction  $transaction
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Transaction $transaction)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Transaction  $transaction
     * @return \Illuminate\Http\Response
     */
    public function destroy(Transaction $transaction)
    {
        //
    }
}
