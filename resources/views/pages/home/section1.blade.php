@php
    $AboutData = [
        '/image/Gallery 1.jpg',
        '/image/Gallery 3.jpg',
        '/image/22.jpg',
        '/image/4.jpg',
        '/image/Gallery 5.jpg',
    ];
@endphp

<div class="relative w-full h-full ">
    {{-- ข้อความ --}}
    <div
        class="2xl:w-[1300px] w-full xl:h-[670px] h-auto flex xl:flex-row flex-col xl:gap-[3.5rem] gap-[1rem] mx-auto max-2xl:px-4 xl:mt-[4rem] mt-[1.5rem] ">
        <div data-aos="fade-right" data-aos-duration="1000"
            class=" max-xl:hidden xl:order-1 order-2 flex xl:gap-3 gap-2 xl:w-1/2 w-full xl:h-auto sm:h-[600px] h-[400px] ">
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

        <div class="swiper-container swiper3 xl:hidden xl:order-1 order-2 max-xl:mb-5 overflow-hidden">
            <div class="swiper-wrapper mb-8">
                @foreach ($AboutData as $image)
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
            <p class="xl:text-[16px] text-[12px] font-medium text-center">The tomahawk steak is essentialy ribeye beef
                steak</p>
            <p class="text-[#747474] xl:text-[16px] text-[12px] font-[300] text-justify xl:mt-8 mt-6">Lorem ipsum dolor
                sit ametconsecteturadipisicingelit. Ut esse, incidunt ratione expedita recusandae sit nulla nesciunt
                architecto nisi blanditiis optio
                quos fuga natus. Voluptate, repudiandae. Laborum quia consectetur laudantium. Lorem ipsum dolor sit amet
                consectetur adipisicingelit. Ut esse, incidunt ratione expedita recusandae sit nulla nesciunt architecto
                nisi blanditiis optio
                quos fuga natus. Voluptate, repudiandae. Laborum quia consectetur laudantium. Lorem Lorem ipsum dolor
                sit amet consectetur adipisicingelit. Ut esse, incidunt ratione expedita recusandae sit nulla nesciunt
                architecto nisi blanditiis optio
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
        const swiper3 = new Swiper(".swiper3", {
            spaceBetween: 12,
            loop: true,
            pagination: {
                el: ".swiper3 .swiper-pagination",
                clickable: true,
            },
            navigation: {
                nextEl: "#nextButton-3",
                prevEl: "#prevButton-3",
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

        document.getElementById("prevButton-3").addEventListener("click", function() {
            swiper3.slidePrev();
            console.log("prevButton-3");
        });

        document.getElementById("nextButton-3").addEventListener("click", function() {
            swiper3.slideNext();
            console.log("nextButton-3");
        });
    });
</script>
