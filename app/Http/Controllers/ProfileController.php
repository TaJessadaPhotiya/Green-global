<?php

namespace App\Http\Controllers;

use App\Models\MemberProfiles;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class ProfileController extends Controller
{
    public function index()
    {
        $user = Auth::user();
        $profile = $user->memberAccount->memberProfiles;
        // dd($profile);
        return view('pages.profile.profile', compact('user', 'profile'));
    }

    public function update($language, Request $request)
    {
        // dd($request->all());
        $validator = Validator::make($request->all(), [
            'username' => 'required|string|max:255',
            'firstname' => 'required|string|max:255',
            'lastname' => 'required|string|max:255',
            'telephone' => 'required|string|max:20',
            'email' => 'required|string|email|max:255',
            'password' => 'nullable|string|min:6|confirmed',
            'password_confirmation' => 'nullable|string|min:6',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'status' => false,
                'message' => 'Invalid params',
                'errorMessage' => $validator->errors()
            ], 422);
        }

        $user = Auth::user();
        $profile = MemberProfiles::find(Auth::user()->memberAccount->profiles_id);

        // dd($profile);
        // ตรวจสอบและอัปเดต email หากมีการเปลี่ยนแปลง
        if ($request->filled('email') && $request->email !== $user->email) {
            $user->email = $request->email;
        }

        // ตรวจสอบและอัปเดต password หากมีการกรอกค่าใหม่
        if ($request->filled('password')) {
            // เข้ารหัส (Hash) password ใหม่ก่อนบันทึก
            $user->password = bcrypt($request->password);
        }

        // บันทึกการเปลี่ยนแปลงทั้งหมด
        if ($user->isDirty()) {
            $user->save();
            // return redirect()->back()->with('success', 'ข้อมูลผู้ใช้ได้รับการอัปเดตแล้ว');
        }

        $profile->display_name = $request->input('username');
        $profile->first_name = $request->input('firstname');
        $profile->last_name = $request->input('lastname');
        $profile->phone_number = $request->input(key: 'telephone');
        $profile->save();

        return response()->json([
            'success' => 'Profile updated successful.',
            // 'url' => $language . '/login',
        ], 201);
    }
}
