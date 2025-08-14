{{-- Mock ข้อมูลภาษา --}}
@php
    $website['language'] = [
        (object) [
            'value' => 'th',
            'name' => 'Thai',
            'abbv_name' => 'th',
            'flag' => 'image/TH.png',
        ],
        (object) [
            'value' => 'en',
            'name' => 'English',
            'abbv_name' => 'en',
            'flag' => 'image/EN.png',
        ],
        (object) [
            'value' => 'ar',
            'name' => 'Arabic',
            'abbv_name' => 'ar',
            'flag' => 'image/AR.png',
        ],
    ];
    // dd($menuChildren);
@endphp

{{-- เช็คสถาณ Login --}}
@php
    $status = 0;
@endphp

<nav class="sticky top-0 z-20 bg-[#E9C713] ">
    <div class="relative bg-white xl:mt-3 mt-1.5 ">
        {{-- style="box-shadow: rgba(0, 0, 0, 0.19) 0px 10px 20px, rgba(0, 0, 0, 0.23) 0px 6px 6px;" --}}

        <img class=" {{ $language == 'ar' ? 'right-0 scale-x-[-1]' : 'left-0' }} absolute top-full w-[302px] max-2xl:hidden z-20"
            src="/image/Top-Line - Copy (3).png" alt="">

        <img class=" {{ $language == 'ar' ? 'right-0 scale-x-[-1]' : 'left-0' }} absolute top-full w-full 2xl:hidden"
            src="/image/Top-Line - Copy (4).png" alt="">

        <img class="absolute top-full left-0 w-full h-[14px] overflow-hidden max-2xl:hidden "
            src="/image/Top-Line - Copy (2).png" alt="">
        <div
            class="flex items-center max-xl:justify-between max-xl:py-1 max-w-[1300px] xl:h-[80px] h-[55px] mx-auto 2xl:px-0 xl:px-[4rem] px-4 drop-shadow-md">
            <a href="/<?= $language ?>/">
                <img class=" xl:w-[75px] w-[50px] h-auto" src="/image/logo-GGS.png 1.png" alt=""
                    data-aos="fade-right" data-aos-duration="1200">
            </a>

            <div class="max-xl:hidden flex items-center justify-end w-full gap-7 mt-1" data-aos="fade-left"
                data-aos-duration="1200">
                @foreach ($mainMenu as $menu)
                    <a class="text-[18px] font-medium text-[#098C46] hover:text-yellow-500 transition duration-200 drop-shadow-sm border-b-2 border-transparent
                    {{ Request::is($language.$menu->cate_url) ? 'border-yellow-500 font-[700]' : '' }}"
                        href={{ $menu->cate_redirect }}>{{ $menu->cate_title }}</a>
                @endforeach
                @if ($menuChildren)
                    @if (Auth::check())
                        {{-- Member --}}
                        <div class="relative inline-block text-left">
                            <button id="dropdownBtn"
                                class="inline-flex items-center justify-center w-full rounded-md text-[#098C46] hover:text-yellow-500 transition duration-200 drop-shadow-sm text-[18px] font-medium"
                                onclick="toggleDropdown()">
                                <img class="w-3.5 h-3.5 mr-1.5" src="/icons/Vector.png" alt="">
                                {{ $menuChildren['member']->cate_title }}
                                <svg id="memberIcon" class="ml-1 transition-transform duration-300"
                                    xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor"
                                    viewBox="0 0 24 24">
                                    <path d="M19 9l-7 7-7-7" />
                                </svg>
                            </button>

                            <div id="dropdownMenu"
                                class="hidden absolute right-0 z-10 mt-4 w-[90px] origin-top-right rounded-md bg-white shadow-lg ring-1 ring-black ring-opacity-5 focus:outline-none">
                                <div>
                                    <a href="/{{ $language }}/profile"
                                        class="block px-4 py-2 text-sm font-medium text-gray-700 hover:text-white hover:bg-[#008C46] rounded-t-md transition duration-200">
                                        {{ $menuChildren['member'][0]->childrenData->cate_title }}</a>
                                    <a href="#"
                                        class="block px-4 py-2 text-sm font-medium text-gray-700 hover:text-white hover:bg-[#008C46] rounded-b-md transition duration-200">
                                        Sign out</a>
                                </div>
                            </div>
                        </div>
                    @else
                        {{-- Register --}}
                        <div class="relative inline-block text-left">
                            <button id="dropdownBtn"
                                class="inline-flex items-center justify-center w-full rounded-md text-[#098C46] hover:text-yellow-500 transition duration-200 drop-shadow-sm text-[18px] font-medium"
                                onclick="toggleDropdown()">
                               {{ $menuChildren['register']->cate_title }}
                            </button>

                            <div id="dropdownMenu"
                                class="hidden absolute right-0 z-10 mt-4 w-[90px] origin-top-right rounded-md bg-white shadow-lg ring-1 ring-black ring-opacity-5 focus:outline-none">
                                <div>
                                    @foreach ($menuChildren['register']->childrenData as $children)
                                    <a href={{ $children->cate_redirect }}
                                        class="block px-4 py-2 text-sm font-medium text-gray-700 hover:text-white hover:bg-[#008C46] rounded-t-md transition duration-200">
                                        {{ $children->cate_title }}</a>
                                    @endforeach

                                    {{-- <a href="/{{ $language }}/register"
                                        class="block px-4 py-2 text-sm font-medium text-gray-700 hover:text-white hover:bg-[#008C46] rounded-b-md transition duration-200">
                                        Register</a> --}}
                                </div>
                            </div>
                        </div>
                    @endif
                @endif


                <div class="relative inline-block" id="languageDropdown">
                    <button id="dropdownBtn2" class="flex justify-center w-full rounded-md ">
                        <img id="selectedFlag" src="/image/TH.png" class="h-5 w-7 mr-1" alt="flag" />
                        <!-- Language Button -->
                        <svg id="langIcon" class="transition-transform duration-300" xmlns="http://www.w3.org/2000/svg"
                            width="20" height="20" fill="black" viewBox="0 0 24 24">
                            <path d="M19 9l-7 7-7-7" />
                        </svg>
                    </button>

                    <div id="dropdownMenu2"
                        class=" absolute right-0 w-[113px] rounded-md shadow-lg bg-white ring-black hidden mt-4 z-50">
                        <div role="menu" aria-orientation="vertical" aria-labelledby="options-menu">
                            <button onclick="selectLang('TH')"
                                class="flex items-center gap-2 w-full px-4 py-2 text-sm font-medium text-gray-700 hover:bg-gray-200 transition duration-200 rounded-t-md">
                                <img src="/image/TH.png" class="h-5 w-7 "> ไทย
                            </button>
                            <button onclick="selectLang('EN')"
                                class="flex items-center gap-2 w-full px-4 py-2 text-sm font-medium text-gray-700 hover:bg-gray-200 transition duration-200">
                                <img src="/image/EN.png" class="h-5 w-7 "> English
                            </button>
                            <button onclick="selectLang('AR')"
                                class="flex items-center gap-2 w-full px-4 py-2 text-sm font-medium text-gray-700 hover:bg-gray-200 transition duration-200 rounded-b-md">
                                <img src="/image/AR.png" class="h-5 w-7 "> Arabic
                            </button>
                        </div>
                    </div>
                </div>
            </div>

            {{-- Hamberger --}}
            <div class="xl:hidden">
                @include('layouts.hamburger')
            </div>
        </div>
    </div>
</nav>


<script>
    function toggleDropdown() {
        const menu = document.getElementById("dropdownMenu");
        const icon = document.getElementById("memberIcon");
        menu.classList.toggle("hidden");
        icon.classList.toggle("rotate-180");
    }

    document.addEventListener("click", function(event) {
        const dropdownBtn = document.getElementById("dropdownBtn");
        const dropdownMenu = document.getElementById("dropdownMenu");
        const icon = document.getElementById("memberIcon");
        if (!dropdownBtn.contains(event.target) && !dropdownMenu.contains(event.target)) {
            dropdownMenu.classList.add("hidden");
            icon.classList.remove("rotate-180");
        }
    });
</script>

<script>
    const dropdownBtn2 = document.getElementById("dropdownBtn2");
    const dropdownMenu2 = document.getElementById("dropdownMenu2");
    const selectedFlag = document.getElementById("selectedFlag");
    const langIcon = document.getElementById("langIcon");

    dropdownBtn2.addEventListener("click", () => {
        dropdownMenu2.classList.toggle("hidden");
        langIcon.classList.toggle("rotate-180");
    });

    function selectLang(lang) {
        localStorage.setItem("selectedLanguage", lang);
        updateLanguageUI(lang);
        dropdownMenu2.classList.add("hidden");
        langIcon.classList.remove("rotate-180");

        const currentPath = window.location.pathname;
        const newLang = lang.toLowerCase();

        // สมมุติ: URL ปัจจุบันคือ /product?id=1 → เปลี่ยนเป็น /th/product?id=1
        const pathParts = currentPath.split('/');
        if (['th', 'en', 'ar'].includes(pathParts[1])) {
            pathParts[1] = newLang;
        } else {
            pathParts.splice(1, 0, newLang);
        }

        const newPath = pathParts.join('/');
        const newUrl = newPath + window.location.search;

        window.location.href = newUrl;
    }


    function updateLanguageUI(lang) {
        const flagSrc = "/image/" + lang + ".png";
        const langText = lang === "TH" ? "ไทย" : lang === "EN" ? "English" : "Arabic";

        selectedFlag.src = flagSrc;

        if (dropdownBtn2.childNodes[1].nodeType === 3) {
            dropdownBtn2.childNodes[1].textContent = langText;
        }
    }

    document.addEventListener("click", (e) => {
        if (!document.getElementById("languageDropdown").contains(e.target)) {
            dropdownMenu2.classList.add("hidden");
            langIcon.classList.remove("rotate-180");
        }
    });

    window.addEventListener("DOMContentLoaded", () => {
        const savedLang = localStorage.getItem("selectedLanguage") || "TH";
        updateLanguageUI(savedLang);
    });
</script>
