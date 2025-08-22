<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;

class ProfileController extends Controller
{
    public function index()
    {
        $user = Auth::user();
        $profile = $user->memberAccount->memberProfiles;
        // dd($profile);
        return view('pages.profile.profile', compact('user', 'profile'));
    }
}
