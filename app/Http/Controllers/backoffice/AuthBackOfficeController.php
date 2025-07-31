<?php

namespace App\Http\Controllers\backoffice;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\LanguageAvailable;
use Carbon\Language;
use Illuminate\Support\Facades\Auth;
use App\Models\AdminAccount;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use Exception;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
use App\Mail\SendMailResetPassword;
use Carbon\Carbon;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\URL;

class AuthBackOfficeController extends BaseController
{
    public function registerAccount(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'display_name' => 'required',
            'email' => 'required|email',
            'password' => 'required',
            'c_password' => 'required|same:password'
        ]);

        if ($validator->fails()) {
            return $this->sendErrorValidators('Invalid params', $validator->errors());
        }

        $params = $request->all();

        try {
            DB::beginTransaction();
            // Create user logic here
            $userCreated = User::create([
                'email' => strtolower($params['email']),
                'username' => strtolower($params['email']),
                'password' => bcrypt($params['password']),
                'account_role' => 'backoffice',
            ]);

            AdminAccount::create([
                'account_id' => (int) $userCreated->id,
                'display_name' => $params['display_name'],
                'admin_level' => 4,
                'admin_status' => 2
            ]);
            $token = $userCreated->createToken('AuthToken')->plainTextToken;
            /* ส่งเมล */
            // $token = md5($userCreated->created_at . $userCreated->email . $userCreated->id);
            DB::commit();
            return response()->json([
                'message' => 'success',
                'description' => 'An account has been created successfully.',
                'user' => $userCreated,
                'token' => $token
            ], 201);
        } catch (Exception $e) {
            DB::rollback();
            return response()->json([
                'message' => 'error',
                'description' => 'Can not create an account, please contact admin!',
                'errorsMessage' => $e->getMessage()
            ], 501);
        }
    }

    public function loginAccount(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'username' => 'required',
            'password' => 'required'
        ]);

        if ($validator->fails()) {
            return $this->sendErrorValidators('Invalid params', $validator->errors());
        }

        if (Auth::attempt(['username' => $request->username, 'password' => $request->password, 'account_role' => 'backoffice'])) {
            $user = Auth::user();

            if ($user->account_role !== 'backoffice') {
                return response()->json([
                    'message' => 'error',
                    'description' => 'You do not have permission to access this area.',
                ], 403);
            }
            $profile = AdminAccount::where('account_id', $user->id)->get()->first();
            if (!$profile) {
                return response()->json([
                    'message' => 'error',
                    'description' => 'Profile not found.',
                ], 404);
            }

            if ((int) $profile->admin_status !== 1 || $profile->admin_verify_at === null) {
                return response()->json([
                    'message' => 'error',
                    'description' => "You have no permission, please contact an admin!"
                ], 403);
            }

            $checkLangs = explode(",", $profile->language);
            if (count($checkLangs) < 1 && $checkLangs[0] === "") {
                return response()->json([
                    'message' => 'error',
                    'description' => "You are not assigned the language of responsibility."
                ], 403);
            }

            $token = $user->createToken('AuthToken')->plainTextToken;

            return response()->json([
                'message' => 'success',
                'description' => 'Login successful.',
                'user' => $user,
                'profile' => $profile,
                'token' => $token
            ], 200);
        } else {
            return response()->json([
                'message' => 'error',
                'description' => 'Invalid credentials.',
            ], 401);
        }
    }

    public function getAccountSettings()
    {
        try {
            $userAccount = $this->queryAccount(Auth::id());
            if (is_array($userAccount)) {
                $userAccount = !empty($userAccount) ? (object) $userAccount : null;
            }
            $langDefault = LanguageAvailable::where('default', 1)->first();
            if (!$langDefault) {
                return response()->json([
                    'message' => 'error',
                    'description' => 'Default language not found.',
                ], 404);
            }
            if (!$userAccount || $userAccount->admin_status !== 1) {
                return response()->json([
                    'message' => 'error',
                    'description' => "You have no permission, please contact an admin!"
                ], 403);
            }

            $menu = Category::where('is_menu', 1)
                ->where('language', 'en')
                ->where('cate_level', 0)
                ->get();

            $newMenu = [];

            if ($menu) {
                foreach ($menu as $m) {
                    array_push($newMenu, [
                        "id" => $m->id,
                        "name" => $m->cate_name,
                        "title" => $m->cate_title,
                        "language" => $m->language,
                        "isDynamicPage" => ($m->is_main_page) ? false : true,
                        "level" => $m->cate_level
                    ]);
                }

                $checkLangs = explode(",", $userAccount->language);
                $queryLangs = LanguageAvailable::whereIn('abbv_name', $checkLangs)->get()->all();
                $activateLanguage = "";
                foreach ($queryLangs as $lng) {
                    $activateLanguage .= ",{$lng->abbv_name}";
                }
                return response()->json([
                    'message' => 'success',
                    'data' => [
                        "adminId" => $userAccount->account_id,
                        "userRoleId" => $userAccount->admin_level,
                        "userRoleName" => $userAccount->role_name,
                        "activateLanguage" => $activateLanguage,
                        "defaultLanguage" => $langDefault->abbv_name,
                        "menu" => $newMenu,
                        "profile" => [
                            "username" => $userAccount->username,
                            "email" => $userAccount->email,
                            "displayName" => $userAccount->display_name,
                            "profileImage" => $userAccount->profile_image,
                            "coverImage" => $userAccount->cover_image,
                            "adminNote" => $userAccount->admin_note,
                        ]
                    ]
                ], 200);
            }
        } catch (Exception $e) {
            return response()->json([
                'message' => 'error',
                'description' => 'Can not get settings, Invalid tokens.',
                'errorsMessage' => $e->getMessage()
            ], 501);
        }
    }

    public function revokeAllToken()
    {
        try {
            $user = Auth::user();
            $user->tokens()->delete();
            return response()->json([
                'message' => 'success',
                'description' => 'All token have been revoked.',
            ]);
        } catch (Exception $e) {
            return response()->json([
                'message' => 'error',
                'description' => 'Can not revoke the tokens.',
                'errorsMessage' => $e->getMessage()
            ], 501);
        }
    }

    public function revokeCurrentToken(Request $request)
    {
        try {
            $request->user()->currentAccessToken()->delete();
            return response()->json([
                'message' => 'success',
                'description' => 'Current token has been revoked.'
            ]);
        } catch (Exception $e) {
            return response()->json([
                'message' => 'error',
                'description' => 'Can not revoke the current token.',
                'errorsMessage' => $e->getMessage()
            ], 501);
        }
    }

    public function revokeTokenByID(Request $request)
    {
        $validator = Validator::make($request->all(), ['token_id' => 'required']);
        if ($validator->fails()) {
            return $this->sendErrorValidators('Invalid params', $validator->errors());
        }

        $params = $request->all();
        try {
            $user = Auth::user();
            $user->tokens()->where('id', $params['token_id'])->delete();
            return response()->json([
                'message' => 'success',
                'description' => 'Current token has been revoked.'
            ]);
        } catch (Exception $e) {
            return response()->json([
                'message' => 'error',
                'description' => 'Can not revoke the current token.',
                'errorsMessage' => $e->getMessage()
            ], 501);
        }
    }

    public function updateVerifyEmail(Request $request)
    {
        $user = User::where('email', $request->email)->get()->first();

        if (!$user) {
            return response()->json([
                'message' => 'error',
                'description' => 'Invalid credentail!'
            ], 401);
        }

        $token = md5($user->account_role . $user->email . $user->id);

        if ($token !== $request->token) {
            return response()->json([
                'message' => 'error',
                'description' => 'Invalid credentail!',
                'token' => $token
            ], 401);
        }

        if ($user->email_verified_at !== null) {
            return response()->json([
                'message' => 'ok',
                'description' => 'You have been confirmed'
            ], 200);
        }

        try {

            User::where('id', $user->id)->update([
                'email_verified_at' => date('Y-m-d H:i:s')
            ]);

            return response()->json([
                'message' => 'success',
                'description' => 'Your email has been verified.'
            ], 200);
        } catch (Exception $e) {
            return response()->json([
                'message' => 'error',
                'description' => 'Something went wrong.',
                'errorsMessage' => $e->getMessage()
            ], 501);
        }
    }

    public function onSubmitForgetPassword(Request $request)
    {
        $user = User::where('email', $request->email)->first();
        if (!$user) {
            return response()->json([
                'message' => 'error',
                'description' => 'User not found!'
            ], 400);
        }
        $user_account = AdminAccount::where('account_id', $user->id)->first();
        $token = md5($user->account_role . $user->email . $user->id);
        DB::table('password_resets')->insert([
            'email' => $request->email,
            'token' => $token,
            'created_at' => Carbon::now()
        ]);
        $reset_token = DB::table('password_resets')->orderBy('created_at', 'DESC')->first();
        return $this->sendmailReset($user, $user_account, $reset_token);
    }

    public function onResetPassword(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'password' => 'required',
            'c_password' => 'required|same:password',
            'token' => 'required',
        ]);
        if ($validator->fails()) {
            return $this->sendErrorValidators('Invalid params', $validator->errors());
        }
        $params = $request->all();
        try {
            DB::beginTransaction();
            $reset_token = DB::table('password_resets')->where(['token' => $params['token']])->first();
            if (!$reset_token) {
                return response()->json([
                    'message' => 'error',
                    'description' => 'Token has been revoked!'
                ], 400);
            }
            $userAdmin = User::where(['email' => $reset_token->email])->first();
            if (!$userAdmin) {
                return response()->json([
                    'message' => 'error',
                    'description' => 'User not found!'
                ], 404);
            }
            $adminAccount = AdminAccount::where('account_id', $userAdmin->id)->first();
            if ($adminAccount->admin_status !== 1) {
                if (!$userAdmin) {
                    return response()->json([
                        'message' => 'error',
                        'description' => 'Account not active!'
                    ], 400);
                }
            }
            $userAdmin->password = bcrypt($params['password']);
            $userAdmin->save();
            DB::table('password_resets')->where(['token' => $params['token']])->delete();
            DB::commit();
            return response()->json([
                'message' => 'success',
                'description' => 'Your password has been changed!'
            ], 200);
        } catch (Exception $e) {
            DB::rollBack();
            return response()->json([
                'message' => 'error',
                'description' => 'Something went wrong.',
                'errorsMessage' => $e->getMessage()
            ], 501);
        }
    }

    /**
     * private function
     */
    private function sendmailReset($user, $user_account, $reset_token)
    {
        try {
            $infos = $this->getWebInfo('',);
            $webInfo = $this->infoSetting($infos);
            $url = array_filter(explode('/', URL::current()));
            // dd($user->account_role);
            Mail::to($user->email)->send(new SendMailResetPassword($user, $user_account, $reset_token, $webInfo, $url));
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
}
