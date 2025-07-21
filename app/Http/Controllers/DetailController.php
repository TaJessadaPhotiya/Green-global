<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class DetailController extends Controller
{
    public function index($id)
    {
        $RoomData = [
            [
                'id' => 1,
                'image' => [
                    '/image/1.jpg',
                    '/image/22.jpg',
                ],
                'name' => 'ESPRESSO',
                'price' => '95 THB',
                'description' => 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Velit harum facere minima Lorem ipsum dolor sit amet consectetur
            adipisicing elit. Vitae id doloribus quam eveniet ut? Minus omnis, eos hic labore optio cupiditate
            temporaest necessitatibus sint? Tenetur dolore maxime quasi quos. Lorem ipsum dolor sit amet consectetur
            adipisicing elit. Vitae id doloribus quam eveniet ut? Minus omnis, eos hic labore optio cupiditate
            temporaest necessitatibus sint? Tenetur dolore maxime quasi quos.',
                'capacity' => '2 person',
                'size' => '35 sq.m.',
                'view' => 'sea balcony',
                'bed' => 'king size / twin',
                'category' => 'BEEF',
            ],
            [
                'id' => 2,
                'image' => [
                    '/image/11.jpg',
                    '/image/2.jpg',
                ],
                'name' => 'AMERICANO',
                'price' => '110 THB',
                'description' => 'Enjoy a cozy stay with modern amenities and a beautiful city view. Lorem ipsum dolor sit amet consectetur
            adipisicing elit. Vitae id doloribus quam eveniet ut? Minus omnis, eos hic labore optio cupiditate
            temporaest necessitatibus sint? Tenetur dolore maxime quasi quos. Lorem ipsum dolor sit amet consectetur
            adipisicing elit. Vitae id doloribus quam eveniet ut? Minus omnis, eos hic labore optio cupiditate
            temporaest necessitatibus sint? Tenetur dolore maxime quasi quos.',
                'capacity' => '2 person',
                'size' => '40 sq.m.',
                'view' => 'city view',
                'bed' => 'queen size',
                'category' => 'BEEF',
            ],
            [
                'id' => 3,
                'image' => [
                    '/image/33.jpg',
                    '/image/2.jpg',
                ],
                'name' => 'CAPPUCCINO',
                'price' => '75 THB',
                'description' => 'Experience luxury with spacious rooms and premium services. Lorem ipsum dolor sit amet consectetur
            adipisicing elit. Vitae id doloribus quam eveniet ut? Minus omnis, eos hic labore optio cupiditate
            temporaest necessitatibus sint? Tenetur dolore maxime quasi quos. Lorem ipsum dolor sit amet consectetur
            adipisicing elit. Vitae id doloribus quam eveniet ut? Minus omnis, eos hic labore optio cupiditate
            temporaest necessitatibus sint? Tenetur dolore maxime quasi quos.',
                'capacity' => '4 person',
                'size' => '60 sq.m.',
                'view' => 'ocean view',
                'bed' => 'king size',
                'category' => 'BEEF',
            ],
            [
                'id' => 4,
                'image' => [
                    '/image/3.jpg',
                    '/image/1.jpg',
                ],
                'name' => 'LATTE',
                'price' => '50 THB',
                'description' => 'Perfect for families with spacious layout and extra comfort. Lorem ipsum dolor sit amet consectetur
            adipisicing elit. Vitae id doloribus quam eveniet ut? Minus omnis, eos hic labore optio cupiditate
            temporaest necessitatibus sint? Tenetur dolore maxime quasi quos. Lorem ipsum dolor sit amet consectetur
            adipisicing elit. Vitae id doloribus quam eveniet ut? Minus omnis, eos hic labore optio cupiditate
            temporaest necessitatibus sint? Tenetur dolore maxime quasi quos.',
                'capacity' => '4 person',
                'size' => '50 sq.m.',
                'view' => 'garden view',
                'bed' => '2 queen size',
                'category' => 'LAMR',
            ],
            [
                'id' => 5,
                'image' => [
                    '/image/1.jpg',
                    '/image/2.jpg',
                ],
                'name' => 'MOCHA',
                'price' => '95 THB',
                'description' => 'Ideal for solo travelers with all essential amenities. Lorem ipsum dolor sit amet consectetur
            adipisicing elit. Vitae id doloribus quam eveniet ut? Minus omnis, eos hic labore optio cupiditate
            temporaest necessitatibus sint? Tenetur dolore maxime quasi quos. Lorem ipsum dolor sit amet consectetur
            adipisicing elit. Vitae id doloribus quam eveniet ut? Minus omnis, eos hic labore optio cupiditate
            temporaest necessitatibus sint? Tenetur dolore maxime quasi quos.',
                'capacity' => '1 person',
                'size' => '25 sq.m.',
                'view' => 'courtyard view',
                'bed' => 'single bed',
                'category' => 'LAMR',
            ],
            [
                'id' => 6,
                'image' => [
                    '/image/1.jpg',
                    '/image/2.jpg',
                ],
                'name' => 'MACCHIATO',
                'price' => '100 THB',
                'description' => 'Ideal for solo travelers with all essential amenities. Lorem ipsum dolor sit amet consectetur
            adipisicing elit. Vitae id doloribus quam eveniet ut? Minus omnis, eos hic labore optio cupiditate
            temporaest necessitatibus sint? Tenetur dolore maxime quasi quos. Lorem ipsum dolor sit amet consectetur
            adipisicing elit. Vitae id doloribus quam eveniet ut? Minus omnis, eos hic labore optio cupiditate
            temporaest necessitatibus sint? Tenetur dolore maxime quasi quos.',
                'capacity' => '1 person',
                'size' => '25 sq.m.',
                'view' => 'courtyard view',
                'bed' => 'single bed',
                'category' => 'LAMR',
            ],
            [
                'id' => 7,
                'image' => [
                    '/image/1.jpg',
                    '/image/2.jpg',
                ],
                'name' => 'AFFOGATO',
                'price' => '95 THB',
                'description' => 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Velit harum facere minima Lorem ipsum dolor sit amet consectetur
            adipisicing elit. Vitae id doloribus quam eveniet ut? Minus omnis, eos hic labore optio cupiditate
            temporaest necessitatibus sint? Tenetur dolore maxime quasi quos. Lorem ipsum dolor sit amet consectetur
            adipisicing elit. Vitae id doloribus quam eveniet ut? Minus omnis, eos hic labore optio cupiditate
            temporaest necessitatibus sint? Tenetur dolore maxime quasi quos.',
                'capacity' => '2 person',
                'size' => '35 sq.m.',
                'view' => 'sea balcony',
                'bed' => 'king size / twin',
                'category' => 'VEAL',
            ],
            [
                'id' => 8,
                'image' => [
                    '/image/1.jpg',
                    '/image/2.jpg',
                ],
                'name' => 'CORTADO',
                'price' => '150 THB',
                'description' => 'Enjoy a cozy stay with modern amenities and a beautiful city view. Lorem ipsum dolor sit amet consectetur
            adipisicing elit. Vitae id doloribus quam eveniet ut? Minus omnis, eos hic labore optio cupiditate
            temporaest necessitatibus sint? Tenetur dolore maxime quasi quos. Lorem ipsum dolor sit amet consectetur
            adipisicing elit. Vitae id doloribus quam eveniet ut? Minus omnis, eos hic labore optio cupiditate
            temporaest necessitatibus sint? Tenetur dolore maxime quasi quos.',
                'capacity' => '2 person',
                'size' => '40 sq.m.',
                'view' => 'city view',
                'bed' => 'queen size',
                'category' => 'PORK',
            ],
            [
                'id' => 9,
                'image' => [
                    '/image/1.jpg',
                    '/image/2.jpg',
                ],
                'name' => 'ESPRESSO',
                'price' => '95 THB',
                'description' => 'Experience luxury with spacious rooms and premium services. Lorem ipsum dolor sit amet consectetur
            adipisicing elit. Vitae id doloribus quam eveniet ut? Minus omnis, eos hic labore optio cupiditate
            temporaest necessitatibus sint? Tenetur dolore maxime quasi quos. Lorem ipsum dolor sit amet consectetur
            adipisicing elit. Vitae id doloribus quam eveniet ut? Minus omnis, eos hic labore optio cupiditate
            temporaest necessitatibus sint? Tenetur dolore maxime quasi quos.',
                'capacity' => '4 person',
                'size' => '60 sq.m.',
                'view' => 'ocean view',
                'bed' => 'king size',
                'category' => 'PORK',
            ],
            [
                'id' => 10,
                'image' => [
                    '/image/1.jpg',
                    '/image/2.jpg',
                ],
                'name' => 'AMERICANO',
                'price' => '110 THB',
                'description' => 'Perfect for families with spacious layout and extra comfort. Lorem ipsum dolor sit amet consectetur
            adipisicing elit. Vitae id doloribus quam eveniet ut? Minus omnis, eos hic labore optio cupiditate
            temporaest necessitatibus sint? Tenetur dolore maxime quasi quos. Lorem ipsum dolor sit amet consectetur
            adipisicing elit. Vitae id doloribus quam eveniet ut? Minus omnis, eos hic labore optio cupiditate
            temporaest necessitatibus sint? Tenetur dolore maxime quasi quos.',
                'capacity' => '4 person',
                'size' => '50 sq.m.',
                'view' => 'garden view',
                'bed' => '2 queen size',
                'category' => 'FISH',
            ],
            [
                'id' => 11,
                'image' => [
                    '/image/1.jpg',
                    '/image/2.jpg',
                ],
                'name' => 'CAPPUCCINO',
                'price' => '75 THB',
                'description' => 'Ideal for solo travelers with all essential amenities. Lorem ipsum dolor sit amet consectetur
            adipisicing elit. Vitae id doloribus quam eveniet ut? Minus omnis, eos hic labore optio cupiditate
            temporaest necessitatibus sint? Tenetur dolore maxime quasi quos. Lorem ipsum dolor sit amet consectetur
            adipisicing elit. Vitae id doloribus quam eveniet ut? Minus omnis, eos hic labore optio cupiditate
            temporaest necessitatibus sint? Tenetur dolore maxime quasi quos.',
                'capacity' => '1 person',
                'size' => '25 sq.m.',
                'view' => 'courtyard view',
                'bed' => 'single bed',
                'category' => 'FISH',
            ],
            [
                'id' => 12,
                'image' => [
                    '/image/1.jpg',
                    '/image/2.jpg',
                ],
                'name' => 'LATTE',
                'price' => '50 THB',
                'description' => 'Ideal for solo travelers with all essential amenities. Lorem ipsum dolor sit amet consectetur
            adipisicing elit. Vitae id doloribus quam eveniet ut? Minus omnis, eos hic labore optio cupiditate
            temporaest necessitatibus sint? Tenetur dolore maxime quasi quos. Lorem ipsum dolor sit amet consectetur
            adipisicing elit. Vitae id doloribus quam eveniet ut? Minus omnis, eos hic labore optio cupiditate
            temporaest necessitatibus sint? Tenetur dolore maxime quasi quos.',
                'capacity' => '1 person',
                'size' => '25 sq.m.',
                'view' => 'courtyard view',
                'bed' => 'single bed',
                'category' => 'FISH',
            ],
            [
                'id' => 13,
                'image' => [
                    '/image/1.jpg',
                    '/image/2.jpg',
                ],
                'name' => 'MOCHA',
                'price' => '95 THB',
                'description' => 'Perfect for families with spacious layout and extra comfort. Lorem ipsum dolor sit amet consectetur
            adipisicing elit. Vitae id doloribus quam eveniet ut? Minus omnis, eos hic labore optio cupiditate
            temporaest necessitatibus sint? Tenetur dolore maxime quasi quos. Lorem ipsum dolor sit amet consectetur
            adipisicing elit. Vitae id doloribus quam eveniet ut? Minus omnis, eos hic labore optio cupiditate
            temporaest necessitatibus sint? Tenetur dolore maxime quasi quos.',
                'capacity' => '4 person',
                'size' => '50 sq.m.',
                'view' => 'garden view',
                'bed' => '2 queen size',
                'category' => 'FISH',
            ],
            [
                'id' => 14,
                'image' => [
                    '/image/1.jpg',
                    '/image/2.jpg',
                ],
                'name' => 'MACCHIATO',
                'price' => '100 THB',
                'description' => 'Ideal for solo travelers with all essential amenities. Lorem ipsum dolor sit amet consectetur
            adipisicing elit. Vitae id doloribus quam eveniet ut? Minus omnis, eos hic labore optio cupiditate
            temporaest necessitatibus sint? Tenetur dolore maxime quasi quos. Lorem ipsum dolor sit amet consectetur
            adipisicing elit. Vitae id doloribus quam eveniet ut? Minus omnis, eos hic labore optio cupiditate
            temporaest necessitatibus sint? Tenetur dolore maxime quasi quos.',
                'capacity' => '1 person',
                'size' => '25 sq.m.',
                'view' => 'courtyard view',
                'bed' => 'single bed',
                'category' => 'SOUP',
            ],
            [
                'id' => 15,
                'image' => [
                    '/image/1.jpg',
                    '/image/2.jpg',
                ],
                'name' => 'AFFOGATO',
                'price' => '95 THB',
                'description' => 'Ideal for solo travelers with all essential amenities. Lorem ipsum dolor sit amet consectetur
            adipisicing elit. Vitae id doloribus quam eveniet ut? Minus omnis, eos hic labore optio cupiditate
            temporaest necessitatibus sint? Tenetur dolore maxime quasi quos. Lorem ipsum dolor sit amet consectetur
            adipisicing elit. Vitae id doloribus quam eveniet ut? Minus omnis, eos hic labore optio cupiditate
            temporaest necessitatibus sint? Tenetur dolore maxime quasi quos.',
                'capacity' => '1 person',
                'size' => '25 sq.m.',
                'view' => 'courtyard view',
                'bed' => 'single bed',
                'category' => 'SOUP',
            ],
            [
                'id' => 16,
                'image' => [
                    '/image/1.jpg',
                    '/image/2.jpg',
                ],
                'name' => 'CORTADO',
                'price' => '150 THB',
                'description' => 'Ideal for solo travelers with all essential amenities. Lorem ipsum dolor sit amet consectetur
            adipisicing elit. Vitae id doloribus quam eveniet ut? Minus omnis, eos hic labore optio cupiditate
            temporaest necessitatibus sint? Tenetur dolore maxime quasi quos. Lorem ipsum dolor sit amet consectetur
            adipisicing elit. Vitae id doloribus quam eveniet ut? Minus omnis, eos hic labore optio cupiditate
            temporaest necessitatibus sint? Tenetur dolore maxime quasi quos.',
                'capacity' => '1 person',
                'size' => '25 sq.m.',
                'view' => 'courtyard view',
                'bed' => 'single bed',
                'category' => 'SOUP',
            ],

        ];

        $room = collect($RoomData)->firstWhere('id', $id);

        if (!$room) {
            abort(404);
        }

        return view('pages.detail.detail', compact('room'));
    }

}


