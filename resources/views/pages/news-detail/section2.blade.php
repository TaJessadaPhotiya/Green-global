@php
    $NewsData = [
        [
            'id' => 1,
            'image' => '/image/11.jpg',
            'name' => 'WorldHotels Launches WorldHotelsTo Crafted Collection 1',
            'date' => 'March 26, 2021',
            'description' =>
                'Lorem ipsum dolor sitametconsecteturadipisicing elit. Vitae id doloribus quam eveniet ut? Minusomnis, eos hic labore optio cupiditatetemporaest necessitatibus sint? Tenetur',
        ],
        [
            'id' => 2,
            'image' => '/image/22.jpg',
            'name' => 'WorldHotels Launches WorldHotelsTo Crafted Collection 2',
            'date' => 'March 27, 2021',
            'description' =>
                'Lorem ipsum dolor sitametconsecteturadipisicing elit. Vitae id doloribus quam eveniet ut? Minusomnis, eos hic labore optio cupiditatetemporaest necessitatibus sint? Tenetur',
        ],
        [
            'id' => 3,
            'image' => '/image/33.jpg',
            'name' => 'WorldHotels Launches WorldHotelsTo Crafted Collection 3',
            'date' => 'March 28, 2021',
            'description' =>
                'Lorem ipsum dolor sitametconsecteturadipisicing elit. Vitae id doloribus quam eveniet ut? Minusomnis, eos hic labore optio cupiditatetemporaest necessitatibus sint? Tenetur',
        ],
        [
            'id' => 4,
            'image' => '/image/44.jpg',
            'name' => 'WorldHotels Launches WorldHotelsTo Crafted Collection 4',
            'date' => 'March 29, 2021',
            'description' =>
                'Lorem ipsum dolor sitametconsecteturadipisicing elit. Vitae id doloribus quam eveniet ut? Minusomnis, eos hic labore optio cupiditatetemporaest necessitatibus sint? Tenetur',
        ],
        [
            'id' => 5,
            'image' => '/image/55.jpg',
            'name' => 'WorldHotels Launches WorldHotelsTo Crafted Collection 5',
            'date' => 'March 30, 2021',
            'description' =>
                'Lorem ipsum dolor sitametconsecteturadipisicing elit. Vitae id doloribus quam eveniet ut? Minusomnis, eos hic labore optio cupiditatetemporaest necessitatibus sint? Tenetur',
        ],
        [
            'id' => 6,
            'image' => '/image/66.jpg',
            'name' => 'WorldHotels Launches WorldHotelsTo Crafted Collection 6',
            'date' => 'March 31, 2021',
            'description' =>
                'Lorem ipsum dolor sitametconsecteturadipisicing elit. Vitae id doloribus quam eveniet ut? Minusomnis, eos hic labore optio cupiditatetemporaest necessitatibus sint? Tenetur',
        ],
    ];
@endphp

<div class="w-full xl:pt-[1rem] pt-[0.5rem] pb-12">
    <div class=" 2xl:w-[1300px] w-full max-2xl:px-4 mx-auto ">
        <div class="flex justify-between">
            <p class="text-gray-700 xl:text-2xl text-xl">LATEST NEWS</p>
            <div class="relative flex items-center justify-end gap-4">
                <button class="custom-button max-2xl:hidden" id="prevButton-3">
                    <i class="fas fa-chevron-left text-2xl transition-transform duration-300 hover:scale-110"></i>
                </button>
                <button class="custom-button max-2xl:hidden" id="nextButton-3">
                    <i class="fas fa-chevron-right text-2xl transition-transform duration-300 hover:scale-110"></i>
                </button>
            </div>
        </div>

        <div class="swiper-container swiper3 mt-6 overflow-hidden">
            <div id="product-list" class="swiper-wrapper">
                @foreach ($NewsData as $item)
                    <div data-aos="fade-left" data-aos-duration="1000" class="swiper-slide flex flex-col items-start w-full h-auto bg-white">
                        <div
                            class="relative w-full xl:h-[250px] lg:h-[300px] sm:h-[220px] h-[150px] cursor-pointer group flex items-center justify-center overflow-hidden">

                            <!-- Link คลิกได้เต็มพื้นที่ -->
                            <a href="{{ route('news-detail', ['id' => $item['id']]) }}"
                                class="absolute inset-0 z-10"></a>

                            <!-- รูปภาพ -->
                            <img class="w-full h-full object-cover group-hover:scale-110 duration-300 transition"
                                src="{{ $item['image'] }}" alt="{{ $item['name'] }}" loading="lazy">

                            <!-- Overlay เมื่อ hover -->
                            <div
                                class="absolute inset-0 bg-black/20 opacity-0 group-hover:opacity-100 transition-opacity duration-300 flex items-center justify-center">
                                <!-- ไอคอน -->
                                <img class=" xl:w-[80px] w-[40px] h-auto" src="/icons/view-alt-svgrepo-com.png"
                                    alt="">
                            </div>
                        </div>
                        <div class="xl:px-2 px-0">
                            <p class="xl:text-[18px] text-[14px] font-medium mt-3">
                                {{ $news['name'] }}
                            </p>
                            <p class="text-[#747474] xl:text-[14px] text-[12px] font-[300] mt-1">
                                {{ $news['date'] }}
                            </p>
                            <p class="text-[#747474] xl:text-[14px] text-[10px] font-[300] line-clamp-2 mt-4">
                                {{ $news['description'] }}
                            </p>
                            <button onclick="window.location.href='{{ route('news-detail', ['id' => $item['id']]) }}'"
                                class="xl:w-[120px] w-[80px] xl:py-2 py-1.5 rounded-full bg-gradient-to-r from-gray-900 to-gray-700 hover:from-gray-700 hover:to-gray-500 active:from-gray-600 active:to-gray-400 hover:scale-105 shadow-md xl:text-[16px] text-[12px] font-medium mt-4 mb-6 text-white transition-all duration-300 ease-in-out">
                                Read More
                            </button>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </div>
</div>

<script>
    document.addEventListener("DOMContentLoaded", function() {
        const swiper3 = new Swiper(".swiper3", {
            spaceBetween: 15,
            loop: true,
            pagination: {
                el: ".swiper3 .swiper-pagination",
                clickable: true,
            },
            navigation: {
                nextEl: "#nextButton-3",
                prevEl: "#prevButton-3",
            },
            // autoplay: {
            //     delay: 3000,
            //     disableOnInteraction: false
            // },
            breakpoints: {
                1270: {
                    slidesPerView: 3
                },
                764: {
                    slidesPerView: 3
                },
                600: {
                    slidesPerView: 3
                },
                500: {
                    slidesPerView: 2
                },
                300: {
                    slidesPerView: 2
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
