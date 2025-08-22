<?php

namespace App\Http\Controllers;

use App\Models\MemberAccount;
use Illuminate\Http\Request;
use Validator;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
    public function index()
    {
        return view('pages.login.login');
    }

    public function authenticate($language, Request $request)
    {
        $params = $request->all();
        // Handle login logic here
        $validator = Validator::make($request->all(), [
            'username' => 'required|email',
            'password' => 'required|min:6',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'status' => false,
                'message' => 'Invalid params',
                'errorMessage' => $validator->errors()
            ], 422);
        }
        $credentials = [
            'email' => $params['username'],
            'password' => $params['password'],
            'account_role' => 'member'
        ];

        if (Auth::attempt($credentials)) {
            $check = MemberAccount::where('users_id', Auth::user()->id)->first();

            // dd($check);
            if ($check->member_status === 1) {
                if ($check->member_expire_at > date('Y-m-d H:i:s')) {
                    $request->session()->regenerate();
                    return response()->json([
                        'status' => '200',
                        'Message' => 'Login successful',
                        'url' => $language . '/product',
                    ], 201);
                } else {
                    $request->session()->invalidate();
                    if ($language == "th") {
                        $request->session()->invalidate();
                        return response()->json([
                            'status' => '422',
                            'Message' => 'บัญชีหมดอายุ โปรดติดต่อผู้ดูแลระบบ',
                        ], 422);
                    } else {
                        return response()->json([
                            'status' => '422',
                            'Message' => 'The account is expired Please contact the administrator.',
                        ], 422);
                    }
                }
            } else {
                $request->session()->invalidate();
                if ($language == "th") {
                    $request->session()->invalidate();
                    return response()->json([
                        'status' => '422',
                        'Message' => 'บัญชีถูกระงับ โปรดติดต่อผู้ดูแลระบบ',
                    ], 422);
                } else {
                    return response()->json([
                        'status' => '422',
                        'Message' => 'The account is suspended Please contact the administrator.',
                    ], 422);
                }
            }
        } else {
            $request->session()->invalidate();
            if ($language == "th") {
                $request->session()->invalidate();
                return response()->json([
                    'status' => '422',
                    'Message' => 'รหัสผ่านไม่ถูกต้อง',
                ], 422);
            }
            return response()->json([
                'status' => '422',
                'Message' => 'The password is incorrect.',
            ], 422);
        }

        // Proceed with authentication logic
    }

    public function logout(Request $request, $language)
    {
        // dd($request->all());
        Auth::logout();

        $request->session()->invalidate();

        $request->session()->regenerateToken();

        return redirect($language);
    }
}
