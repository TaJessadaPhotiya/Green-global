<?php

namespace App\Http\Controllers\backoffice;

use App\Http\Controllers\Controller;
use App\Models\MemberAccount;
use App\Models\User;
use Carbon\Carbon;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;

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
            $date_expired = $data_expire->addDays($params['member_expire']);
            $values = [
                "member_status" => $params['member_status'],
                "member_note" => $params['member_note'],
                "member_verify_at" => $memberUpdate->member_verify_at === null ? date('Y-m-d H:i:s') : $memberUpdate->member_verify_at,
                "member_expire_at" => $date_expired,
                "updated_at" => date('Y-m-d H:i:s')
            ];
            MemberAccount::where('id', $params['member_id'])->update($values);
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
        try {
            $user = User::where('id', $id);
            $user->delete();

            $userMember = MemberAccount::where('account_id', $id);
            $userMember->delete();

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

     public function destroyuser($id){
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
        $data = MemberAccount::orderBy('updated_at', 'DESC')->get();
        return $data;
    }

    private function getMemberCheck()
    {
        $memberWaitactive = MemberAccount::where('member_status','=', 0)->count();

        $memberExpire = MemberAccount::where(function ($query) {
            $query->where('member_expire_at', '<', NOW())
                ->orWhere('member_expire_at', '<=', Carbon::now()->addDays(3));
        })->count();
        return compact('memberWaitactive','memberExpire');
    }
}
