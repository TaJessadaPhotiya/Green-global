<?php

namespace App\Http\Controllers;

use App\Models\LanguageConfig;
use App\Models\Post;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class NewsDetailController extends Controller
{
    public function index($language, $id)
    {
        $news = Post::select(
            'id',
            'title',
            'description',
            'thumbnail_link',
            'thumbnail_title',
            'thumbnail_alt',
            'category',
            'content',
            DB::raw('DATE_FORMAT(updated_at, "%a %D %b %Y") AS date')
        )
            ->where('id', $id)
            ->where('slug', 'NEWSACTIVTY')
            ->where('language', $language)
            ->first();

        if (!$news) {
            // abort(404, 'News not found');
            $news = Post::select(
                'id',
                'title',
                'description',
                'thumbnail_link',
                'thumbnail_title',
                'thumbnail_alt',
                'category',
                'content',
                DB::raw('DATE_FORMAT(updated_at, "%a %D %b %Y") AS date')
            )
                ->where('id', $id)
                ->where('slug', 'NEWSACTIVTY')
                ->where('defaults', 1)
                ->first();
        }
        // dd($news);

        $lang_config_contact = [];
        $lang_config = LanguageConfig::where(['language' => $language, 'page_control' => 4])->orderBy('id', 'DESC')->get();
        if (!empty($lang_config)) {
            foreach ($lang_config as $key => $value) {
                $lang_config_contact[$value->param] = $value->title;
            }
        }

        return view('pages.news-detail.news-detail', compact('news', 'lang_config_contact'));
    }
}



