<!DOCTYPE html>
<html lang="en" xmlns:v="urn:schemas-microsoft-com:vml" xmlns:o="urn:schemas-microsoft-com:office:office">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <meta name="format-detection" content="telephone=no, date=no, address=no, email=no">
    <meta name="x-apple-disable-message-reformatting">
    <meta name="color-scheme" content="light dark">
    <meta name="supported-color-schemes" content="light dark">
    <title>Email title</title>
    <style>
        body {
            font-family: Arial, sans-serif !important;
            color: #333 !important;
            font-size: 16px;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        .email-container {
            max-width: 600px;
            margin: 20px auto;
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            border: #555;
        }

        .email-header {
            background: rgb(9, 140, 70);
            background: linear-gradient(135deg,
                    rgb(140, 226, 3) 4%,
                    rgb(39, 173, 57) 51%,
                    rgb(21, 99, 21) 100%);
            color: #ffffff;
            padding: 20px;
            text-align: center;
        }

        .email-header img {
            max-width: 200px;
            margin-bottom: 10px;
        }

        .email-body {
            padding: 20px;
        }

        .email-body h1 {
            font-size: 1.5em;
            margin: 0 0 15px;
            color: #222;
        }

        .email-body p {
            font-size: 16px;
            line-height: 1.5;
            margin: 0 0 10px;
            color: #555;
        }

        .email-body h3 {
            font-size: 16px;
        }

        .email-body .btn-link{
            text-align: center;
        }
        .email-body .btn {
            background-color: black;
            height: 3rem;
            cursor: pointer;
            text-align: center;
            padding-inline: 4rem;
            border-radius: 20px;
            padding: 0px 15px 0px 15px;
        }

        .email-body a {
            color: white !important;
            text-decoration: none;
        }

        .email-footer {
            background-color: #f4f4f4;
            text-align: center;
            padding: 10px;
            font-size: 14px;
            color: #777;
        }

        .email-footer a {
            color: #990905;
            text-decoration: none;
        }

        .h1 {
            color: #fff;
            font-size: 28px;
        }

        .p1 {
            width: 100%;
            margin: auto;
            margin-top: 1rem;
        }

        .p2 {
            width: 100%;
            margin: auto;
            margin-top: 0.5rem;
            margin-bottom: 1rem;
        }
    </style>
</head>
<body>
    <div class="email-container">
        <div class="email-header">
            <img src="<?php echo \Request::root(); ?>/{{ 'image/logo-GGS.png 1.png' }}" alt="THE GGS">
            <div class="h1">Reset Password</div>
        </div>
        <div class="email-body">
            <h1>Hello you {{ $user_account->first_name }} {{ $user_account->last_name }},</h1>
            <p>You have requested a password reset for your THE Green Global account recently.</p>
            <p>If you did not request a password reset, please ignore this email
                or reply to let us know. This password reset was created when
                {{ date('H:i d/m/Y', strtotime($reset_token->created_at)) }}.
            </p>
            <h3>With respect</h3>
            <p><strong>{{ $web_info->detail->webname->value }}</strong></p>
            <div class="btn-link">
                <button type="button" class="btn"><a href="{{ $linkReset }}">Reset Password</a></button>
            </div>
        </div>
        <div class="email-footer">
            <div class="p1">&copy; 2024 THE Green Global. All rights reserved.</div>

        </div>
    </div>
</body>

</html>
