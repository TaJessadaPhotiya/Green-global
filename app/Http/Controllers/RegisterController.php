<?php

namespace App\Http\Controllers;

use DB;
use Illuminate\Http\Request;
use App\Models\MemberAccount;
use App\Models\MemberOccupation;
use App\Models\MemberProfiles;
use App\Models\User;

class RegisterController extends Controller
{
    public function index()
    {
        return view('pages.register.register');
    }

    public function store($language, Request $request)
    {
        // dd($request->all());
        // Validate and store the registration data
        $request->validate([
            'username' => 'required|string|max:255',
            'firstname' => 'required|string|max:255',
            'lastname' => 'required|string|max:255',
            'telephone' => 'required|string|max:20',
            'email' => 'required|string|email|max:255|unique:users',
            'password' => 'required|string|min:6|confirmed',
            'password_confirmation' => 'required|string|min:6',
            'selectedValues' => 'required|array',
            'occupationsOther' => 'nullable|string|max:255',
            'country' => 'required|string|max:255',
        ]);

        DB::beginTransaction();
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
        // $memberPro->email = $request->input('email');
        // $memberPro->occupation = $request->input('occupationsChecked');
        $memberPro->country = $request->input('country');
        $memberPro->save();

        foreach ($request->selectedValues as $val) {
            $memberOccupation = new MemberOccupation();
            $memberOccupation->member_id = $memberPro->id;
            $memberOccupation->occupations = $val;
            if ($val === 'Other') {
                $memberOccupation->occupations = $request->input('occupationsOther');
            }
            $memberOccupation->save();
        }

        $memberAccounts = new MemberAccount();
        $memberAccounts->users_id = $users->id;
        $memberAccounts->profiles_id = $memberPro->id;
        $memberAccounts->save();
        DB::commit();

        return response()->json([
            'success' => 'Registration successful. Please log in.',
            'url' => $language.'/login',
        ]);
    }
}
