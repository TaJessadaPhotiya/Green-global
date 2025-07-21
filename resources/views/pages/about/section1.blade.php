@php
    $MenuData = [
        '/image/Gallery 1.jpg',
        '/image/Gallery 3.jpg',
        '/image/22.jpg',
        '/image/4.jpg',
        '/image/Gallery 5.jpg',
    ];
@endphp

<div class="relative w-full h-full ">
    {{-- ข้อความ --}}
    <div class="2xl:w-[1300px] w-full mx-auto max-2xl:px-4 xl:mt-[4rem] mt-[1.5rem] xl:mb-[4rem] mb-[1.5rem] ">
        <div class="2xl:w-[1300px] w-full">
            <p class="xl:text-4xl text-2xl font-semibold ">ABOUT US</p>
            <div class="flex justify-between">
                <p class="xl:text-[16px] text-[12px] font-medium">THE KITCHEN BEEF BISTRO</p>
                <p class="xl:text-[16px] text-[12px] text-gray-400 font-medium">Home / Food Menu</p>
            </div>
        </div>

        <div class="border-gray-300/40 border-t-2 xl:mt-8 mt-4"></div>

        <div class="flex xl:flex-row flex-col xl:gap-[3.5rem] gap-[3rem] xl:pt-12 pt-6 xl:pb-12 pb-4">
            <div data-aos="fade-right" data-aos-duration="1000"
                class=" max-xl:hidden xl:order-1 order-2 flex xl:gap-3 gap-2 xl:w-1/2 w-full xl:h-[680px] sm:h-[600px] h-[400px] ">
                {{-- ซ้าย --}}
                <div class="grid grid-rows-3 xl:gap-3 gap-2 xl:w-1/2 w-full">
                    <figure class="w-full shadow-md">
                        <img class="w-full h-full object-cover" src="/image/Gallery 1.jpg" alt="">
                    </figure>
                    <figure class="w-full shadow-md">
                        <img class="w-full h-full object-cover" src="/image/Gallery 3.jpg" alt="">
                    </figure>
                    <figure class="w-full shadow-md">
                        <img class="w-full h-full object-cover" src="/image/22.jpg" alt="">
                    </figure>
                </div>
                {{-- ขวา --}}
                <div class="grid grid-rows-2 xl:gap-3 gap-2 xl:w-1/2 w-full">
                    <figure class="w-full shadow-md">
                        <img class="w-full h-full object-cover" src="/image/4.jpg" alt="">
                    </figure>
                    <figure class="w-full shadow-md">
                        <img class="w-full h-full object-cover" src="/image/Gallery 5.jpg" alt="">
                    </figure>
                </div>
            </div>

            <div class="swiper-container swiper4 xl:hidden xl:order-1 order-2 max-xl:mb-5 overflow-hidden">
                <div class="swiper-wrapper mb-4">
                    @foreach ($MenuData as $image)
                        <div class="swiper-slide flex items-center w-full lg:h-[290px] h-[200px] shadow-md bg-white">
                            <figure class="w-full h-full shadow-md">
                                <img class="w-full h-full object-cover" src="{{ $image }}" alt="">
                            </figure>
                        </div>
                    @endforeach
                </div>
                <!-- Pagination -->
                <div class="swiper-pagination z-[1]"></div>
            </div>

            <div data-aos="fade-left" data-aos-duration="1000" class="xl:order-2 order-1 xl:w-1/2 w-full ">
                <img class="xl:w-[140px] w-[100px] h-auto mx-auto" src="/image/Logo-2.png" alt="">
                <p class="xl:text-4xl text-2xl font-semibold text-center">KITCHEN BEEF BISTRO</p>
                <p class="xl:text-[16px] text-[12px] font-medium text-center">The tomahawk steak is essentialy ribeye
                    beef steak</p>
                <p class="text-[#747474] xl:text-[16px] text-[12px] font-[300] text-justify xl:mt-8 mt-6">Lorem ipsum
                    dolor sit amet
                    consectetur
                    adipisicing
                    elit. Ut esse, incidunt ratione expedita recusandae sit nulla nesciunt architecto nisi blanditiis
                    optio
                    quos fuga natus. Voluptate, repudiandae. Laborum quia consectetur laudantium. Lorem ipsum dolor sit
                    amet
                    consectetur adipisicing
                    elit. Ut esse, incidunt ratione expedita recusandae sit nulla nesciunt architecto nisi blanditiis
                    optio
                    quos fuga natus. Voluptate, repudiandae. Laborum quia consectetur laudantium. Lorem Lorem ipsum
                    dolor
                    sit amet consectetur adipisicing
                    elit. Ut esse, incidunt ratione expedita recusandae sit nulla nesciunt architecto nisi blanditiis
                    optio
                    quos fuga natus. Voluptate, repudiandae. Laborum quia consectetur laudantium. Lorem
                </p>

                <div class="w-full flex justify-center gap-4 xl:mt-10 mt-6 mb-4">
                    <figure class="bg-gradient-to-r from-gray-900 to-gray-700 rounded-full xl:p-3 p-2 cursor-pointer">
                        <img class="w-[25px] h-[25px]" src="/icons/facebook.png" alt="">
                    </figure>
                    <figure class="bg-gradient-to-r from-gray-900 to-gray-700 rounded-full xl:p-3 p-2 cursor-pointer">
                        <img class="w-[25px] h-[25px]" src="/icons/youtube.png" alt="">
                    </figure>
                </div>
            </div>
        </div>
    </div>
</div>

<style>
    /* เปลี่ยนสีและขนาดของ Swiper Pagination */
    .swiper-pagination-bullet {
        background-color: #fff !important;
        /* เปลี่ยนสี bullet */
        width: 12px !important;
        /* เพิ่มขนาด bullet */
        height: 12px !important;
        opacity: 1 !important;
        /* ให้แสดงชัดเจน */
        border: 1px solid #ffc949 !important;
    }

    .swiper-pagination-bullet-active {
        background-color: #ffc949 !important;
        /* สีเมื่อ active */
    }
</style>

<script>
    document.addEventListener("DOMContentLoaded", function() {
        const swiper4 = new Swiper(".swiper4", {
            spaceBetween: 12,
            loop: true,
            pagination: {
                el: ".swiper4 .swiper-pagination",
                clickable: true,
            },
            navigation: {
                nextEl: "#nextButton-4",
                prevEl: "#prevButton-4",
            },
            autoplay: {
                delay: 2000,
                disableOnInteraction: false
            },
            breakpoints: {
                1270: {
                    slidesPerView: 3
                },
                764: {
                    slidesPerView: 2
                },
                600: {
                    slidesPerView: 2
                },
                500: {
                    slidesPerView: 1
                },
                300: {
                    slidesPerView: 1
                },
            },
        });

        document.getElementById("prevButton-4").addEventListener("click", function() {
            swiper4.slidePrev();
            console.log("prevButton-4");
        });

        document.getElementById("nextButton-4").addEventListener("click", function() {
            swiper4.slideNext();
            console.log("nextButton-4");
        });
    });
</script>
