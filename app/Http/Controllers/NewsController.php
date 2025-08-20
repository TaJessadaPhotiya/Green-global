<?php

namespace App\Http\Controllers;

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
        // dd($NewsData);
        $ProductData = Product::leftJoin('product_category', 'products.category', '=', 'product_category.id')
            ->select(
                'products.id',
                'products.title',
                'product_category.title AS c_title',
                'products.short_url',
                'products.thumbnail_link',
                'products.thumbnail_title',
                'products.thumbnail_alt',
            )
            ->where('products.pin', 1)
            ->where('.products.language', $language)
            ->first();
        if (!$ProductData) {
            $ProductData = Product::leftJoin('product_category', 'products.category', '=', 'product_category.id')
                ->select(
                    'products.id',
                    'products.title',
                    'product_category.title AS c_title',
                    'products.short_url',
                    'products.thumbnail_link',
                    'products.thumbnail_title',
                    'products.thumbnail_alt',
                )
                ->where('defaults', 1)
                ->where('pin', 1)
                ->first();
        }
        // dd($ProductData);

        return view('pages.news.news', compact('NewsData', 'ProductData'));
    }
}
