<?php

namespace App\Http\Middleware;

use App\Models\Category;
use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\View;

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
        $language = $request->route('language');

        $is_main_menu = Category::where([['is_main_page', 1], ['cate_status_display', 1], ['is_menu', 1]])
        ->where(function ($query) use ($language) {
            $query->where('language', $language)
                ->orWhere('defaults', 1);
        })
        ->orderBy('cate_priority', 'asc')
        ->get();
// dd( $is_main_menu );

        // Share global data with all views
        View::share('appName', config('app.name'));
        View::share('currentYear', date('Y'));


        return $next($request);
    }

}
