<?php

namespace App\Http\Controllers;

use App\Models\Post;
use Illuminate\Http\Request;

class NewsDetailController extends Controller
{
    public function index($language, $id)
    {
        // $NewsData = collect([
        //     [
        //         'id' => 1,
        //         'image' => '/image/Rectangle 169.png',
        //         'name' => 'กิจกรรมวันเด็ก ปี 2567',
        //         'date' => 'March 22, 2022',
        //         'description' => 'บริษัทร่วมกิจกรรมสร้างความสุขในวันเด็กแจกของรางวัลมากมาย',
        //     ],
        //     [
        //         'id' => 2,
        //         'image' => '/image/ภาพ News-2.png',
        //         'name' => 'กิจกรรมวันเด็ก ปี 2565',
        //         'date' => 'March 27, 2021',
        //         'description' => 'บริษัทร่วมกิจกรรมสร้างความสุขในวันเด็กแจกของรางวัลมากมาย',
        //     ],
        //     [
        //         'id' => 3,
        //         'image' => '/image/Home 1.jpg',
        //         'name' => 'กิจกรรมวันเด็ก ปี 2564',
        //         'date' => 'March 26, 2023',
        //         'description' => 'บริษัทร่วมกิจกรรมสร้างความสุขในวันเด็กแจกของรางวัลมากมาย',
        //     ],
        // ]);

        $news = Post::where('id', (int) $id)
        ->where('slug', 'NEWS')
        ->where('language', $language)
        ->first();

        if (!$news) {
            // abort(404, 'News not found');
             $news = Post::where('id', (int) $id)
        ->where('slug', 'NEWS')
        ->where('defaults', 1)
        ->first();
        }

        return view('pages.news-detail.news-detail', compact('news'));
    }
}



