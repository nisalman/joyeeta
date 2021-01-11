<?php

namespace App\Http\Controllers;

use App\Category;
use App\location;
use App\User;
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
        $locations=location::all();
        return view('location.view',compact('locations'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
       $getAdmins= User::where('user_role_id','2')
           ->select('id','name')
            ->get();
        $getOperators= User::where('user_role_id','3')
            ->select('id','name')
            ->get();
        return view('location.create', compact('getAdmins','getOperators'));
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
//        $this->validate($request,[
//            'name' => 'required'
//        ]);
        $Location = new Location();
        $Location->name = $request->store_name;
        $Location->slug = $request->slug;
        $Location->contact_person = $request->contactPerson;
        $Location->contact_number = $request->contactNumber;
        $Location->address = $request->address;
        $Location->location_admin_id = $request->locationAdmin;
        $Location->operator_id = $request->locationOperator;

        $Location->save();

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\location  $location
     * @return \Illuminate\Http\Response
     */
    public function show(location $location)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\location  $location
     * @return \Illuminate\Http\Response
     */
    public function edit(location $location)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\location  $location
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, location $location)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\location  $location
     * @return \Illuminate\Http\Response
     */
    public function destroy(location $location)
    {
        //
    }
}
