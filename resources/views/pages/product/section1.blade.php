{{-- Category --}}
@php
    $selectedSegment = isset($_GET['segment']) ? $SegmentFiltered->firstWhere('id', $_GET['segment']) : null;

@endphp

<div class="relative w-full h-full ">
    <div
        class="2xl:w-[1300px] w-full h-full min-h-screen mx-auto md:px-[4rem] px-[1rem] xl:pt-[4rem] pt-[2.5rem] xl:pb-[4rem] pb-[6rem] shadow-2xl ">
        <div class="container mx-auto ">
            <h1 class="text-[#098C46] xl:text-3xl text-2xl text-center font-semibold animate-focusInExpand ">
                PRODUCT CROP
            </h1>

            {{-- swiper --}}
            <div class="relative max-w-full mx-auto xl:mt-[3.5rem] mt-[1rem] ">
                <button id="prevButton-2"
                    class="absolute max-sm:hidden xl:-left-[3rem] -left-11 top-1/2 -translate-y-1/2 rounded-full transition duration-200 opacity-70 z-10">
                    <img class="sm:w-5 w-4 sm:h-5 h-4" src="/icons/prev2.png" alt="Previous Slide">
                </button>
                <button id="nextButton-2"
                    class="absolute max-sm:hidden xl:-right-[3rem] -right-11 top-1/2 -translate-y-1/2 rounded-full transition duration-200 opacity-70 z-10">
                    <img class="sm:w-5 w-4 sm:h-5 h-4" src="/icons/next2.png" alt="Next Slide">
                </button>

                <div class="swiper-container swiper2 overflow-hidden" data-aos="fade-left" data-aos-duration="1200">
                    <div class="swiper-wrapper xl:h-[257px] h-[220px] ">
                        @foreach ($ProductCate as $category)
                            <a href="{{ url('/' . $language . '/product?id=' . $category->id) }}"
                                class="swiper-slide flex flex-col items-center justify-center group {{ request('id') == $category->id ? 'focus-slide' : '' }}">
                                <div
                                    class="{{ request('id') == $category->id ? 'border-[#7AC53A] -translate-y-2 scale-125' : 'border-[#098C46]' }}
                                            relative shadow-md hover:scale-[1.3] hover:-translate-y-2 transition-transform duration-300 ease-out
                                            2xl:w-[150px] xl:w-[140px] sm:w-[120px] w-[90px]
                                            2xl:h-[150px] xl:h-[140px] sm:h-[120px] h-[90px]
                                            sm:border-4 border-[3px] bg-white rounded-full overflow-hidden">
                                    <div class="block">
                                        <img class="w-full h-full object-cover rounded-full transition-transform duration-300 ease-out group-hover:scale-[1.2]"
                                            src="{{ '/' . $category->thumbnail_link }}"
                                            alt="{{ $category->thumbnail_alt }}">
                                    </div>
                                    {{-- <div
                                        class="absolute inset-0 transition-colors duration-300
                                        {{ request('id') == $category->id ? 'bg-gradient-to-t from-[#EEC90E] via-[#FFFACD]/10' : '' }}">
                                    </div> --}}
                                </div>
                                <p
                                    class="{{ request('id') == $category->id ? 'text-[#7AC53A]' : 'text-[#098C46]' }}  font-semibold xl:text-[20px] sm:text-lg text-sm text-center transition duration-200 mt-4 ">
                                    {{ $category->title }}
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
            <div class="w-full xl:mt-[2.5rem] iPad-mini:mt-[1rem] mt-0">
                <div class="flex items-center justify-end gap-3">
                    <p class="sm:text-[16px] text-[14px] font-semibold text-[#098C46]">SEGMENT :</p>
                    <div class="relative ">
                        <button id="memberDropdownBtn"
                            class="inline-flex items-center justify-center border-2 border-[#098C46] gap-2 xl:w-[120px] w-[100px] py-0.5 xl:text-[16px] text-[14px] font-medium text-[#098C46] hover:text-yellow-500 transition duration-200 rounded-md">
                            <span
                                id="memberDropdownLabel">{{ $selectedSegment ? $selectedSegment->title : 'ALL' }}</span>
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
                                @foreach ($SegmentFiltered as $segment)
                                    @php
                                        $isActive = isset($_GET['segment']) && $_GET['segment'] == $segment->id;
                                    @endphp
                                    <a href="{{ url($language . '/product?segment=' . $segment->id) }}"
                                        class="block px-4 py-2 text-sm text-gray-700 transition @if ($isActive) bg-[#098C46] text-white @else hover:bg-[#098C46] hover:text-white @endif">
                                        {{ $segment->title }}
                                    </a>
                                @endforeach
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            {{-- Data --}}
            <div class="grid xl:grid-cols-4 md:grid-cols-3 iPad-mini:grid-cols-3 sm:grid-cols-3 grid-cols-2 xl:gap-x-5 sm:gap-x-4 gap-x-3 sm:gap-y-[3.3rem] gap-y-[3rem] w-full xl:mt-12 sm:mt-[3rem] size-mini:mt-[2.6rem] mt-[1.7rem] xl:pb-12 pb-8 "
                data-aos="fade-up" data-aos-duration="1200">
                @foreach ($filtered_products as $product)
                    <a class="w-full @if (Auth::check()) cursor-pointer group @endif xl:hover:scale-105 transition duration-300 "
                        @if (Auth::check()) href="{{ url('/' . $language . '/product-detail/' . $product->id) }}" @endif>
                        {{-- ส่วนรูป --}}
                        <div class=" relative w-full xl:h-[280px] lg:h-[240px] sm:h-[220px] h-[150px] shadow-xl ">
                            <!-- ป้าย NEW -->
                            @if ($product->pin == 1)
                                <img class="flash-img absolute sm:top-2 top-3 left-3 sm:w-[55px] w-[40px] sm:h-[55px] h-[40px] drop-shadow-sm z-10"
                                    src="/image/Group 108.png" alt="">
                            @endif

                            <!-- รูป PNG ด้านบน -->
                            <img class="absolute left-0 w-full top-[22px] -translate-y-full drop-shadow-sm z-10 "
                                src="/image/Group 105.png" alt="">

                            <!-- รูป -->
                            <figure class=" w-full h-full overflow-hidden relative">
                                <img class="lazy-image  w-full h-full object-cover transition-all duration-500 blur-md group-hover:blur-lg group-hover:bg-black/80 scale-105"
                                    loading="lazy" src="{{ '/' . $product->thumbnail_link }}"
                                    alt="{{ $product->thumbnail_alt }}"
                                    onload="this.classList.remove('blur-md', 'scale-105')">
                            </figure>

                            {{-- group-hover:animate-swingRightFwd --}}
                            <!-- รูป PNG ล่าง -->
                            <img class="absolute left-0 w-full bottom-0 translate-y-full z-10"
                                src="/image/Rectangle 407.png" alt="">
                            {{-- <div
                                class="absolute inset-0 bg-gradient-to-t from-transparent via-transparent group-hover:from-[hsl(50,80%,49%)] group-hover:via-[#EEC90E]/10 transition-colors duration-300">
                            </div> --}}
                            <div
                                class="absolute inset-0 flex flex-col justify-center items-center text-white drop-shadow-lg opacity-0 group-hover:opacity-100 transition duration-300">
                                <img class="lg:h-12 h-10" src="/icons/view-alt-svgrepo-com.png" alt="">
                                <p class="xl:text-[16px] text-sm xl:mt-2 mt-1">VIEW DETAIL</p>
                            </div>
                        </div>

                        {{-- ส่วนล่าง --}}
                        <div class="w-full sm:mt-12 mt-10">
                            <p
                                class="h-[24px] sm:text-[16px] text-[14px] text-center font-normal text-[#848484] line-clamp-1">
                                {{ $product->c_title }}
                            </p>
                            <div
                                class="relative w-full text-white sm:text-[16px] text-sm font-medium text-center py-2
                                        bg-gradient-to-r from-[#19703D] to-[#1a7a43]
                                        group-hover:from-[#EEC90E] group-hover:to-[#f7d73e]
                                        rounded-md shadow-md group-hover:shadow-xl mt-2 overflow-hidden transition-all duration-500">

                                <!-- ข้อความเดิม -->
                                <span
                                    class="block transition-all duration-500 group-hover:-translate-y-full group-hover:opacity-0">
                                    {{ $product->title }}
                                </span>

                                <!-- ลูกศรเลื่อนเข้ามา -->
                                <span
                                    class="absolute inset-0 flex justify-center items-center translate-y-full opacity-0
                                            transition-all duration-500 group-hover:translate-y-0 group-hover:opacity-100">
                                    DETAIL <span class="inline-block ml-1 group-hover:animate-arrowWiggle">➤</span>
                                </span>
                            </div>
                        </div>
                    </a>
                @endforeach
            </div>

            {{-- Pagination links --}}
            @if ($filtered_products->lastPage() > 1)
                <nav aria-label="Page navigation" class="flex justify-center xl:mb-10 mb-1 space-x-2">
                    {{-- Previous --}}
                    @if ($filtered_products->onFirstPage())
                        <span
                            class="w-8 h-8 bg-gray-300 text-gray-600 rounded-md cursor-not-allowed select-none text-lg shadow-sm flex items-center justify-center">
                            «
                        </span>
                    @else
                        <a href="{{ $filtered_products->previousPageUrl() }}"
                            class="w-8 h-8 bg-green-700 text-white rounded-md shadow hover:bg-yellow-500 transition duration-150 ease-in-out cursor-pointer select-none text-lg flex items-center justify-center"
                            aria-label="Previous Page">
                            «
                        </a>
                    @endif

                    {{-- Page Numbers --}}
                    @for ($i = 1; $i <= $filtered_products->lastPage(); $i++)
                        @if ($i == $filtered_products->currentPage())
                            <span aria-current="page"
                                class="w-8 h-8 bg-white text-green-700 border rounded-md font-normal shadow select-none text-md flex items-center justify-center">
                                {{ $i }}
                            </span>
                        @else
                            <a href="{{ $filtered_products->url($i) }}"
                                class="w-8 h-8 bg-green-700 text-white rounded-md shadow hover:bg-yellow-500 transition duration-150 ease-in-out cursor-pointer select-none text-md flex items-center justify-center"
                                aria-label="Go to page {{ $i }}">
                                {{ $i }}
                            </a>
                        @endif
                    @endfor

                    {{-- Next --}}
                    @if ($filtered_products->hasMorePages())
                        <a href="{{ $filtered_products->nextPageUrl() }}"
                            class="w-8 h-8 bg-green-700 text-white rounded-md shadow hover:bg-yellow-500 transition duration-150 ease-in-out cursor-pointer select-none text-lg flex items-center justify-center"
                            aria-label="Next Page">
                            »
                        </a>
                    @else
                        <span
                            class="w-8 h-8 bg-gray-300 text-gray-600 rounded-md cursor-not-allowed select-none text-lg shadow-sm flex items-center justify-center">
                            »
                        </span>
                    @endif
                </nav>
            @endif
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
            spaceBetween: 5,
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
        const categoryCount = {{ count($ProductCate) }};
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

        // ✅ เพิ่มส่วนนี้เพื่อเลื่อนไปยัง slide ที่มี .focus-slide
        const focusSlide = document.querySelector(".swiper2 .swiper-slide.focus-slide");
        if (focusSlide) {
            const index = Array.from(focusSlide.parentElement.children).indexOf(focusSlide);
            swiper2.slideTo(index, 500);
        }
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
