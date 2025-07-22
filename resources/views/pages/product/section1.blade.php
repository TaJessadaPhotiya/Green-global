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


<div class="relative w-full h-full">
    <div
        class="2xl:w-[1300px] w-full h-full min-h-screen mx-auto md:px-[4rem] px-[1rem] xl:pt-[4rem] pt-[2.5rem] xl:pb-[4rem] pb-[4rem] shadow-2xl ">
        <div class="container mx-auto">
            <h1 class="text-[#098C46] text-2xl text-center font-semibold">PRODUCT CROP</h1>

            {{-- swiper --}}
            <div class="relative max-w-full mx-auto mt-[3.5rem]">
                <button id="prevButton-2"
                    class="absolute max-sm:hidden xl:-left-[3rem] -left-11 top-1/2 -translate-y-1/2 rounded-full transition duration-200 opacity-70 z-20">
                    <img class="sm:w-5 w-4 sm:h-5 h-4" src="/icons/prev2.png" alt="Previous Slide">
                </button>
                <button id="nextButton-2"
                    class="absolute max-sm:hidden xl:-right-[3rem] -right-11 top-1/2 -translate-y-1/2 rounded-full transition duration-200 opacity-70 z-20">
                    <img class="sm:w-5 w-4 sm:h-5 h-4" src="/icons/next2.png" alt="Next Slide">
                </button>

                <div class="swiper-container swiper2 overflow-hidden" data-aos="fade-left" data-aos-duration="1200">
                    <div class="swiper-wrapper">
                        @foreach ($menu_cateB as $category)
                            <div class="swiper-slide flex flex-col items-center justify-center group">
                                <div
                                    class="2xl:w-[150px] xl:w-[140px] sm:w-[120px] w-[80px] 2xl:h-[150px] xl:h-[140px] sm:h-[120px] h-[80px] border-[#098C46] sm:border-4 border-2 bg-white rounded-full overflow-hidden">
                                    <a href="#" class="block">
                                        <img class="w-full h-full object-cover rounded-full transition duration-300 group-hover:scale-125"
                                            src="{{ $category->cate_thumbnail }}" alt="{{ $category->cate_title }}">
                                    </a>
                                </div>
                                <p
                                    class="text-[#098C46] group-hover:text-[#7AC53A] font-semibold xl:text-[20px] sm:text-lg text-sm text-center transition duration-200 mt-4">
                                    {{ $category->cate_title }}
                                </p>
                            </div>
                        @endforeach
                    </div>

                    <!-- Pagination and Navigation -->
                    <div class="swiper-button-next" style="display: none"></div>
                    <div class="swiper-button-prev" style="display: none"></div>
                    <div class="swiper-pagination" style="display: none"></div>
                </div>
            </div>

            {{-- Dropdow Fillter --}}
            <div class="w-full mt-10 bg-green-50">
                <div class="relative flex items-center justify-end">
                    <button id="memberDropdownBtn"
                        class="inline-flex items-center justify-center border  gap-2 px-4 py-2 text-[16px] font-medium text-[#098C46] hover:text-yellow-500 transition duration-200 rounded-md">
                        <span id="memberDropdownLabel">ALL</span>
                        <svg id="memberDropdownIcon" class="transition-transform duration-300 w-5 h-5"
                            xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7" />
                        </svg>
                    </button>

                    <div id="memberDropdownMenu"
                        class="hidden absolute right-0 z-20 mt-2 w-40 origin-top-right rounded-lg bg-white shadow-xl ring-1 ring-black ring-opacity-5 transition-all duration-200 ease-out">
                        <div class="py-1">
                            <a href="#"
                                class="dropdown-item block px-4 py-2 text-sm text-gray-700 hover:bg-[#098C46] hover:text-white rounded-t-md transition">
                                ALL
                            </a>
                            <a href="#"
                                class="dropdown-item block px-4 py-2 text-sm text-gray-700 hover:bg-[#098C46] hover:text-white transition">DATA
                                1
                            </a>
                            <a href="#"
                                class="dropdown-item block px-4 py-2 text-sm text-gray-700 hover:bg-[#098C46] hover:text-white transition">DATA
                                2
                            </a>
                            <a href="#"
                                class="dropdown-item block px-4 py-2 text-sm text-gray-700 hover:bg-[#098C46] hover:text-white rounded-b-md transition">DATA
                                3
                            </a>
                        </div>
                    </div>
                </div>
            </div>

            {{-- Data --}}
            <div class="w-full">

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

    /* @media (max-width: 1580px) {
        .swiper2 {
            height: 395px;
        }
    } */

    .swiper2 .swiper-slide {
        /* background-color: #e9f5fa; */
    }

    /* .custom-buttons {
            position: fixed;
            top: 50%;
            left: 0;
            right: 0;
            padding: 0 20px;
            z-index: 1000;
        } */
</style>

<script>
    document.addEventListener("DOMContentLoaded", function() {
        const swiper2 = new Swiper(".swiper2", {
            spaceBetween: 27,
            loop: true,
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
