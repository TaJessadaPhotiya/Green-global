<div class="relative w-full h-full">
    <div
        class="2xl:w-[1300px] w-full h-full min-h-screen 2xl:min-h-[calc(100vh-94px)] mx-auto md:px-[4rem] px-[1rem] xl:pt-[4rem] pt-[2.5rem] xl:pb-[4rem] pb-[4rem] shadow-2xl ">
        <div class="container mx-auto">
            <div class="grid xl:grid-cols-2 grid-cols-1 xl:gap-6 gap-7 w-full">
                {{-- ซ้าย --}}
                <div class="w-full " data-aos="fade-right" data-aos-duration="1200">
                    <div class="w-full md:h-[430px] h-auto overflow-hidden">
                        <img class="w-full h-full object-cover" src={{ '/' . $news['thumbnail_link'] }}
                            alt={{ $news['thumbnail_alt'] }}>
                    </div>
                </div>
                {{-- ขวา --}}
                <div class="w-full" data-aos="fade-left" data-aos-duration="1200">
                    <p class="text-2xl text-[#098C46] font-semibold">{{ $news['title'] }}
                    </p>
                    <p class="text-[#8E8E8E] text-[14px] font-semibold mt-4">{{ $news['date'] }}</p>

                    {{-- ck --}}
                    <div class="ck-ui-li w-full min-h-[320px] mt-4 text-[18px] text-[#098C46]">
                        {!! $news['content'] !!}
                    </div>
                    <div class="border-[#098C46] border mt-4"></div>
                    <div class="flex sm:justify-end justify-center w-full">
                        <a href="javascript:history.back()"
                            class="flex items-start justify-center gap-4 w-[110px] text-white sm:text-[16px] text-sm font-medium text-center py-2 bg-[#19703D] hover:bg-[#EEC90E] hover:shadow-xl transition duration-200 rounded-md shadow-md drop-shadow-sm mt-6">
                            <img class="w-5 h-5" src="/icons/icon-park-solid_back.png" alt="">BACK
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
