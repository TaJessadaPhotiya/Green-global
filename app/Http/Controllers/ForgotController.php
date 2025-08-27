<?php

namespace App\Http\Controllers;

use App\Mail\SendMailResetPasswordMember;
use App\Models\MemberAccount;
use App\Models\User;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Mail;

class ForgotController extends Controller
{
    public function index()
    {
        return view('pages.forgot.forgot');
    }

    public function ForgetPassword(Request $request, $language)
    {
        $request->validate([
            'email' => 'required|email',
        ]);

        // Handle the password reset logic here
        $user = User::where('email', $request->email)->where('account_role', 'member')->first();

        if (!$user) {
            return response()->json([
                'message' => 'error',
                'description' => 'User not found!'
            ], 400);
        }
        $user_account = $user->memberAccount->memberProfiles;
        // dd($user_account);
        $token = md5($user->account_role . $user->email . $user->id);

        DB::table('password_resets')->insert([
            'email' => $request->email,
            'token' => $token,
            'created_at' => Carbon::now()
        ]);
        $reset_token = DB::table('password_resets')->orderBy('created_at', 'DESC')->first();

        try {
            $infos = $this->getWebInfo('', $language);
            $webInfo = $this->infoSetting($infos);
            // $url = URL::current();
            // dd(array_filter(explode('/', $url)));
            Mail::to($user->email)->send(new SendMailResetPasswordMember(
                $user,
                $user_account,
                $reset_token,
                $webInfo,
                $language
            ));
            return response()->json([
                'message' => 'success',
                'description' => 'We have e-mailed your password reset link!'
            ], 200);
        } catch (Exception $e) {
            return response()->json([
                'message' => 'error',
                'description' => 'Something went wrong.',
                'errorsMessage' => $e->getMessage()
            ], 501);
        }
    }

    public function ConfirmPassword($language,$token)
    {
        return view('pages.confirm-password.confirm-password', compact('token'));
    }

    public function ResetPassword(Request $request, $language)
    {
        $request->validate([
            'password' => 'required|min:6|confirmed',
            'password_confirmation' => 'required|min:6',
            'token' => 'required'
        ]);

        $resetRecord = DB::table('password_resets')->where('token', $request->token)->first();

        if (!$resetRecord) {
            return response()->json([
                'message' => 'error',
                'description' => 'Invalid token!'
            ], 400);
        }

        $user = User::where('email', $resetRecord->email)->where('account_role', 'member')->first();

        if (!$user) {
            return response()->json([
                'message' => 'error',
                'description' => 'User not found!'
            ], 400);
        }

        $user->password = bcrypt($request->input('password'));
        $user->save();

        // Delete the used token
        DB::table('password_resets')->where('email', $user->email)->delete();

        return response()->json([
            'message' => 'success',
            'description' => 'Password has been reset successfully. Please log in.',
            'url' => $language . '/login',
        ], 200);
    }

    /*******************
     * private function*
     *******************/

}
