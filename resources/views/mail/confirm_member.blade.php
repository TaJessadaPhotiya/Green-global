<!DOCTYPE html>
<html lang="en" xmlns:v="urn:schemas-microsoft-com:vml" xmlns:o="urn:schemas-microsoft-com:office:office">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <meta name="format-detection" content="telephone=no, date=no, address=no, email=no" />
    <meta name="x-apple-disable-message-reformatting" />
    <meta name="color-scheme" content="light dark" />
    <meta name="supported-color-schemes" content="light dark" />
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
            font-size: 1em;
            line-height: 1.5;
            margin: 0 0 10px;
            color: #555;
        }

        .email-body h3 {
            font-size: 1.5em;
            margin: 0 0 15px;
            color: #222;
            text-align: center;
        }

        .email-footer {
            background-color: #f4f4f4;
            text-align: center;
            padding: 10px;
            font-size: 0.9em;
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
            <img src="<?php echo \Request::root(); ?>/{{ 'image/logo-GGS.png 1.png' }}" alt="THE GGS" /> {{-- $web_info->detail->image_1->link --}}
            <div class="h1">Registration Successful</div>
        </div>

        <div class="email-body">
            <h1> Welcome {{ $data->display_name }}</h1>

            <h3><a href="http://127.0.0.1:8000/th/login">Login</a></h3>

        </div>

        <div class="email-footer">
            <div class="p1">&copy; 2025 Green Global. All rights reserved.</div>
            {{-- <div class="p2">
                <a href="https://www.youtube.com/@theonebbgun1300">Subscribe</a> |
                <a href="https://theonebbgun.com/">THE OnE BBGUN</a>
            </div> --}}
        </div>
    </div>
</body>

</html>
