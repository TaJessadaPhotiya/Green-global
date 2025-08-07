<style>
    .ham {
        cursor: pointer;
        -webkit-tap-highlight-color: transparent;
        transition: transform 400ms;
        user-select: none;
    }

    .hamRotate.active {
        transform: rotate(45deg);
    }

    .line {
        fill: none;
        transition: stroke-dasharray 400ms, stroke-dashoffset 400ms;
        stroke: #e4b210;
        stroke-width: 5.5;
        stroke-linecap: round;
    }

    .ham1 .top {
        stroke-dasharray: 40 139;
    }

    .ham1 .bottom {
        stroke-dasharray: 40 180;
    }

    .ham1.active .top {
        stroke-dashoffset: -98px;
    }

    .ham1.active .bottom {
        stroke-dashoffset: -138px;
    }

    .sidebar {
        position: fixed;
        top: 55px;
        /* right: 0; */
        width: 300px;
        height: 100vh;
        background: #fff;
        color: white;
        visibility: hidden;
        opacity: 0;
        transform: translateY(-20px);
        transition: opacity 0.4s ease, transform 0.4s ease, visibility 0s linear 0.4s;
        z-index: 100;
        flex-direction: column;
    }

    @media (max-width: 640px) {
        .sidebar {
            width: 100%;
        }
    }

    .sidebar.active {
        visibility: visible;
        opacity: 1;
        transform: translateY(0);
        transition: opacity 0.4s ease, transform 0.4s ease;
    }

    @media (min-width: 1300px) {
        .sidebar {
            display: none;
        }
    }

    .sidebar a {
        display: flex;
        align-items: center;
        gap: 10px;
        color: #098C46;
        text-decoration: none;
        font-size: 14px;
        transition: background 0.3s;
    }

    .sidebar img {
        width: 20px;
        height: auto;
    }
</style>

@php
    $status = 0;
@endphp

<div>
    <svg class="ham hamRotate ham1" viewBox="0 0 100 100" width="40" onclick="toggleSidebar()">
        <path class="line top"
            d="m 30,33 h 40 c 0,0 9.044436,-0.654587 9.044436,-8.508902 0,-7.854315 -8.024349,-11.958003 -14.89975,-10.85914 -6.875401,1.098863 -13.637059,4.171617 -13.637059,16.368042 v 40" />
        <path class="line middle" d="m 30,50 h 40" />
        <path class="line bottom"
            d="m 30,67 h 40 c 12.796276,0 15.357889,-11.717785 15.357889,-26.851538 0,-15.133752 -4.786586,-27.274118 -16.667516,-27.274118 -11.88093,0 -18.499247,6.994427 -18.435284,17.125656 l 0.252538,40" />
    </svg>

    <div class="sidebar bg-cover bg-center bg-no-repeat {{ $language == 'ar' ? 'left-0' : 'right-0' }}"
        style="background-image: url('/image/Rectangle 361.png')">
        <div class="{{ Request::is("$language") ? 'border-l-4 border-[#E9C713] ' : '' }} ">
            <a class="drop-shadow-md border-y border-gray-400/20 px-6 py-4 w-full flex justify-center {{ Request::is("$language") ? 'bg-gray-300/10 ' : '' }} "
                href="/<?= $language ?>/">
                HOME
            </a>
        </div>
        <div class="{{ Request::is("$language/vision") ? 'border-l-4 border-[#E9C713] ' : '' }}">
            <a class="drop-shadow-md border-b border-gray-400/20 px-6 py-4 w-full flex justify-center {{ Request::is("$language/vision") ? 'bg-gray-300/10 ' : '' }} "
                href="/<?= $language ?>/vision">
                VISION
            </a>
        </div>
        <div class="{{ Request::is("$language/news") ? 'border-l-4 border-[#E9C713] ' : '' }}">
            <a class="drop-shadow-md border-b border-gray-400/20 px-6 py-4 w-full flex justify-center {{ Request::is("$language/news") ? 'bg-gray-300/10 ' : '' }} "
                href="/<?= $language ?>/news">
                NEWS
            </a>
        </div>
        <div
            class="{{ Request::is("$language/product") || Request::is('product-detail*') ? 'border-l-4 border-[#E9C713] ' : '' }}">
            <a class="drop-shadow-md border-b border-gray-400/20 px-6 py-4 w-full flex justify-center {{ Request::is("$language/product") || Request::is('product-detail*') ? 'bg-gray-300/10 ' : '' }} "
                href="/<?= $language ?>/product">
                PRODUCT
            </a>
        </div>
        <div class="{{ Request::is("$language/term") ? 'border-l-4 border-[#E9C713] ' : '' }}">
            <a class="drop-shadow-md border-b border-gray-400/20 px-6 py-4 w-full flex justify-center {{ Request::is("$language/term") ? 'bg-gray-300/10 ' : '' }} "
                href="/<?= $language ?>/term">
                TERM
            </a>
        </div>
        <div class="{{ Request::is("$language/contact") ? 'border-l-4 border-[#E9C713] ' : '' }}">
            <a class="drop-shadow-md border-b border-gray-400/20 px-6 py-4 w-full flex justify-center {{ Request::is("$language/contact") ? 'bg-gray-300/10' : '' }} "
                href="/<?= $language ?>/contact">
                CONTACT US
            </a>
        </div>

        @if ($status == 1)
            {{-- Member --}}
            <div class="relative border-b py-4">
                <button id="myMemberDropdownBtn1"
                    class=" items-center justify-center w-full rounded-md text-[#098C46] hover:text-yellow-500 transition duration-200 drop-shadow-sm text-[14px] font-medium "
                    onclick="toggleMemberDropdown1()">
                    MEMBER
                </button>

                <div id="myMemberDropdownMenu1"
                    class="hidden absolute top-full left-0 z-30 w-full mx-auto bg-white shadow-lg">
                    <div class="flex flex-col items-center justify-center w-full">
                        <a href="/{{ $language }}/profile"
                            class="flex justify-center w-full py-3 text-sm font-medium bg-gray-300/20 text-gray-700 hover:text-yellow-500 transition duration-200 border-b border-t">
                            Profile
                        </a>
                        <a href="#"
                            class="flex justify-center w-full py-3 text-sm font-medium bg-gray-300/20 text-gray-700 hover:text-yellow-500 transition duration-200">
                            Sign out
                        </a>
                    </div>
                </div>
            </div>
        @else
            {{-- Register --}}
            <div class="relative border-b py-4 ">
                <button id="myMemberDropdownBtn1"
                    class=" items-center justify-center w-full rounded-md text-[#098C46] hover:text-yellow-500 transition duration-200 drop-shadow-sm text-[14px] font-medium "
                    onclick="toggleMemberDropdown1()">
                    REGISTER
                </button>

                <div id="myMemberDropdownMenu1"
                    class="hidden absolute top-full left-0 z-30 w-full mx-auto bg-white shadow-lg">
                    <div class="flex flex-col items-center justify-center w-full">
                        <a href="/{{ $language }}/login"
                            class="flex justify-center w-full py-3 text-sm font-medium bg-gray-300/20 text-gray-700 hover:text-yellow-500 transition duration-200 border-b border-t">
                            Sign In
                        </a>
                        <a href="/{{ $language }}/register"
                            class="flex justify-center w-full py-3 text-sm font-medium bg-gray-300/20 text-gray-700 hover:text-yellow-500 transition duration-200">
                            Register
                        </a>
                    </div>
                </div>
            </div>
        @endif

        <!-- Language Dropdown อยู่ตรงกลางแนวนอน -->
        <div class="relative mx-auto mt-6 w-fit" id="myLangDropdown">
            <button id="myLangDropdownBtn"
                class="flex justify-between w-[94px] rounded-md border py-1.5 px-4 shadow-sm bg-slate-100">
                <img id="myLangSelectedFlag" src="/image/TH.png" class="h-5 min-w-[30px]" alt="flag" />
                <svg id="myLangIcon" class="transition-transform duration-300" xmlns="http://www.w3.org/2000/svg"
                    width="20" height="20" fill="black" viewBox="0 0 24 24">
                    <path d="M19 9l-7 7-7-7" />
                </svg>
            </button>

            <div id="myLangDropdownMenu"
                class="absolute top-full -left-2.5 w-[113px] rounded-md shadow-lg bg-white hidden mt-2 z-50">
                <div role="menu" aria-orientation="vertical" aria-labelledby="options-menu">
                    <button onclick="selectLang('TH')"
                        class="flex items-center gap-2 w-full px-4 py-2 text-sm font-medium text-gray-700 hover:bg-gray-200 transition duration-200 rounded-t-md">
                        <img src="/image/TH.png" class="min-h-5 min-w-7"> ไทย
                    </button>
                    <button onclick="selectLang('EN')"
                        class="flex items-center gap-2 w-full px-4 py-2 text-sm font-medium text-gray-700 hover:bg-gray-200 transition duration-200">
                        <img src="/image/EN.png" class="min-h-5 min-w-7"> English
                    </button>
                    <button onclick="selectLang('AR')"
                        class="flex items-center gap-2 w-full px-4 py-2 text-sm font-medium text-gray-700 hover:bg-gray-200 transition duration-200 rounded-b-md">
                        <img src="/image/AR.png" class="min-h-5 min-w-7"> Arabic
                    </button>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    function toggleSidebar() {
        const sidebar = document.querySelector('.sidebar');
        const ham = document.querySelector('.ham');

        if (sidebar.classList.contains('active')) {
            sidebar.classList.remove('active');
            setTimeout(() => {
                sidebar.style.visibility = "hidden";
            }, 400);
        } else {
            sidebar.style.visibility = "visible";
            sidebar.classList.add('active');
        }

        ham.classList.toggle('active');
    }

    // ปิด Sidebar เมื่อคลิกข้างนอก
    window.addEventListener('click', function(event) {
        const sidebar = document.querySelector('.sidebar');
        const ham = document.querySelector('.ham');

        if (sidebar.classList.contains('active') && !sidebar.contains(event.target) && !ham.contains(event
                .target)) {
            sidebar.classList.remove('active');
            setTimeout(() => {
                sidebar.style.visibility = "hidden";
            }, 400);
            ham.classList.remove('active');
        }
    });
</script>

<script>
    function toggleMemberDropdown1() {
        const menu = document.getElementById("myMemberDropdownMenu1");
        menu.classList.toggle("hidden");
    }

    document.addEventListener("click", function(event) {
        const btn = document.getElementById("myMemberDropdownBtn1");
        const menu = document.getElementById("myMemberDropdownMenu1");

        if (!btn.contains(event.target) && !menu.contains(event.target)) {
            menu.classList.add("hidden");
        }
    });
</script>

<script>
    document.addEventListener("DOMContentLoaded", () => {
        const myLangDropdownBtn = document.getElementById("myLangDropdownBtn");
        const myLangDropdownMenu = document.getElementById("myLangDropdownMenu");
        const myLangSelectedFlag = document.getElementById("myLangSelectedFlag");
        const myLangIcon = document.getElementById("myLangIcon");

        myLangDropdownBtn.addEventListener("click", () => {
            myLangDropdownMenu.classList.toggle("hidden");
            myLangIcon.classList.toggle("rotate-180");
        });

        window.selectLang = function(lang) {
            localStorage.setItem("selectedLanguage", lang);
            updateLanguageUI(lang);
            myLangDropdownMenu.classList.add("hidden");
            myLangIcon.classList.remove("rotate-180");

            const currentPath = window.location.pathname;
            const newLang = lang.toLowerCase();

            const pathParts = currentPath.split('/');
            if (['th', 'en', 'ar'].includes(pathParts[1])) {
                pathParts[1] = newLang;
            } else {
                pathParts.splice(1, 0, newLang);
            }

            const newPath = pathParts.join('/');
            const newUrl = newPath + window.location.search;

            window.location.href = newUrl;
        };

        function updateLanguageUI(lang) {
            const flagSrc = "/image/" + lang + ".png";
            const langText = lang === "TH" ? "ไทย" : lang === "EN" ? "English" : "Arabic";

            myLangSelectedFlag.src = flagSrc;

            // ปรับข้อความถ้าจำเป็น
            if (myLangDropdownBtn.childNodes[1] && myLangDropdownBtn.childNodes[1].nodeType === 3) {
                myLangDropdownBtn.childNodes[1].textContent = langText;
            }
        }

        document.addEventListener("click", (e) => {
            if (!document.getElementById("myLangDropdown").contains(e.target)) {
                myLangDropdownMenu.classList.add("hidden");
                myLangIcon.classList.remove("rotate-180");
            }
        });

        const savedLang = localStorage.getItem("selectedLanguage") || "TH";
        updateLanguageUI(savedLang);
    });
</script>
