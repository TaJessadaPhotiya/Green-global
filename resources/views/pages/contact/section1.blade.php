@php
    $images = ['/image/Rectangle 158.png', '/image/Rectangle 157.png', '/image/Rectangle 156.png'];
@endphp

<div class="relative w-full h-full">
    <div
        class="2xl:w-[1300px] flex items-center w-full h-full min-h-[calc(100vh-10px)] mx-auto md:px-[4rem] px-[1rem] xl:pt-[4rem] pt-[2.5rem] xl:pb-[4rem] pb-[4rem] shadow-2xl ">
        <div class="container mx-auto ">
            <div class="w-full">
                <p class="text-3xl text-center text-[#19703D] font-semibold animate-focusInExpand">
                    CONTACT US
                </p>
                <div class="border-b-2 border-[#19703D]"></div>
                <div class="border-b-2 border-[#19703D] mt-1"></div>
            </div>
            <div class="grid md:grid-cols-2 grid-cols-1 gap-6 w-full mt-12">
                {{-- ซ้าย --}}
                <div class="w-full" data-aos="fade-right" data-aos-duration="1200">
                    <div class="flex items-center gap-3">
                        <img class="sm:w-[60px] w-[50px] sm:h-[60px] h-[50px] drop-shadow-sm"
                            src="/icons/icon-telephone.png" alt="">
                        <div class="{{ $language == 'ar' ? 'border-r-2 pr-3' : 'border-l-2 pl-3' }} border-[#008C46] ">
                            <p class="text-[#19703D] sm:text-xl text-md font-semibold">Phone</p>
                            <p class="text-[#19703D] text-md font-sans">0933365675</p>
                        </div>
                    </div>
                    <div class="flex items-center gap-3 mt-5">
                        <img class="sm:w-[60px] w-[50px] sm:h-[60px] h-[50px] drop-shadow-sm" src="/icons/icon-web.png"
                            alt="">
                        <div class="{{ $language == 'ar' ? 'border-r-2 pr-3' : 'border-l-2 pl-3' }} border-[#008C46] ">
                            <p class="text-[#19703D] sm:text-xl text-md font-semibold">Website</p>
                            <p class="text-[#19703D] text-md font-sans">WWW.REENGLOBLSEEDS.COM</p>
                        </div>
                    </div>
                    <div class="flex items-center gap-3 mt-5">
                        <img class="sm:w-[60px] w-[50px] sm:h-[60px] h-[50px] drop-shadow-sm" src="/icons/icon-mail.png"
                            alt="">
                        <div class="{{ $language == 'ar' ? 'border-r-2 pr-3' : 'border-l-2 pl-3' }} border-[#008C46] ">
                            <p class="text-[#19703D] sm:text-xl text-md font-semibold">E-Mail</p>
                            <p class="text-[#19703D] text-md font-sans">ggs.web@greenglobalseeds.com</p>
                        </div>
                    </div>
                    <div class="flex items-center gap-3 mt-5">
                        <img class="sm:w-[60px] w-[50px] sm:h-[60px] h-[50px] drop-shadow-sm"
                            src="/icons/icon-address.png" alt="">
                        <div class="{{ $language == 'ar' ? 'border-r-2 pr-3' : 'border-l-2 pl-3' }} border-[#008C46] ">
                            <p class="text-[#19703D] sm:text-xl text-md font-semibold">Address</p>
                            <p class="text-[#19703D] text-md font-sans">GREEN GLOBAL SEEDS COMPANY
                                199/376, Moo 4, Rangsit Sub-district, Thanyaburi District, Pathum Thani 12110. Thailand
                            </p>
                        </div>
                    </div>
                    <div class="flex justify-center w-full mt-8">
                        <figure class="relative">
                            <img class="w-auto h-[140px]" src="/image/Group 104.png" alt="">
                            <img class=" absolute top-1/2 right-full -translate-y-1/2 w-auto h-[25px] mr-2"
                                src="/icons/scan me.png" alt="">
                        </figure>
                    </div>
                </div>

                {{-- ซ้าย --}}
                <div class="w-full " data-aos="fade-left" data-aos-duration="1200">
                    <p class="text-[#19703D] text-xl font-semibold text-center max-xl:mt-6">Tell Us Your Message</p>
                    <div class="space-y-4 w-full max-w-md mx-auto mt-4">
                        <!-- Name -->
                        <div>
                            <label class="block text-sm font-semibold text-[#005F25] mb-1" for="name">Name:</label>
                            <input type="text" id="name" name="name"
                                class="w-full px-4 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-green-600"
                                placeholder="Enter your name" />
                        </div>

                        <!-- Email -->
                        <div>
                            <label class="block text-sm font-semibold text-[#005F25] mb-1" for="email">Email:</label>
                            <input type="email" id="email" name="email"
                                class="w-full px-4 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-green-600"
                                placeholder="Enter your email" />
                        </div>

                        <!-- Phone -->
                        <div>
                            <label class="block text-sm font-semibold text-[#005F25] mb-1" for="phone">Phone:</label>
                            <input type="tel" id="phone" name="phone"
                                class="w-full px-4 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-green-600"
                                placeholder="Enter your phone number" />
                        </div>

                        <!-- Message -->
                        <div>
                            <label class="block text-sm font-semibold text-[#005F25] mb-1"
                                for="message">Message:</label>
                            <textarea id="message" name="message" rows="4"
                                class="w-full px-4 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-green-600"
                                placeholder="Write your message here"></textarea>
                        </div>
                    </div>
                    <form class="flex justify-center w-full">
                        <button type="submit"
                            class="mt-4 w-[95px] text-white py-1.5 bg-[#19703D] hover:bg-[#EEC90E] hover:shadow-xl transition duration-200 rounded-md shadow-md drop-shadow-sm">
                            Send
                        </button>
                    </form>
                </div>
            </div>
            {{-- Image --}}
            <div class="flex flex-wrap justify-center gap-4 w-full mt-12 mb-12 max-size-mini:hidden" data-aos="fade-up"
                data-aos-duration="1200">
                @foreach ($images as $image)
                    <img class="h-[270px] max-w-full object-cover flex-1 min-w-[200px] shadow-md"
                        src="{{ $image }}" alt="">
                @endforeach
            </div>

            <!-- Swiper container -->
            <div class="w-full mt-12 mb-12 size-mini:hidden" data-aos="fade-up" data-aos-duration="1200">
                <div class="swiper mySwiper3 relative">
                    <div class="swiper-wrapper">
                        @foreach ($images as $image)
                            <div class="swiper-slide flex justify-center">
                                <img class="h-[270px] max-w-full object-cover flex-1 min-w-[200px] shadow-md "
                                    src="{{ $image }}" alt="">
                            </div>
                        @endforeach
                    </div>

                    <!-- Navigation buttons -->
                    <div class="swiper-button-prev3 text-[#098C46]"></div>
                    <div class="swiper-button-next3 text-[#098C46]"></div>

                    <!-- ✅ Pagination dots -->
                    <div class="swiper-pagination absolute top-12 w-full flex justify-center z-20 "></div>
                </div>
            </div>

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
        new Swiper(".mySwiper3", {
            slidesPerView: 1,
            spaceBetween: 10,
            navigation: {
                nextEl: ".swiper-button-next3",
                prevEl: ".swiper-button-prev3",
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
