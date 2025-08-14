<div class="relative w-full h-full">
    <div
        class="2xl:w-[1300px] w-full h-full min-h-screen 2xl:min-h-[calc(100vh-92px)] mx-auto md:px-[4rem] px-[1rem] xl:pt-[4rem] pt-[3rem] xl:pb-[4rem] pb-[4rem] shadow-2xl ">
        <div class="container mx-auto " data-aos="fade-up" data-aos-duration="1200">
            <div class="xl:w-[920px] w-full h-auto mx-auto">
                <img class="w-full h-full object-cover" src="/image/Rectangle 156 (1).png" alt="">
            </div>
            <h1 class="text-[#098C46] lg:text-2xl text-xl font-semibold text-center italic mt-6">
                {{ $visionContent->title }}
            </h1>

            {{-- ck --}}
            <div class="xl:mt-6 mt-4">
                {!! $visionContent->content !!}
            </div>
            <h1 class="text-[#098C46] lg:text-2xl text-xl font-semibold text-center italic mt-6">
                {!! $visionContent->description !!}
            </h1>
        </div>
    </div>
</div>
