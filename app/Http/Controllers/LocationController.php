<?php

namespace App\Http\Controllers;

use App\Category;
use App\Http\Requests\LocationFormRequest;
use App\location;
use App\User;
use Yoeunes\Toastr\Facades\Toastr;
use Illuminate\Http\Request;

class LocationController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        /* $loc=location::find(1)
             ->first();
         return $loc->admin->name;*/
        $locations = location::all();
        return view('location.view', compact('locations'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {

        $getAdmins = User::where('user_role_id', '2')
            ->select('id', 'name')
            ->get();
        $getOperators = User::where('user_role_id', '3')
            ->select('id', 'name')
            ->get();

        return view('location.create', compact('getAdmins', 'getOperators'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(LocationFormRequest $request)
    {

        $Location = new Location();
        $Location->name = $request->store_name;
        $Location->prefix = $request->slug;
        $Location->contact_person = $request->contactPerson;
        $Location->contact_number = $request->contactNumber;
        $Location->address = $request->address;
        $Location->admin_id = $request->locationAdmin;
        $Location->operator_id = $request->locationOperator;

        $Location->save();
        return redirect()->back()->with('successMsg', 'User Successfully Saved');


    }

    /**
     * Display the specified resource.
     *
     * @param \App\location $location
     * @return \Illuminate\Http\Response
     */
    public function show(location $location)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param \App\location $location
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $locations = location::where('id', $id)
            ->first();

        $getAdmins = User::where('user_role_id', '2')
            ->select('id', 'name')
            ->get();


        $getOperators = User::where('user_role_id', '3')
            ->select('id', 'name')
            ->get();

        return view('location.edit', compact('locations', 'getOperators', 'getAdmins'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param \App\location $location
     * @return \Illuminate\Http\Response
     */
    public function update(LocationFormRequest $request, $id)
    {
        // return $request;
        $Location = location::find($id);
        $Location->name = $request->store_name;
        $Location->prefix = $request->slug;
        $Location->contact_person = $request->contactPerson;
        $Location->contact_number = $request->contactNumber;
        $Location->address = $request->address;
        $Location->admin_id = $request->locationAdmin;
        $Location->operator_id = $request->locationOperator;
        $Location->save();

        return redirect()->back()->with('successMsg', 'Location Successfully Updated');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param \App\location $location
     * @return \Illuminate\Http\Response
     */
    public function destroy(location $location)
    {
        //
    }
}
