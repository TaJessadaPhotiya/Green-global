<div class=" 2xl:w-[1300px] w-full max-2xl:px-4 mx-auto xl:mt-[5rem] mt-8 xl:mb-[5rem] mb-[2rem] ">
    <div class="2xl:w-[1300px] w-full">
        <p class="xl:text-4xl text-2xl font-semibold ">FOOD MENU</p>
        <div class="flex justify-between">
            <p class="xl:text-[16px] text-[12px] font-medium">THE KITCHEN BEEF BISTRO</p>
            <p class="xl:text-[16px] text-[12px] text-gray-400 font-medium">Home / Food Menu</p>
        </div>
    </div>

    <div class="border-gray-300/40 border-t-2 xl:mt-6 mt-4"></div>

    <div class="flex md:flex-row flex-col xl:gap-[4rem] gap-6 xl:mt-10 mt-6">
        {{-- ซ้าย --}}
        <div data-aos="fade-right" data-aos-duration="1000" class="md:w-1/2 w-full ">
            <div class="flex xl:gap-3 gap-2 w-full">
                @foreach ($room['image'] as $image)
                    <figure class="w-1/2 h-auto shadow-md">
                        <img class="w-full h-full object-cover" src="{{ $image }}" alt="Food Image">
                    </figure>
                @endforeach
            </div>
        </div>

        {{-- ขวา --}}
        <div data-aos="fade-left" data-aos-duration="900" class="md:w-1/2 w-full">
            <p class=" text-black xl:text-2xl text-xl ">{{ $room['name'] }}</p>

            <p class="text-[#747474] xl:text-[16px] text-[12px] font-[300] mt-2">Lorem ipsum dolor sit amet consectetur
                adipisicing elit. Vitae id doloribus quam eveniet ut? Minus omnis, eos hic labore optio cupiditate
                temporaest necessitatibus sint? Tenetur dolore maxime quasi quos. Lorem ipsum dolor sit amet consectetur
                adipisicing elit. Vitae id doloribus quam eveniet ut? Minus omnis, eos hic labore optio cupiditate
                temporaest necessitatibus sint? Tenetur dolore maxime quasi quos.
            </p>

            <button
                class="xl:w-[120px] w-[80px] xl:py-2 py-1.5 rounded-full bg-gradient-to-r from-gray-900 to-gray-700 hover:from-gray-700 hover:to-gray-500 active:from-gray-600 active:to-gray-400 hover:scale-105 shadow-md xl:text-[16px] text-[12px] font-medium xl:mt-12 mt-6  text-white transition-all duration-300 ease-in-out">
                {{ $room['price'] }}
            </button>
        </div>
    </div>
</div>
