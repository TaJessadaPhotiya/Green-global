<?php

namespace App\Http\Controllers\backoffice;

use App\Http\Controllers\Controller;
use App\Models\User;
use App\Models\ProductCate;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class BaseController extends Controller
{
    public function sendErrorValidators($message, $errorMessages)
    {
        return response()->json([
            'status' => false,
            'message' => $message,
            'errorMessage' => $errorMessages
        ], 422);
    }

    public function queryAccount($id)
    {
        return User::join('admin_accounts as ac', 'users.id', '=', 'ac.account_id')
            ->join('admin_roles', 'admin_roles.id', '=', 'ac.admin_level')
            ->where('users.id', $id)
            ->select(
                'users.email',
                'users.username',
                'admin_roles.role_name',
                'ac.profile_image',
                'ac.cover_image',
                'ac.admin_note',
                'ac.account_id',
                'ac.display_name',
                'ac.admin_level',
                'ac.admin_status',
                'ac.language',
                'ac.admin_verify_at',
                'ac.updated_at'
            )->first();
    }

    public function getAuthUser($level = 0)
    {
        $auth = $this->queryAccount(Auth::user()->id);
        if (!$auth || $auth->admin_status !== 1) {
            return response()->json([
                'message' => 'error',
                'description' => "You have no permission"
            ], 409);
        }

        if ($level > 0) {
            if ($auth->admin_level > $level) {
                return response()->json([
                    'message' => 'error',
                    'description' => "You have no permission"
                ], 409);
            }
        }
        return $auth;
    }

    public function updatePriority($table, $priority, $column = 'priority')
    {
        $duplicatePriority = DB::table($table)
            ->where($column, '=', $priority)
            ->first();

        if ($duplicatePriority) {
            // update priority
            DB::table($table)
                ->where($column, '>=', $priority)
                ->increment($column, 1);
        }
    }

    public function getProductCate($language)
    {
        $data = ProductCate::where(function ($query) use (&$language) {
            $query->where('language', $language)
                ->orWhere('defaults', 1);
        })
            ->where('display', 1)
            ->groupBy('id')
            ->orderBy('updated_at', 'DESC')
            ->get();

        return $data;
    }
}
