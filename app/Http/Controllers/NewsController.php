<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class NewsController extends Controller
{
    public function index()
    {
        $NewsData = collect([
            [
                'id' => 1,
                'image' => '/image/Rectangle 169.png',
                'name' => 'กิจกรรมวันเด็ก ปี 2567',
                'date' => 'March 22, 2022',
                'description' => 'บริษัทร่วมกิจกรรมสร้างความสุขในวันเด็กแจกของรางวัลมากมาย',
            ],
        ]);

        return view('pages.news.news', ['newsList' => $NewsData]);
    }
}
