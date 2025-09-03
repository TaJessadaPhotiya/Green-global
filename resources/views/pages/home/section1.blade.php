<div class="relative w-full h-full">
    <div
        class="2xl:w-[1300px] w-full min-h-full 2xl:min-h-[calc(100vh-592px)] mx-auto md:px-[4rem] px-[1rem] xl:pt-[4rem] pt-[1rem] xl:pb-[6rem] pb-[4rem] 2xl:shadow-2xl">
        <div class="container mx-auto" data-aos="fade-up" data-aos-duration="1200">
            <h1 class="text-[#098C46] lg:text-2xl text-xl font-semibold text-center italic">
                {{ $homeContent->title }}<br />
                {{ $homeContent->description }}
            </h1>
            <div>
              {!! $homeContent->content !!}
            </div>
        </div>
    </div>
</div>
