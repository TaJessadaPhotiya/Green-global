<?php

namespace App\Http\Controllers;

use App\Models\Post;
use Illuminate\Http\Request;

class TermController extends Controller
{
    public function index($language)
    {
        $Term = Post::where('slug', 'TERM')
            ->where('language', $language)->first();

        if (!$Term) {
            $Term = Post::where('slug', 'TERM')
                ->where('defaults', 1)->first();
        }

        return view('pages.term.term', compact('Term'));
    }
}
