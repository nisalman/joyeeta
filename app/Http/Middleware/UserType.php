<?php

namespace App\Http\Middleware;

use Closure;

class UserType
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
        if(auth()->user()->user_role_id == 1){
            return $next($request);
        }
        elseif(auth()->user()->user_role_id == 2){
            return $next($request);
        }elseif(auth()->user()->user_role_id == 3){
            return $next($request);
        }

        return redirect(‘home’)->with(‘error’,"You don't have admin access.");
    }

}
