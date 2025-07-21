<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class VisionController extends Controller
{
    public function index()
    {
        return view('pages.vision.vision');
    }
}
