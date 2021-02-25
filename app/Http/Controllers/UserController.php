<?php

namespace App\Http\Controllers;

//use Illuminate\Auth\Access\Gate;
use App\Http\Requests\UserFromRequest;
use Illuminate\Http\Request;
use App\User;
use Illuminate\Support\Facades\Gate;
use Flasher\Prime\FlasherInterface;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        if (Gate::allows('isSuperAdmin')) {
            $users = User::orderBy('id', 'DESC')->get();
            return view('user.view', compact('users'));
        } else {
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

        if (Gate::allows('isSuperAdmin')) {
            return view('user.create');
        } else {
            return 'You are not allowed';
        }

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(UserFromRequest $request)
    {

        $User = new User();
        $User->name = $request->name;
        $User->mobile = $request->number;
        $User->email = $request->email;
        $User->address = $request->address;
        $User->password = bcrypt($request->password);
        $User->user_role_id = $request->userType;
        $User->status = 1;
        if ($request->userType == 2) {
            $User->role_name = "Admin";
        } else {
            $User->role_name = "Operator";
        }

        $User->save();

        return redirect()->back()->with('successMsg', 'User Successfully Saved');
    }

    /**
     * Display the specified resource.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {


        $user = User::find($id);

        return view('user.edit', compact('user'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function update(UserFromRequest $request, $id)
    {
        //return bcrypt($request->password);
        $User = User::find($id);

        if (isset($request->password)) {
            $newPassword = bcrypt($request->password);
            $User->update(['password' => $newPassword]);
        }

        $User->name = $request->name;
        $User->mobile = $request->number;
        $User->email = $request->email;
        $User->address = $request->address;
        $User->user_role_id = $request->userType;

        if ($request->userType == 2) {
            $User->role_name = "Admin";
        } else {
            $User->role_name = "Operator";
        }

        $User->save();
        return redirect()->back()->with('successMsg', 'User Successfully Updated');


    }

    /**
     * Remove the specified resource from storage.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function deactivated($id)
    {
        User::where('id', $id)->update(['status' => 0]);
        return redirect()->back()->with('successMsg', 'User Successfully Deactivated');
    }

    public function reactivated($id)
    {
        User::where('id', $id)->update(['status' => 1]);
        return redirect()->back()->with('successMsg', 'User Successfully Reactivated');
    }
}
