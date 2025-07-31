<?php

namespace App\Http\Controllers\backoffice;

use App\Http\Controllers\Controller;
use App\Models\LeaveMessages;
use Exception;
use Illuminate\Http\Request;

class MessagesController extends Controller
{
      public function index()
    {
        $messageall = $this->getMessagesAll();
        return response([
            'message' => 'ok',
            'status' => true,
            'description' => 'Get message account success',
            'messageall' => $messageall,
        ], 200);
    }

     public function destroyMessages($id)
    {
        try {
            $product = LeaveMessages::where('id', $id);
            $product->delete();

            return response([
                'message' => 'ok',
                'description' => 'Messages has been deleted successfully',
            ], 200);
        } catch (Exception $e) {
            return response([
                'message' => 'server error',
                'description' => 'Something went wrong.',
                'errorsMessage' => $e->getMessage()
            ], 500);
        }
    }

     /* Private Function */
    private function getMessagesAll()
    {
        $data = LeaveMessages::orderBy('updated_at', 'DESC')->get();

        return $data;
    }
}
