<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\MemberAccount;
use App\Models\MemberProfiles;
use App\Models\User;

class RegisterController extends Controller
{
    public function index()
    {
        return view('pages.register.register');
    }

    public function store(Request $request)
    {
        dd($request->all());
        // Validate and store the registration data
        $request->validate([
            'username' => 'required|string|max:255',
            'firstname' => 'required|string|max:255',
            'lastname' => 'required|string|max:255',
            'telephone' => 'required|string|max:20',
            'email' => 'required|string|email|max:255|unique:users',
            'password' => 'required|string|min:8|confirmed',
            'password_confirmation' => 'required|string|min:8',
            'occupationsChecked' => 'required|array',
            'otherOccupation' => 'nullable|string|max:255',
            'country' => 'required|string|max:255',
        ]);

        $users = new User;
        $users->username = $request->input('username');
        $users->password = bcrypt($request->input('password'));
        $users->email = $request->input('email');
        $users->account_role = 'member';
        $users->save();

        $memberPro = new MemberProfiles();
        $memberPro->display_name = $request->input('username');
        $memberPro->first_name = $request->input('firstname');
        $memberPro->last_name = $request->input('lastname');
        $memberPro->phone_number = $request->input('telephone');
        $memberPro->email = $request->input('email');
        $memberPro->occupation = $request->input('occupationsChecked');
        $memberPro->country = $request->input('country');
        $memberPro->save();

        $memberAccounts = new MemberAccount;
        $memberAccounts->user_id = $users->id;
        $memberAccounts->account_type = 'basic';
        $memberAccounts->save();

        return redirect()->route('login')->with('success', 'Registration successful. Please log in.');
    }
}
