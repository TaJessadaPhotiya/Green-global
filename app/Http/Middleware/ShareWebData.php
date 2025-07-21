<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class ShareWebData
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle(Request $request, Closure $next)
    {
        // แบ่งปันข้อมูลไปยังทุก view
        view()->share('appName', config('app.name'));
        view()->share('currentYear', date('Y'));

        return $next($request);
    }
}
