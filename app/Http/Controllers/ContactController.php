<?php

namespace App\Http\Controllers;

use App\Models\LanguageConfig;
use App\Models\WebInfo;
use App\Models\LeaveMessages;
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
            ->where('defaults', 1)
            ->first();
        $image1 = WebInfo::where('info_param', 'image_3')
            ->where('defaults', 1)
            ->first();
        $image2 = WebInfo::where('info_param', 'image_4')
            ->where('defaults', 1)
            ->first();
        $image3 = WebInfo::where('info_param', 'image_5')
            ->where('defaults', 1)
            ->first();

        $contactImage = collect([
            'qrcode' => $rqCode,
            'image1' => $image1,
            'image2' => $image2,
            'image3' => $image3
        ])->toArray();

        $lang_config_contact = [];
        $lang_config = LanguageConfig::where(['language' => $language, 'page_control' => 6])->orderBy('id', 'DESC')->get();
        if (!empty($lang_config)) {
            foreach ($lang_config as $key => $value) {
                $lang_config_contact[$value->param] = $value->title;
            }
        }

        // dd( $lang_config_contact);
        return view('pages.contact.contact', compact('contactData', 'contactImage', 'lang_config_contact'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|email|max:255',
            'message' => 'required|string|max:1000',
            'phone' => 'required|string|max:20',
        ]);

        $messages = new LeaveMessages;
        $messages->fullname = $request->input('name');
        $messages->email = $request->input('email');
        $messages->phone_number = $request->input('phone');
        $messages->message = $request->input('message');
        $messages->language = $request->input('language');
        $messages->save();

        // Here you can handle the contact form submission, e.g., save to database or send an email
        // For now, we will just return a success message
        return response()->json([
            'message' => 'Thank you for your message! We will get back to you soon.'
        ], 200);
    }
}
