<!DOCTYPE html>
<html lang="{{ $language }}" dir="{{ $language === 'ar' ? 'rtl' : 'ltr' }}">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>@yield('title', 'GREEN GLOBAL')</title>

    <link rel="icon" type="image/png" href="/favicon.png" />

    <!-- External Styles -->
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Kanit:wght@400;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />

    {{-- Font Arabic --}}
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Almarai:wght@300;400;700;800&family=Archivo:ital,wght@0,100..900;1,100..900&family=El+Messiri:wght@400..700&family=Noto+Sans+Thai:wght@100..900&display=swap"
        rel="stylesheet">

    <!-- App CSS & JS -->
    @vite(['resources/css/app.css', 'resources/js/app.js'])
</head>

<body class="{{ $language === 'ar' ? 'font-Almarai' : 'font-Kanit' }} flex flex-col min-h-screen relative">

    @include('layouts.loading')

    @include('layouts.navbar')

    @if (Request::is($language) || Request::is($language . '/'))
        @include('layouts.swiper')
    @endif

    <div class="flex-grow max-w-full overflow-hidden">
        @yield('content')
    </div>

    @include('layouts.footer')

    {{-- เซ็ตค่าภาษาจาก localStorage ใช้ชั่วคราว --}}
    <script>
        const lang = localStorage.getItem('selectedLanguage') || 'th';
        document.cookie = "selectedLanguage=" + lang + "; path=/";
    </script>

    <script>
        window.addEventListener('load', () => {
            const loadingScreen = document.getElementById('loading-screen');

            // รอ 3 วินาทีแล้วค่อยซ่อน loading screen
            setTimeout(() => {
                loadingScreen.classList.add('hidden');
            }, 100); // 100 มิลลิวินาที = 0.1 วินาที
        });

        // AOS.init();
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
