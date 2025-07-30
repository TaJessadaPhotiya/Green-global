<?php

namespace App\Http\Controllers\backoffice;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

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
}
