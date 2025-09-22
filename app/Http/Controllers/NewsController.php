<?php

namespace App\Http\Controllers;

use App\Models\LanguageConfig;
use App\Models\Post;
use App\Models\Product;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;

class NewsController extends Controller
{
    public function index($language)
    {
        $NewsData = Post::select(
            'id',
            'title',
            'description',
            'thumbnail_link',
            'thumbnail_title',
            'thumbnail_alt',
            'category',
            'content',
            'slug',
            'language',
            'iframe',
            'updated_at',
        )
            ->where([
                'pin' => 1,
                'status_display' => 1,
                'slug' => 'NEWSACTIVTY',
                'language' => $language
            ])->first();
        if (!$NewsData) {
            $NewsData = Post::select(
                'id',
                'title',
                'description',
                'thumbnail_link',
                'thumbnail_title',
                'thumbnail_alt',
                'category',
                'content',
                'slug',
                'language',
                'iframe',
                'updated_at'
            )
                ->where('slug', 'NEWSACTIVTY')
                ->where('defaults', 1)
                ->first();
        }


        $ProductPost = Post::where(['slug' => 'NEWSPRODUCT', 'language' => $language])->first();

        if (is_null($ProductPost) || empty($ProductPost)) {
            $ProductPost = Post::where(['slug' => 'NEWSPRODUCT', 'defaults' => 1])->first();
        }

        $ProductData = Product::select(
            'products.id',
            'products.title',
            'product_category.title AS c_title',
            'products.short_url',
            'products.thumbnail_link',
            'products.thumbnail_title',
            'products.thumbnail_alt',
        )
            ->leftJoin('product_category', 'products.category', '=', 'product_category.id')
            ->where(['products.short_url' => $ProductPost->redirect, 'products.language' => $language])->first();

        if (is_null($ProductData) || empty($ProductData)) {
            $ProductData = Product::select(
                'products.id',
                'products.title',
                'product_category.title AS c_title',
                'products.short_url',
                'products.thumbnail_link',
                'products.thumbnail_title',
                'products.thumbnail_alt',
            )
                ->leftJoin('product_category', 'products.category', '=', 'product_category.id')
                ->where(['products.title' => $ProductPost->redirect, 'products.defaults' => 1, 'products.display' => 1])->first();
        }

        $NewsProduct = collect([
            "id" => $ProductData->id,
            "title" => $ProductData->title,
            "c_title" => $ProductData->c_title,
            "short_url" => $ProductData->short_url,
            "thumbnail_link" => $ProductData->thumbnail_link,
            "thumbnail_title" => $ProductData->thumbnail_title,
            "thumbnail_alt" => $ProductData->thumbnail_alt,
            "description" => $ProductPost->description,
        ]);

        $lang_config_contact = [];
        $lang_config = LanguageConfig::where(['language' => $language, 'page_control' => 4])->orderBy('id', 'DESC')->get();
        if (!empty($lang_config)) {
            foreach ($lang_config as $key => $value) {
                $lang_config_contact[$value->param] = $value->title;
            }
        }
        return view('pages.news.news', compact('NewsData', 'NewsProduct','lang_config_contact'));
    }
}
