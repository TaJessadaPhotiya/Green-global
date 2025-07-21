<div class=" 2xl:w-[1300px] w-full max-2xl:px-4 mx-auto xl:mt-[5rem] mt-8 xl:mb-[2rem] mb-[1rem] ">
    <div class="2xl:w-[1300px] w-full">
        <p class="xl:text-4xl text-2xl font-semibold ">NEWS</p>
        <div class="flex justify-between">
            <p class="xl:text-[16px] text-[12px] font-medium">THE KITCHEN BEEF BISTRO</p>
            <p class="xl:text-[16px] text-[12px] text-gray-400 font-medium">Home / Food Menu</p>
        </div>
    </div>

    <div class="flex flex-col w-full xl:mt-10 mt-5">
        <div class="border-gray-300/40 border-t-2 xl:mb-10 mb-6 "></div>
        <div class="grid md:grid-cols-2 grid-cols-1 xl:gap-[4rem] gap-4">
            <div data-aos="fade-right" data-aos-duration="1000" class=" 2xl:order-1 order-2 ">
                <p class="xl:text-[20px] text-[14px] font-medium">
                    {{ $news['name'] }}
                </p>
                <p class="text-[#747474] xl:text-[16px] text-[12px] font-[300] mt-1">
                    {{ $news['date'] }}
                </p>
                <p class="text-[#747474] xl:text-[16px] text-[12px] font-[300] line-clamp-4 mt-4">
                    {{ $news['description'] }}
                </p>
            </div>

            <div data-aos="fade-left" data-aos-duration="1000" class="2xl:order-2 order-1">
                <figure class="w-full sm:h-[370px] h-auto shadow-md ">
                    <img class="w-full h-full object-cover" src={{ $news['image'] }} alt={{ $news['name'] }}>
                </figure>
                <p class="xl:text-[16px] text-[12px] font-medium 2xl:mt-6 mt-3">
                    Shear on
                </p>
                <div class="flex gap-2 mt-1">
                    <figure
                        class="flex items-center justify-center xl:w-[50px] w-[35px] xl:h-[50px] h-[35px] rounded-md bg-[#3e5795]">
                        <img class="xl:w-[31px] w-[25px] h-auto " src="/icons/facebook.png" alt="">
                    </figure>
                    <figure
                        class="flex items-center justify-center xl:w-[50px] w-[35px] xl:h-[50px] h-[35px] rounded-md bg-[#d62c2b]">
                        <img class="xl:w-[31px] w-[25px] h-auto " src="/icons/youtube.png" alt="">
                    </figure>
                </div>
            </div>
        </div>

        <div class="border-gray-300/40 border-t-2 xl:mt-10 mt-6 "></div>

    </div>
</div>
