<?php

namespace App\Http\Controllers;

use App\Models\WebInfo;
use Illuminate\Http\Request;

class ContactController extends Controller
{
    public function index($language)
    {

        $contactData = WebInfo::where('info_type', '2')
            ->where('language', $language)
            ->orderBy('info_priority', 'ASC')
            ->get()
            ->toArray();

        $rqCode = WebInfo::where('info_param', 'image_2')
            ->where('language', $language)
            ->first();
        $image1 = WebInfo::where('info_param', 'image_3')
            ->where('language', $language)
            ->first();
        $image2 = WebInfo::where('info_param', 'image_4')
            ->where('language', $language)
            ->first();
        $image3 = WebInfo::where('info_param', 'image_5')
            ->where('language', $language)
            ->first();

        $contactImage = collect([
            'qrcode' => $rqCode,
            'image1' => $image1,
            'image2' => $image2,
            'image3' => $image3
        ])->toArray();

        // dd( $contactImage);
        return view('pages.contact.contact', compact('contactData', 'contactImage'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|email|max:255',
            'message' => 'required|string|max:1000',
        ]);

        // Here you can handle the contact form submission, e.g., save to database or send an email
        // For now, we will just return a success message
        return response()->json(['message' => 'Thank you for your message! We will get back to you soon.'], 200);
    }
}
