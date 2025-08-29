<?php

namespace App\Http\Middleware;

use App\Models\AdSlide;
use App\Models\Category;
use App\Models\Post;
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
            $query = Category::with(relations: [
                'childrenData' => function ($query) use ($language) {
                    $query->where(function ($q) use ($language) {
                        $q->where('language', $language);
                    })->orderBy('cate_priority', 'asc');
                }
            ])
                ->where(['is_menu' => 1, 'is_main_page' => 1, 'cate_level' => 0, 'cate_status_display' => 1, 'cate_position' => $position])
                ->where('language', $language)  // เฉพาะภาษาที่ต้องการ
                ->orderBy('cate_priority', 'asc');

            if ($keyword) {
                $query->where('cate_keyword', $keyword);
            }

            $result = $single ? $query->first() : $query->get();

            // หากไม่พบข้อมูล ให้ fallback ไปใช้ภาษาเริ่มต้น
            if (($single && !$result) || (!$single && $result->isEmpty())) {
                $query = Category::with(relations: [
                    'childrenData' => function ($query)  {
                        $query->where('defaults', 1)->orderBy('cate_priority', 'asc');
                    }
                ])
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

        $proviso = Post::select('id', 'slug', 'title', 'content', 'language')
            ->where([
                'slug' => 'REGISTER',
                'language' => $language,
                'status_display' => 1
            ])
            ->first();

        if (!$proviso) {
            $proviso = Post::select('id', 'slug', 'title', 'content', 'language')
                ->where([
                    'slug' => 'REGISTER',
                    'defaults' => 1,
                    'status_display' => 1
                ])
                ->first();
        }

        $slides = AdSlide::where(['language' => $language, 'ad_status_display' => 1])
            ->get();
        if (!$slides) {
            $slides = AdSlide::where(['defaults' => 1, 'ad_status_display' => 1])
                ->get();
        }

        $A = Category::with(relations: ['childrenData'])
        ->where(['is_menu' => 1, 'is_main_page' => 1, 'cate_level' => 0, 'cate_status_display' => 1, 'cate_position' => 2])
        ->where('language', $language)
        ->orderBy('cate_priority', 'asc')
        ->get();

        // dd($getMenu(2, 'MEMBER', true) );
        // Share global data with all views
        view::share('language', $language);
        View::share('appName', config('app.name'));
        View::share('currentYear', date('Y'));
        View::share('mainMenu', $getMenu(1));
        View::share('menuChildren', ['register' => $getMenu(2, 'REGISTER', true), 'member' => $getMenu(2, 'MEMBER', true)]);
        View::share('proviso', $proviso);
        View::share('slides', $slides);

        return $next($request);
    }

}
