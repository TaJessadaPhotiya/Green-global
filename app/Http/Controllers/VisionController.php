<?php

namespace App\Http\Controllers;

use App\Models\Post;
use Illuminate\Http\Request;

class VisionController extends Controller
{
    public function index($language)
    {

          // หาตาม language ที่ส่งมาก่อน
        $visionContent = Post::select('id', 'title', 'description', 'thumbnail_link', 'thumbnail_title', 'thumbnail_alt', 'category', 'content', 'slug', 'language')
            ->where('slug', 'VISION')
            ->where('language', $language)
            ->first();

        // ถ้าไม่มี ให้หา defaults = 1
        if (!$visionContent) {
            $visionContent = Post::select('id', 'title', 'description', 'thumbnail_link', 'thumbnail_title', 'thumbnail_alt', 'category', 'content', 'slug', 'language')
                ->where('slug', 'VISION')
                ->where('defaults', 1)
                ->first();
        }
// dd($visionContent);
        return view('pages.vision.vision',compact('visionContent'));
    }
}
