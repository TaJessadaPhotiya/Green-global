<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index($language)
    {



        return view('pages.home.home', compact('language'));
    }
}
