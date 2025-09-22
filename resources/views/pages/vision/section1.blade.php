@php
     $images = $visionContent->imagesOpsts->map(function ($img) {
        return asset($img->image_link);
    })->toArray();
@endphp

<div class="relative w-full h-full">
    <div
        class="2xl:w-[1300px] w-full h-full min-h-screen 2xl:min-h-[calc(100vh-92px)] mx-auto md:px-[4rem] px-[1rem] xl:pt-[4rem] pt-[3rem] xl:pb-[4rem] pb-[4rem] shadow-2xl ">

        <div class="container mx-auto" data-aos="fade-up" data-aos-duration="1200">
            <div
                class="swiper mySwiper4 relative xl:w-[920px] w-full sm:h-[310px] h-[260px] mx-auto rounded-lg overflow-hidden">
                <div class="swiper-wrapper">
                    @foreach ($images as $img)
                        <div class="swiper-slide flex justify-center">
                            <img class="w-full h-full object-cover" src="{{ $img }}" alt="slide image">
                        </div>
                    @endforeach
                </div>

                <!-- Navigation buttons -->
                {{-- <div class="swiper-button-prev4 text-[#098C46]"></div>
                <div class="swiper-button-next4 text-[#098C46]"></div> --}}

                <!-- Pagination dots -->
                <div class="swiper-pagination absolute top-12 w-full flex justify-center z-20"></div>
            </div>

            <h1 class="text-[#098C46] lg:text-2xl text-xl font-semibold text-center italic mt-6">
                {{ $visionContent->title }}
            </h1>

            {{-- ck --}}
            <div class="ck-ui-li xl:mt-6 mt-4">
                {!! $visionContent->content !!}
            </div>
            <h1 class="ck-ui-li text-[#098C46] lg:text-2xl text-xl font-semibold text-center italic mt-6">
                {!! $visionContent->description !!}
            </h1>
        </div>
    </div>
</div>


<style>
    .swiper-pagination-bullet {
        background-color: #a8c0b3;
        opacity: 0.5;
        transition: all 0.3s ease;
    }

    .swiper-pagination-bullet-active {
        background-color: #098C46;
        opacity: 1;
    }
</style>

<script>
    document.addEventListener("DOMContentLoaded", function() {
        new Swiper(".mySwiper4", {
            slidesPerView: 1,
            // spaceBetween: 10,
            navigation: {
                nextEl: ".swiper-button-next4",
                prevEl: ".swiper-button-prev4",
            },
            loop: true,
            pagination: {
                el: ".swiper-pagination",
                clickable: true,
            },
            autoplay: {
                delay: 2000,
                disableOnInteraction: false
            },
        });
    });
</script>
