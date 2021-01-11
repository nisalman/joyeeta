<?php

namespace App\Http\Middleware;
Use Illuminate\Support\Facades\Auth;
use Closure;
use Illuminate\Foundation\Auth\User;

class AdminMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        if (Auth::check() && Auth::user()->user_role_id == 2)
        {
            return $next($request);
        } else {
            return redirect()->route('login');
        }
    }
}
