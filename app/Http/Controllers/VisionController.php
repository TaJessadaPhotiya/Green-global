<?php

namespace App\Http\Controllers;

use App\Models\Post;
use Illuminate\Http\Request;

class VisionController extends Controller
{
    public function index($language)
    {

        // หาตาม language ที่ส่งมาก่อน
        $visionContent = Post::with([
            'imagesOpsts' => function ($query) use ($language) {
                $query->where('language', $language)
                ->orWhere('defaults', 1);
            }
        ])
            ->select('id', 'title', 'description', 'thumbnail_link', 'thumbnail_title', 'thumbnail_alt', 'category', 'content', 'slug', 'language')
            ->where('slug', 'VISION')
            ->where('language', $language)
            ->first();
        // dd($visionContent);
        // ถ้าไม่มี ให้หา defaults = 1
        if (!$visionContent) {
            $visionContent = Post::with(['imagesOpsts' => function ($query) {
                $query->where('defaults', 1);
            }])
                ->select('id', 'title', 'description', 'thumbnail_link', 'thumbnail_title', 'thumbnail_alt', 'category', 'content', 'slug', 'language')
                ->where('slug', 'VISION')
                ->where('defaults', 1)
                ->first();
        }

        return view('pages.vision.vision', compact('visionContent'));
    }
}
