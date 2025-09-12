<?php

namespace App\Http\Controllers;

use App\Models\LanguageConfig;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use App\Models\MemberAccount;
use App\Models\MemberOccupation;
use App\Models\MemberProfiles;
use App\Models\User;
use Illuminate\Database\QueryException;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Mail;
use App\Mail\ConfirmMember;
use App\Mail\MailableNewMember;

class RegisterController extends Controller
{
    public function index($language)
    {
        $occupations = DB::table('occupations_configs')->select('id', 'name')->get()->toArray();
        $countries = DB::table('countries_configs')->select('id', 'english')->get()->toArray();
        $lang_config_register = [];
        $lang_config = LanguageConfig::where(['language' => $language, 'page_control' => 8])->orderBy('id', 'DESC')->get();
        if (!empty($lang_config)) {
            foreach ($lang_config as $key => $value) {
                $lang_config_register[$value->param] = $value->title;
            }
        }
        // dd($lang_config_register);
        return view('pages.register.register', compact('occupations', 'countries', 'lang_config_register'));
    }

    public function store($language, Request $request)
    {
        // dd($request->all());
        // Validate and store the registration data
        $validator = Validator::make($request->all(), [
            'username' => 'required|string|max:255',
            'firstname' => 'required|string|max:255',
            'lastname' => 'required|string|max:255',
            'telephone' => 'required|string|max:20',
            'email' => 'required|string|email|max:255',
            'password' => 'required|string|min:6|confirmed',
            'password_confirmation' => 'required|string|min:6',
            'selectedValues' => 'required|array',
            'occupationsOther' => 'nullable|string|max:255',
            'country' => 'required|string|max:255',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'status' => false,
                'message' => 'Invalid params',
                'errorMessage' => $validator->errors()
            ], 422);
        }

        try {
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


            $infos = $this->getWebInfo('', );
            $webInfo = $this->infoSetting($infos);
            Mail::to($request->input('email'))->send(new ConfirmMember($memberPro, $webInfo));
            // Mail::to($webInfo->contact->email->value)->send(new MailableNewMember($memberPro, $webInfo));
// dd('gogo');
            DB::commit();

            return response()->json([
                'success' => 'Registration successful. Please log in.',
                'url' => $language . '/login',
            ]);

        } catch (QueryException $e) {
            $errorCode = $e->errorInfo[1];
            // dd($errorCode);
            if ($errorCode == 1062) {
                // ข้อผิดพลาด 1062 คือ Duplicate entry (ข้อมูลซ้ำ)
                // ส่งข้อความกลับไปที่หน้าบ้านคล้ายกับการ validate
                return response()->json([
                    'message' => 'server error',
                    'description' => 'Something went wrong.',
                    'errorsMessage' => 'The email already exists. Please use a different one.',
                    'errorCode' => $errorCode,
                ], 422);
            } else {
                // จัดการกับข้อผิดพลาดอื่นๆ
                return response()->json([
                    'message' => 'server error',
                    'description' => 'Something went wrong.',
                    'errorsMessage' => $e->getMessage(),
                    'errorCode' => $errorCode,
                ], 422);
            }
        }
    }
}
