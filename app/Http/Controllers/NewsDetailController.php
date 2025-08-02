<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class NewsDetailController extends Controller
{
    public function index($language, $id)
    {
        $NewsData = collect([
            [
                'id' => 1,
                'image' => '/image/Rectangle 169.png',
                'name' => 'กิจกรรมวันเด็ก ปี 2567',
                'date' => 'March 22, 2022',
                'description' => 'บริษัทร่วมกิจกรรมสร้างความสุขในวันเด็กแจกของรางวัลมากมาย',
            ],
            [
                'id' => 2,
                'image' => '/image/ภาพ News-2.png',
                'name' => 'กิจกรรมวันเด็ก ปี 2565',
                'date' => 'March 27, 2021',
                'description' => 'บริษัทร่วมกิจกรรมสร้างความสุขในวันเด็กแจกของรางวัลมากมาย',
            ],
            [
                'id' => 3,
                'image' => '/image/Home 1.jpg',
                'name' => 'กิจกรรมวันเด็ก ปี 2564',
                'date' => 'March 26, 2023',
                'description' => 'บริษัทร่วมกิจกรรมสร้างความสุขในวันเด็กแจกของรางวัลมากมาย',
            ],
        ]);

        $news = $NewsData->firstWhere('id', (int) $id);

        if (!$news) {
            abort(404, 'News not found');
        }

        return view('pages.news-detail.news-detail', compact('news', 'language'));
    }
}



