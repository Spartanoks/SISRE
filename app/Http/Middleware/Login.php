<?php

namespace App\Http\Middleware;

use Closure;

class Login
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
        if ($request->ajax()) {

            if ($request->session()->get('usuario') == null) {
                // Handle the non-ajax request
                return response('', 405);
            }
        }

        if ($request->session()->get('usuario') == null) {

            return redirect('login');
        }
        return $next($request);
    }
}
