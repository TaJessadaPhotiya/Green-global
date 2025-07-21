@php
    $slides = [
        (object) [
            'ad_image' => 'image/Head-slide.jpg',
            'ad_title' => 'Enjoy a luxury experience',
            'ad_description' => 'Hotel resort & spa',
            'ad_link' => 'https://example.com/slide1',
        ],
        (object) [
            'ad_image' => 'image/Head-slide.jpg',
            'ad_title' => 'Enjoy a luxury experience',
            'ad_description' => 'Hotel resort & spa',
            'ad_link' => 'https://example.com/slide1',
        ],
        (object) [
            'ad_image' => 'image/Head-slide.jpg',
            'ad_title' => 'Enjoy a luxury experience',
            'ad_description' => 'Hotel resort & spa',
            'ad_link' => 'https://example.com/slide1',
        ],
    ];
@endphp


<div class="relative w-full xl:h-[650px] h-auto overflow-hidden">
    <div id="mySwiper" class="swiper-container relative w-full h-full">
        <div class="swiper-wrapper">
            @foreach ($slides as $slide)
                <div class="swiper-slide relative">
                    <img class="w-full h-full object-cover" src="/{{ $slide->ad_image }}"
                        alt="{{ $slide->ad_description }}">
                    <div class="absolute inset-0 bg-gradient-to-b from-black/10 via-transparent to-black/10"></div>
                    <div class="absolute inset-0 flex justify-center items-center p-6 text-white">
                        <div class=" w-[1300px] ">
                            <p data-aos="fade-down" data-aos-duration="1000"
                                class="xl:w-[520px] w-full xl:text-4xl sm:text-2xl text-[12px] font-[300] xl:tracking-[0.2rem] tracking-tigh ">
                                WHAT IS A <span class="font-bold ">TOMAHAWK</span></p>
                            <p data-aos="fade-up" data-aos-duration="1000"
                                class="xl:w-[520px] w-full xl:text-7xl sm:text-5xl text-xl font-bold sm:mt-1 mt-0">
                                RIBEYE
                                <span class="text-[#ffd162]">STEAK</span>
                            </p>
                            <p data-aos="fade-up" data-aos-duration="1000"
                                class="xl:w-[520px] sm:w-[300px] w-[200px] xl:text-[16px] sm:text-[12px] text-[8px] font-normal xl:tracking-[0.2rem] tracking-tight sm:mt-1 mt-0">
                                THE TOMAHAWK IS ESSENTIALLY RIBEYE BEEF STEAK SPACICALLY.
                            </p>

                            <button data-aos="fade-up" data-aos-duration="1000"
                                class="overflow-hidden relative xl:w-[110px] sm:w-[90px] w-[70px] xl:h-12 sm:h-8 h-6 xl:mt-12 sm:mt-6 mt-2 text-white border-2 hover:border-yellow-500 border-gray-200 transition-transform group-hover:duration-500 rounded-md xl:text-[16px] sm:text-[12px] text-[10px] font-medium cursor-pointer relative z-10 group">
                                MORE
                                <span
                                    class="absolute w-36 h-32 -top-8 -left-2 bg-yellow-500/40 rotate-12 transform scale-x-0 group-hover:scale-x-100 transition-transform group-hover:duration-500 duration-1000 origin-right"></span>
                                <span
                                    class="absolute w-36 h-32 -top-8 -left-2 bg-yellow-500/70 rotate-12 transform scale-x-0 group-hover:scale-x-100 transition-transform group-hover:duration-700 duration-700 origin-right"></span>
                                <span
                                    class="absolute w-36 h-32 -top-8 -left-2 bg-yellow-500 rotate-12 transform scale-x-0 group-hover:scale-x-100 transition-transform group-hover:duration-1000 duration-500 origin-right"></span>
                                <span
                                    class="group-hover:opacity-100 group-hover:duration-1000 duration-100 opacity-0 absolute top-1/2 left-1/2 -translate-x-1/2 -translate-y-1/2 z-10">Explore!</span>
                            </button>

                        </div>
                    </div>
                </div>
            @endforeach
        </div>
        <!-- Pagination -->
        <div class="swiper-pagination w-full flex justify-center mb-5 max-xl:hidden z-10"></div>
    </div>

    <!-- Navigation Buttons -->
    <button id="prevButton" class="absolute left-4 top-1/2 -translate-y-1/2 p-2 bg-black/50 rounded-full hidden">
        <img class="w-6 h-6" src="/icons/left.png" alt="Previous Slide">
    </button>
    <button id="nextButton" class="absolute right-4 top-1/2 -translate-y-1/2 p-2 bg-black/50 rounded-full hidden">
        <img class="w-6 h-6" src="/icons/right.png" alt="Next Slide">
    </button>
</div>

<style>
    .swiper-pagination-bullet {
        color: rgb(119, 114, 114);
        background: none;
        border: 1px solid rgb(119, 114, 114);
        ;
        opacity: unset;
        width: 10px;
        height: 10px;
    }

    .swiper-pagination-bullet-active {
        background: rgb(131, 129, 129);
    }
</style>

<script>
    document.addEventListener("DOMContentLoaded", function() {
        const swiper = new Swiper("#mySwiper", {
            loop: true,
            pagination: {
                el: ".swiper-pagination",
                clickable: true,
                dynamicBullets: true
            },
            navigation: {
                nextEl: "#nextButton",
                prevEl: "#prevButton"
            },
            autoplay: {
                delay: 5000,
                disableOnInteraction: false
            }
        });
    });
</script>
