<?php

namespace App\Http\Controllers;

//use Illuminate\Auth\Access\Gate;
use Illuminate\Http\Request;
use App\User;
use Illuminate\Support\Facades\Gate;
class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if (Gate::allows('isSuperAdmin'))
        {
        $users=User::all();
        return view('user.view', compact('users'));
        }
        else
        {
            return 'You are not allowed';
        }

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {

        if (Gate::allows('isSuperAdmin'))
        {
            return view('user.create');
        }
        else
        {
            return 'You are not allowed';
        }

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request,[
            'name' => 'required'
        ]);
        $User = new User();
        $User->name = $request->name;
        $User->mobile = $request->number;
        $User->email = $request->email;
        $User->password = bcrypt($request->password);
        $User->user_role_id = $request->userType;
        if ($request->userType==2)
        {
            $User->role_name = "Admin";
        }
        else {
            $User->role_name = "Operator";
        }

        $User->save();

        return redirect()->back()->with('successMsg','Category Successfully Saved');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
