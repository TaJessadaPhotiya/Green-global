<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class NewsDetailController extends Controller
{
    public function index($id)
    {
        $NewsData = [
            [
                'id' => 1,
                'image' => '/image/11.jpg',
                'name' => 'WorldHotels Launches WorldHotelsTo Crafted Collection 1',
                'date' => 'March 26, 2021',
                'description' =>
                    'Lorem ipsum dolor sitametconsecteturadipisicing elit. Vitae id doloribus quam eveniet ut? Minusomnis, eos hic labore optio cupiditatetemporaest necessitatibus sint? Tenetur',
            ],
            [
                'id' => 2,
                'image' => '/image/22.jpg',
                'name' => 'WorldHotels Launches WorldHotelsTo Crafted Collection 2',
                'date' => 'March 27, 2021',
                'description' =>
                    'Lorem ipsum dolor sitametconsecteturadipisicing elit. Vitae id doloribus quam eveniet ut? Minusomnis, eos hic labore optio cupiditatetemporaest necessitatibus sint? Tenetur',
            ],
            [
                'id' => 3,
                'image' => '/image/33.jpg',
                'name' => 'WorldHotels Launches WorldHotelsTo Crafted Collection 3',
                'date' => 'March 28, 2021',
                'description' =>
                    'Lorem ipsum dolor sitametconsecteturadipisicing elit. Vitae id doloribus quam eveniet ut? Minusomnis, eos hic labore optio cupiditatetemporaest necessitatibus sint? Tenetur',
            ],
            [
                'id' => 4,
                'image' => '/image/44.jpg',
                'name' => 'WorldHotels Launches WorldHotelsTo Crafted Collection 4',
                'date' => 'March 29, 2021',
                'description' =>
                    'Lorem ipsum dolor sitametconsecteturadipisicing elit. Vitae id doloribus quam eveniet ut? Minusomnis, eos hic labore optio cupiditatetemporaest necessitatibus sint? Tenetur',
            ],
            [
                'id' => 5,
                'image' => '/image/55.jpg',
                'name' => 'WorldHotels Launches WorldHotelsTo Crafted Collection 5',
                'date' => 'March 30, 2021',
                'description' =>
                    'Lorem ipsum dolor sitametconsecteturadipisicing elit. Vitae id doloribus quam eveniet ut? Minusomnis, eos hic labore optio cupiditatetemporaest necessitatibus sint? Tenetur',
            ],
            [
                'id' => 6,
                'image' => '/image/66.jpg',
                'name' => 'WorldHotels Launches WorldHotelsTo Crafted Collection 6',
                'date' => 'March 31, 2021',
                'description' =>
                    'Lorem ipsum dolor sitametconsecteturadipisicing elit. Vitae id doloribus quam eveniet ut? Minusomnis, eos hic labore optio cupiditatetemporaest necessitatibus sint? Tenetur',
            ],
        ];

        $news = collect($NewsData)->firstWhere('id', $id);

        if (!$news) {
            abort(404);
        }

        return view('pages.news-detail.news-detail', compact('news'));
    }

}


