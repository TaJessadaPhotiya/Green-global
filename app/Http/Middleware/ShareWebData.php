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

        $getMenu = function ($position, $keyword = null, $single = false) use ($language) {
            $query = Category::with(['childrenData'])
                ->where(['is_menu' => 1, 'is_main_page' => 1, 'cate_level' => 0, 'cate_status_display' => 1, 'cate_position' => $position])
                ->where('language', $language)  // เฉพาะภาษาที่ต้องการ
                ->orderBy('cate_priority', 'asc');

            if ($keyword) {
                $query->where('cate_keyword', $keyword);
            }

            $result = $single ? $query->first() : $query->get();

            // หากไม่พบข้อมูล ให้ fallback ไปใช้ภาษาเริ่มต้น
            if (($single && !$result) || (!$single && $result->isEmpty())) {
                $query = Category::with(['childrenData'])
                    ->where(['is_menu' => 1, 'is_main_page' => 1, 'cate_level' => 0, 'cate_status_display' => 1, 'cate_position' => $position])
                    ->where('defaults', 1)
                    ->orderBy('cate_priority', 'asc');

                if ($keyword) {
                    $query->where('cate_keyword', $keyword);
                }

                $result = $single ? $query->first() : $query->get();
            }

            return $result;
        };

        // dd($getMenu(1)->toArray());
        // Share global data with all views
        View::share('appName', config('app.name'));
        View::share('currentYear', date('Y'));
        View::share('mainMenu', $getMenu(1));
        View::share('menuChildren', ['register' => $getMenu(2, 'REGISTER', true), 'member' => $getMenu(2, 'MEMBER', true)]);

        return $next($request);
    }

}
