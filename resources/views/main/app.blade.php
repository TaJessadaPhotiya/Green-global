<?php
    $language = $_COOKIE['selectedLanguage'];
    // echo $language;
    if ($language === 'AR') {
        echo '<!DOCTYPE html> <html lang="en" dir="rtl">';
    } else {
        echo '<!DOCTYPE html> <html lang="en" dir="ltr">';
    }
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    {{-- <title>@yield('title', 'THEONE BBGUN')</title> --}}
    <link rel="icon" type="image/svg+xml" href="" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css">
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />

    {{-- Font --}}
    <link
        href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Rubik+Vinyl&display=swap"
        rel="stylesheet">

    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    @vite('resources/css/app.css')
    @vite(['resources/css/app.css', 'resources/js/app.js'])
</head>

<body class="font-poppins flex flex-col min-h-screen relative ">
    <img class="fixed bottom-0 z-20" src="/image/Rectangle 419.png" alt="">

    @include('layouts.loading')

    @include('layouts.navbar')

    @include('layouts.swiper')

    <div class="flex-grow max-w-full overflow-hidden ">
        @yield('content')
    </div>

    {{-- @include('layouts.footer') --}}


    {{-- เซ็ตค่าภาษาจาก localStorage ใช้ชั่วคราว --}}
    <script>
        const lang = localStorage.getItem('selectedLanguage') || 'EN';
        document.cookie = "selectedLanguage=" + lang + "; path=/";
    </script>

    <script>
        // ซ่อนหน้าจอโหลดเมื่อโหลดหน้าเสร็จ
        window.addEventListener('load', () => {
            const loadingScreen = document.getElementById('loading-screen');
            loadingScreen.classList.add('hidden'); // ซ่อนหน้าจอโหลด
        });

        AOS.init();
    </script>

    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/alpinejs@3.x.x/dist/cdn.min.js" defer></script>

    <script>
        AOS.init({
            disable: window.innerWidth < 1280, // ปิดใช้งาน AOS บนหน้าจอมือถือ
            offset: 0,
            once: true,
        });
    </script>
    @yield('scripts')
</body>

</html>
