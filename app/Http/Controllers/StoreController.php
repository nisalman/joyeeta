<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreFormRequest;
use App\location;
use App\Store;
use App\Transaction;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Gate;
use Yoeunes\Toastr\Toastr;

class StoreController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        \LogActivity::addToLog('Store Viewed');


        if (Gate::allows('isSuperAdmin')) {
             $location = location::all();
            $stores= Store::all();
             $userId= Store::find(1);

            return view('store.view', compact('stores','userId'));

        } elseif (Gate::allows('isAdmin')) {

            $location = location::where('admin_id',userId())
                ->first();


            if (empty($location))
            {
                Toastr()->error('You have no Stores','Create a store first');
                return redirect()->back();
            }else {
                $stores= Store::where('location_id', $location->id)->get();


                $userId= Store::find(1);
                return view('store.view', compact('stores','userId'));
            }


        } elseif (Gate::allows('isOperator')) {

                return 'not allowed';
        }


    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        \LogActivity::addToLog('Store Create clicked');


        /*return Store::find(1)->location;
        return Store::find($locationData->id);*/

        if (Gate::allows('isSuperAdmin')) {



            $locationData = location::where('admin_id',userType())
                ->first();

            $allLocations= location::all();

            return view('store.create', compact('locationData','allLocations'));


        } elseif (Gate::allows('isAdmin')) {
            $allLocations= location::all();
             $locationData = location::where('admin_id',userId())
                ->first();
            if (empty($locationData))
            {
                Toastr()->error('You can not create store with creating location','No Location and store found');
                return redirect()->back();
            }else
            {
                $allLocations= location::where('admin_id',userId())->first();
                return view('store.create', compact('locationData','allLocations'));

            }
//            $transactions = Transaction::where('location_id', $location->id)->orderBy('id', 'desc')->paginate(10);

        } elseif (Gate::allows('isOperator')) {

        }

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreFormRequest $request)
    {

         $location = location::where('admin_id',userId())
            ->first();
        $Store = new Store();
        $Store->name = $request->storeName;
        $Store->number = $request->storeNumber;
        $Store->location_id = $location->id;
        $Store->contact_name = $request->contactName;
        $Store->contact_number = $request->contactNumber;
        $Store->payment_method = $request->paymenMethod;
        $Store->bank_mfs_name = $request->bank_mfs_name;
        $Store->account_number = $request->acNumber;
        $Store->payment_details = $request->paymentDetails;
        $Store->user_id = userId();

        $Store->save();
        \LogActivity::addToLog(' New Store created');
        return redirect()->back()->with('successMsg','Store Successfully created');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Store  $store
     * @return \Illuminate\Http\Response
     */
    public function show(Store $store)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Store  $store
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
         $locationData = location::where('admin_id',userId())
            ->first();

        $allLocations= location::all();
         $Store = Store::find($id);
        return view( 'store.edit', compact('Store', 'allLocations','locationData'));

    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Store  $store
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $Store = Store::find($id);

        $Store->name = $request->storeName;
        $Store->number = $request->storeNumber;
        $Store->contact_name = $request->contactName;
        $Store->location_id = $request->locationAdmin;
        $Store->contact_number = $request->contactNumber;
        $Store->payment_method = $request->paymenMethod;
        $Store->bank_mfs_name = $request->bank_mfs_name;
        $Store->account_number = $request->acNumber;
        $Store->payment_details = $request->paymentDetails;

        $Store->save();

        \LogActivity::addToLog(' New Store created');
        return $this->index()->with('successMsg','Store Successfully Updated');



    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Store  $store
     * @return \Illuminate\Http\Response
     */
    public function destroy(Store $store)
    {
        //
    }
}
