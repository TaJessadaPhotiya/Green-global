{{-- Category --}}
@php
    $menu_cateB = collect([
        (object) [
            'id' => 1,
            'cate_title' => 'Rice',
            'cate_thumbnail' => '/image/m1.png',
        ],
        (object) [
            'id' => 2,
            'cate_title' => 'Corn',
            'cate_thumbnail' => '/image/m2.png',
        ],
        (object) [
            'id' => 3,
            'cate_title' => 'Wheat',
            'cate_thumbnail' => '/image/m3.png',
        ],
        (object) [
            'id' => 4,
            'cate_title' => 'Soybean',
            'cate_thumbnail' => '/image/m4.png',
        ],
        (object) [
            'id' => 5,
            'cate_title' => 'Sugarcane',
            'cate_thumbnail' => '/image/m6.png',
        ],
        (object) [
            'id' => 6,
            'cate_title' => 'Banana',
            'cate_thumbnail' => '/image/Rectangle 409 (2).png',
        ],
        (object) [
            'id' => 7,
            'cate_title' => 'Sweet Pepper',
            'cate_thumbnail' => '/image/Rectangle 409 (3).png',
        ],
        (object) [
            'id' => 8,
            'cate_title' => 'Melon',
            'cate_thumbnail' => '/image/Rectangle 409 (1).png',
        ],
    ]);
@endphp

<div class="relative w-full h-full ">
    <div
        class="2xl:w-[1300px] w-full h-full min-h-[calc(100vh-94px)] mx-auto md:px-[4rem] px-[1rem] xl:pt-[4rem] pt-[2.5rem] xl:pb-[4rem] pb-[4rem] shadow-2xl ">
        <div class="container mx-auto ">
            <h1 class="text-[#098C46] xl:text-3xl text-2xl text-center font-semibold">PRODUCT CROP</h1>

            {{-- swiper --}}
            <div class="relative max-w-full mx-auto sm:mt-[3.5rem] mt-[2rem] ">
                <button id="prevButton-2"
                    class="absolute max-sm:hidden xl:-left-[3rem] -left-11 top-1/2 -translate-y-1/2 rounded-full transition duration-200 opacity-70 z-10">
                    <img class="sm:w-5 w-4 sm:h-5 h-4" src="/icons/prev2.png" alt="Previous Slide">
                </button>
                <button id="nextButton-2"
                    class="absolute max-sm:hidden xl:-right-[3rem] -right-11 top-1/2 -translate-y-1/2 rounded-full transition duration-200 opacity-70 z-10">
                    <img class="sm:w-5 w-4 sm:h-5 h-4" src="/icons/next2.png" alt="Next Slide">
                </button>

                <div class="swiper-container swiper2 overflow-hidden" data-aos="fade-left" data-aos-duration="1200">
                    <div class="swiper-wrapper">
                        @foreach ($menu_cateB as $category)
                            <a href="{{ url('/' . $language . '/product?id=' . $category->id) }}"
                                class="swiper-slide flex flex-col items-center justify-center group ">
                                <div
                                    class="{{ request('id') == $category->id ? 'border-[#7AC53A] ' : 'border-[#098C46]' }} group-hover:border-[#7AC53A] 2xl:w-[150px] xl:w-[140px] sm:w-[120px] w-[90px] 2xl:h-[150px] xl:h-[140px] sm:h-[120px] h-[90px] sm:border-4 border-[3px] bg-white rounded-full overflow-hidden">
                                    <div class="block">
                                        <img class="w-full h-full object-cover rounded-full transition duration-300 group-hover:scale-125 "
                                            src="{{ $category->cate_thumbnail }}" alt="{{ $category->cate_title }}">
                                    </div>
                                </div>
                                <p
                                    class="{{ request('id') == $category->id ? 'text-[#7AC53A]' : 'text-[#098C46]' }} group-hover:text-[#7AC53A] font-semibold xl:text-[20px] sm:text-lg text-sm text-center transition duration-200 mt-4">
                                    {{ $category->cate_title }}
                                </p>
                            </a>
                        @endforeach
                    </div>

                    <!-- Pagination and Navigation -->
                    <div class="swiper-button-next" style="display: none"></div>
                    <div class="swiper-button-prev" style="display: none"></div>
                    <div class="swiper-pagination" style="display: none"></div>
                </div>
            </div>

            {{-- Dropdow Fillter --}}
            <div class="w-full xl:mt-[3rem] sm:mt-[2rem] mt-[2rem] ">
                <div class="flex items-center justify-end gap-3">
                    <p class="sm:text-[16px] text-[14px] font-semibold text-[#098C46]">SEGMENT :</p>
                    <div class="relative ">
                        <button id="memberDropdownBtn"
                            class="inline-flex items-center justify-center border-2 border-[#098C46] gap-2 xl:w-[120px] w-[100px] py-0.5 xl:text-[16px] text-[14px] font-medium text-[#098C46] hover:text-yellow-500 transition duration-200 rounded-md">
                            <span id="memberDropdownLabel">ALL</span>
                            <svg id="memberDropdownIcon" class="transition-transform duration-300 w-4 h-4"
                                xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                stroke="currentColor">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                    d="M19 9l-7 7-7-7" />
                            </svg>
                        </button>

                        <!-- dropdown อยู่ด้านล่างเสมอ -->
                        <div id="memberDropdownMenu"
                            class="hidden absolute right-0 top-full mt-2 w-[120px] origin-top-right rounded-lg bg-white shadow-xl ring-1 ring-black ring-opacity-5 z-20 transition-all duration-200 ease-out">
                            <div>
                                <a href="{{ url($language . '/product') }}"
                                    class=" block px-4 py-2 text-sm text-gray-700 hover:bg-[#098C46] hover:text-white rounded-t-md transition">
                                    ALL
                                </a>
                                <a href="#"
                                    class=" block px-4 py-2 text-sm text-gray-700 hover:bg-[#098C46] hover:text-white transition">DATA
                                    1
                                </a>
                                <a href="#"
                                    class=" block px-4 py-2 text-sm text-gray-700 hover:bg-[#098C46] hover:text-white transition">DATA
                                    2
                                </a>
                                <a href="#"
                                    class=" block px-4 py-2 text-sm text-gray-700 hover:bg-[#098C46] hover:text-white rounded-b-md transition">DATA
                                    3
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            {{-- Data --}}
            <div
                class="grid xl:grid-cols-4 lg:grid-cols-3 sm:grid-cols-2 grid-cols-2 xl:gap-x-5 sm:gap-x-4 gap-x-3 sm:gap-y-[3.3rem] gap-y-[2rem] w-full xl:mt-12 sm:mt-[4rem] mt-[2.6rem] pb-12 ">
                @foreach ($filtered_products as $product)
                    <a class="w-full cursor-pointer group"
                        href="{{ url('/' . $language . '/product-detail/' . $product->id) }}">
                        {{-- ส่วนรูป --}}
                        <div class="relative w-full xl:h-[280px] lg:h-[240px] sm:h-[220px] h-[150px] shadow-xl">
                            <!-- ป้าย NEW -->
                            @if ($product->product_new == 1)
                                <img class="flash-img absolute sm:top-2 top-3 left-3 sm:w-[55px] w-[40px] sm:h-[55px] h-[40px] drop-shadow-sm z-10"
                                    src="/image/Group 108.png" alt="">
                            @endif

                            <!-- รูปด้านบน -->
                            <img class="absolute left-0 w-full top-[22px] -translate-y-full drop-shadow-sm z-10"
                                src="/image/Group 105.png" alt="">

                            <!-- พื้นหลัง -->
                            <figure class="w-full h-full overflow-hidden">
                                <img class="w-full h-full object-cover group-hover:scale-125 transition duration-500 "
                                    src="{{ $product->thumbnail }}" alt="{{ $product->title }}">
                            </figure>

                            <!-- รูปล่าง -->
                            <img class="absolute left-0 w-full bottom-0 translate-y-full z-10"
                                src="/image/Rectangle 407.png" alt="">
                        </div>

                        {{-- ส่วนล่าง --}}
                        <div class="w-full sm:mt-12 mt-10">
                            <p
                                class="h-[24px] sm:text-[16px] text-[14px] text-center font-normal text-[#848484] line-clamp-1">
                                {{ $product->title }}
                            </p>
                            <button
                                class="w-full text-white sm:text-[16px] text-sm font-medium text-center py-2 
                                        bg-gradient-to-r from-[#19703D] to-[#1a7a43]
                                        group-hover:from-[#EEC90E] group-hover:to-[#f7d73e]
                                        transition-all duration-500 ease-in-out
                                        rounded-md shadow-md group-hover:shadow-xl mt-2
                                        transform ">
                                {{ $product->product_code }}
                            </button>
                        </div>
                    </a>
                @endforeach
            </div>

        </div>
    </div>
</div>


<style>
    .swiper2 {
        width: 100%;
        /* height: 410px; */
        height: auto;
    }

    @keyframes flashRedOrange {

        0%,
        100% {
            filter: sepia(1) hue-rotate(-47deg) saturate(10);
            /* 🔴 แดง */
            opacity: 1;
        }

        50% {
            filter: none;
            opacity: 1;
        }
    }

    .flash-img {
        animation: flashRedOrange 0.5s infinite;
    }
</style>

<script>
    document.addEventListener("DOMContentLoaded", function() {
        const swiper2 = new Swiper(".swiper2", {
            spaceBetween: 27,
            loop: false,
            pagination: {
                el: ".swiper2 .swiper-pagination",
                clickable: true,
            },
            navigation: {
                nextEl: ".swiper2 .swiper-button-next",
                prevEl: ".swiper2 .swiper-button-prev",
            },
            breakpoints: {
                360: {
                    slidesPerView: 3,
                    // spaceBetween: 10,
                },
                375: {
                    slidesPerView: 3,
                },
                600: {
                    slidesPerView: 4,
                },
                820: {
                    slidesPerView: 4,
                },
                1024: {
                    slidesPerView: 5,
                },
                1026: {
                    slidesPerView: 6,
                },
            },
        });

        const slidesPerView = swiper2.params.slidesPerView;
        const categoryCount = {{ count($menu_cateB) }};
        const prevButton = document.getElementById("prevButton-2");

        if (categoryCount <= slidesPerView) {
            prevButton.disabled = true;
        } else {
            prevButton.disabled = false;
        }

        swiper2.on('resize', function() {
            const updatedSlidesPerView = swiper2.params.slidesPerView;

            if (categoryCount <= updatedSlidesPerView) {
                prevButton.disabled = true;
            } else {
                prevButton.disabled = false;
            }
        });

        // Handle custom button clicks 2
        document
            .getElementById("prevButton-2")
            .addEventListener("click", function() {
                swiper2.slidePrev();
                console.log("prevButton-2");
            });

        document
            .getElementById("nextButton-2")
            .addEventListener("click", function() {
                swiper2.slideNext();
                console.log("nextButton-2");
            });
    });
</script>

<script>
    function toggleMemberDropdown() {
        const menu = document.getElementById("memberDropdownMenu");
        const icon = document.getElementById("memberDropdownIcon");
        menu.classList.toggle("hidden");
        icon.classList.toggle("rotate-180");
    }

    document.addEventListener("click", function(event) {
        const dropdownBtn = document.getElementById("memberDropdownBtn");
        const dropdownMenu = document.getElementById("memberDropdownMenu");
        const icon = document.getElementById("memberDropdownIcon");

        if (!dropdownBtn.contains(event.target) && !dropdownMenu.contains(event.target)) {
            dropdownMenu.classList.add("hidden");
            icon.classList.remove("rotate-180");
        }
    });

    document.addEventListener("DOMContentLoaded", () => {
        document.getElementById("memberDropdownBtn").addEventListener("click", toggleMemberDropdown);

        // เพิ่ม event ให้ทุก dropdown item
        document.querySelectorAll('.dropdown-item').forEach(item => {
            item.addEventListener('click', function(e) {
                e.preventDefault(); // กันเปลี่ยนหน้า
                const label = document.getElementById("memberDropdownLabel");
                label.innerText = this.innerText; // เปลี่ยนข้อความ
                document.getElementById("memberDropdownMenu").classList.add("hidden");
                document.getElementById("memberDropdownIcon").classList.remove("rotate-180");
            });
        });
    });
</script>
