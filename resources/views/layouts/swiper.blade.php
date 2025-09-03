
<div class="relative w-full xl:h-[500px] lg:h-[400px] md:h-[300px] iPad-mini:h-[300px] h-[180px]  overflow-hidden">
    <div id="mySwiper" class="swiper-container relative w-full h-full">
        <div class="swiper-wrapper">
            @foreach ($slides as $slide)
                <div class="swiper-slide relative">
                    <img class="w-full h-full object-cover" src="/{{ $slide->ad_image }}"
                        alt="{{ $slide->ad_image_alt }}">
                    <div class="absolute inset-0 bg-gradient-to-b from-black/10 via-transparent to-black/10"></div>
                </div>
            @endforeach
        </div>
        <!-- Pagination -->
        <div class="swiper-pagination w-full flex justify-center mb-3 max-xl:hidden z-20"></div>
    </div>

    <!-- Navigation Buttons -->
    <button id="prevButton"
        class="absolute 2xl:left-[8rem] left-6 top-1/2 -translate-y-1/2 hover:bg-[#eec90e] rounded-full transition duration-200 opacity-70 z-10">
        <img class="sm:w-9 w-5 sm:h-9 h-5" src="/icons/prev.png" alt="Previous Slide">
    </button>
    <button id="nextButton"
        class="absolute 2xl:right-[8rem] right-6 top-1/2 -translate-y-1/2 hover:bg-[#eec90e] rounded-full transition duration-200 opacity-70 z-10">
        <img class="sm:w-9 w-5 sm:h-9 h-5" src="/icons/next.png" alt="Next Slide">
    </button>
</div>

<style>
    .swiper-pagination-bullet {
        color: #fff;
        background: #ebebeb;
        border: 1px solid rgb(146, 146, 146);
        opacity: unset;
        width: 10px;
        height: 10px;
    }

    .swiper-pagination-bullet-active {
        background: rgb(255, 255, 255);
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

        // ซ่อนปุ่มเมื่อ scroll ลง
        const prevButton = document.getElementById("prevButton");
        const nextButton = document.getElementById("nextButton");
        const pagination = document.querySelector(".swiper-pagination");

        window.addEventListener("scroll", function() {
            if (window.scrollY > 40) {
                prevButton.classList.add("hidden");
                nextButton.classList.add("hidden");
                pagination.classList.add("hidden");
            } else {
                prevButton.classList.remove("hidden");
                nextButton.classList.remove("hidden");
                pagination.classList.remove("hidden");
            }
        });
    });
</script>
