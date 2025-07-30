<?php

namespace App\Http\Controllers\backoffice;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use App\Models\AdminAccount;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use Exception;
use App\Models\User;
use Illuminate\Support\Facades\Hash;

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
}
