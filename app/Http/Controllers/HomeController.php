<?php

namespace App\Http\Controllers;

use App\Models\Post;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index($language)
    {
        // หาตาม language ที่ส่งมาก่อน
        $homeContent = Post::select('id', 'title', 'description', 'thumbnail_link', 'thumbnail_title', 'thumbnail_alt', 'category', 'content', 'slug', 'language')
            ->where('slug', 'HOME')
            ->where('language', $language)
            ->first();

        // ถ้าไม่มี ให้หา defaults = 1
        if (!$homeContent) {
            $homeContent = Post::select('id', 'title', 'description', 'thumbnail_link', 'thumbnail_title', 'thumbnail_alt', 'category', 'content', 'slug', 'language')
                ->where('slug', 'HOME')
                ->where('defaults', 1)
                ->first();
        }
        // dd( $homeContent);
        return view('pages.home.home', compact('homeContent'));
    }
}
