<?php

namespace App\Http\Controllers\Auth;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

use Yoeunes\Toastr\Toastr;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = RouteServiceProvider::HOME;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }

    public function login(Request $request)
    {

        /* $messages = [
             "email.required" => "Email is required",
             "email.email" => "Email is not valid",
             "email.exists" => "Email doesn't exists",
             "password.required" => "Password is required",
             "password.min" => "Password must be at least 6 characters"
         ];

         // validate the form data
         $validator = Validator::make($request->all(), [
             'email' => 'required|email|exists:users,email',
             'password' => 'required|min:6'
         ], $messages);

         if ($validator->fails()) {

             return back()->with('error', 'Wrong Credentials');
            return back()->withErrors($validator)->withInput();
    } else
{
$input = $request->all();
    // attempt to log
if (auth()->attempt(array('email' => $input['email'], 'password' => $input['password'], 'status' => 1)))
{

if (Auth::check() && auth()->user()->user_role_id == 1)
{
return redirect()->route('admin.home');
}

elseif
(Auth::check() && auth()->user()->user_role_id == 2){

                    return redirect()->route('admin.home');
                } elseif (Auth::check() && auth()->user()->user_role_id == 3){
                    return redirect()->route('admin.home');
                } else {
    Toastr()->error('Wrong');
    return 'You have not admin access';
}
            }

            // if unsuccessful -> redirect back
            return redirect()->back()->withInput($request->only('email', 'remember'))->withErrors([
                'approve' => 'Wrong password or this account not approved yet.',
            ]);
        }*/







        $input = $request->all();

        $this->validate($request, [
            'email' => 'required|email',
            'password' => 'required',
        ]);

        if (auth()->attempt(array('email' => $input['email'], 'password' => $input['password'], 'status' => 1))) {

            if (Auth::check() && auth()->user()->user_role_id == 1) {
                return redirect()->route('admin.home');
            } elseif (Auth::check() && auth()->user()->user_role_id == 2) {

                return redirect()->route('admin.home');
            } elseif (Auth::check() && auth()->user()->user_role_id == 3) {
                return redirect()->route('admin.home');
            } else {
                Toastr()->error('Wrong');
                return 'You have not admin access';
            }
        } else {
            Toastr()->error('Wrong');
            return redirect()->route('login')
                ->with('error', 'Email-Address And Password Are Wrong.');
        }
        }


    public function logout(Request $request)
    {
        Auth::logout();
        return redirect('/');
    }
}
