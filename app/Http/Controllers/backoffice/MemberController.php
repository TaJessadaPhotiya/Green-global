<?php

namespace App\Http\Controllers\backoffice;

use App\Http\Controllers\Controller;
use App\Models\MemberAccount;
use App\Models\MemberProfiles;
use App\Models\User;
use Carbon\Carbon;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Mail;
use App\Mail\SendMailStartMember;

class MemberController extends BaseController
{
    public function indexmember(Request $request)
    {
        $member = $this->getMemberAll();
        $checkMember = $this->getMemberCheck();
        return response([
            'message' => 'ok',
            'status' => true,
            'description' => 'Get member account success',
            'member' => $member,
            'check' => $checkMember
        ], 200);
    }

    public function updatemember(Request $request)
    {
        $this->getAuthUser();
        $params = $request->all();
        $data_expire = Carbon::now();

        $validator = Validator::make($request->all(), [
            'member_id' => 'numeric|required',
            'member_status' => 'required',
            'member_expire' => 'numeric'
        ]);

        if ($validator->fails()) {
            return $this->sendErrorValidators('Invalid params', $validator->errors());
        }
        try {
            DB::beginTransaction();
            $memberUpdate = MemberAccount::findOrFail($params['member_id']);
            $memberUser =  User::findOrFail( $memberUpdate->users_id);
            // dd(  $memberUser->username);
            $date_expired = $data_expire->addDays($params['member_expire']);
            $values = [
                "member_status" => $params['member_status'],
                "member_note" => $params['member_note'],
                "member_verify_at" => $memberUpdate->member_verify_at === null ? date('Y-m-d H:i:s') : $memberUpdate->member_verify_at,
                "member_expire_at" => $date_expired,
                "updated_at" => date('Y-m-d H:i:s')
            ];
            MemberAccount::where('id', $params['member_id'])->update($values);

             Mail::to($memberUser->email)->send(new SendMailStartMember($memberUser, ));
            DB::commit();

            return response([
                'message' => 'ok',
                'status' => true,
                'description' => 'member has been updated successfully',
                'check' => $this->getMemberCheck()
            ], 200);
        } catch (Exception $e) {
            DB::rollBack();
            return response([
                'message' => 'server error',
                'description' => 'Something went wrong.',
                'errorsMessage' => $e->getMessage()
            ], 501);
        }
    }

    public function destroymember($id)
    {
        $this->getAuthUser();
        // dd($id);
        try {
            $Account = MemberAccount::findOrFail($id);
            $user = User::where('id', $Account->users_id);
            $user->delete();

            $Member = MemberProfiles::where('id', $Account->profiles_id);
            $Member->delete();

            $Account->delete();

            return response([
                'message' => 'ok',
                'status' => true,
                'description' => 'Merber has been deleted successfully',
            ], 200);
        } catch (Exception $e) {
            return response([
                'message' => 'server error',
                'status' => true,
                'description' => 'Something went wrong.',
                'errorsMessage' => $e->getMessage()
            ], 500);
        }
    }

    public function destroyuser($id)
    {
        $user = User::where('id', $id);
        $user->delete();

        return response([
            'message' => 'ok',
            'status' => true,
            'description' => 'user has been deleted successfully',
        ], 200);
    }

    /* Private Function */
    private function getMemberAll()
    {
        $data = MemberAccount::select(
            'member_accounts.id',
            'member_accounts.users_id',
            'member_accounts.profiles_id',
            'member_accounts.member_status AS status',
            'member_accounts.member_verify_at',
            'member_accounts.member_expire_at',
            'users.email',
            'member_profiles.display_name',
            'member_profiles.first_name AS firstname',
            'member_profiles.last_name AS lastname',
            'member_profiles.phone_number',
            'member_profiles.country'
            )
            ->join('users', 'member_accounts.users_id', '=', 'users.id')
            ->join('member_profiles', 'member_accounts.profiles_id', '=', 'member_profiles.id')
            ->get();
        return $data;
    }

    private function getMemberCheck()
    {
        $memberWaitactive = MemberAccount::where('member_status', '=', 0)->count();

        $memberExpire = MemberAccount::where(function ($query) {
            $query->where('member_expire_at', '<', NOW())
                ->orWhere('member_expire_at', '<=', Carbon::now()->addDays(3));
        })->count();
        return compact('memberWaitactive', 'memberExpire');
    }
}
