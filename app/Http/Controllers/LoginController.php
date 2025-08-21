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

    public function authenticate(Request $request)
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

        if (Auth::attempt(array('username' => $params['username'], 'password' => $params['password'], 'account_role' => 'member'))) {
            $check = MemberAccount::where('users_id', Auth::user()->id)->first();
            if ($check->member_status === 1) {
                if ($check->member_expire_at > date('Y-m-d H:i:s')) {
                    $request->session()->regenerate();
                    return response()->json([
                        'status' => '200',
                        'Message' => 'success',
                        'lang' => $request->lang
                    ]);
                } else {
                    $request->session()->invalidate();
                    if ($request->lang == "th") {
                        $request->session()->invalidate();
                        return response()->json([
                            'status' => '500',
                            'Message' => 'บัญชีหมดอายุ โปรดติดต่อผู้ดูแลระบบ'
                        ]);
                    }
                    return response()->json([
                        'status' => '500',
                        'Message' => 'The account is expired Please contact the administrator.'
                    ]);
                }
            }
        }

        // Proceed with authentication logic
    }
}
