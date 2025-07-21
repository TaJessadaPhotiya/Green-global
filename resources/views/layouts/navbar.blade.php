<nav class="sticky top-0 z-20">
    <div class="relative bg-[#101010]"
        style="box-shadow: rgba(0, 0, 0, 0.19) 0px 10px 20px, rgba(0, 0, 0, 0.23) 0px 6px 6px;">
        {{-- <div class="relative bg-[#533a26]"> --}}

        <div
            class="relative flex items-center max-xl:justify-between max-xl:py-1 max-w-[1300px] xl:h-[100px] h-[55px] mx-auto 2xl:px-0 px-4 drop-shadow-md">
            <img class=" xl:w-[250px] w-[100px] h-auto" src="/image/Logo.png" alt="">

            <div class="max-xl:hidden flex items-center justify-end w-full space-x-10">
                <a class="text-[16px] font-normal text-white hover:text-yellow-500 transition duration-200 drop-shadow-md border-b-2 border-transparent 
                    {{ Request::is('/') ? 'border-yellow-500' : '' }}"
                    href="/">HOME</a>

                <a class="text-[16px] font-normal text-white hover:text-yellow-500 transition duration-200 drop-shadow-md border-b-2 border-transparent 
                    {{ Request::is('menu') || Request::is('detail*') ? 'border-yellow-500' : '' }}"
                    href="/menu">FOOD MENU</a>

                <a class="text-[16px] font-normal text-white hover:text-yellow-500 transition duration-200 drop-shadow-md border-b-2 border-transparent 
                    {{ Request::is('news') || Request::is('news-detail*') ? 'border-yellow-500' : '' }}"
                    href="/news">NEWS</a>

                <a class="text-[16px] font-normal text-white hover:text-yellow-500 transition duration-200 drop-shadow-md border-b-2 border-transparent 
                    {{ Request::is('about') ? 'border-yellow-500' : '' }}"
                    href="/about">ABOUT US</a>

                <a class="text-[16px] font-normal text-white hover:text-yellow-500 transition duration-200 drop-shadow-md border-b-2 border-transparent 
                    {{ Request::is('contact') ? 'border-yellow-500' : '' }}"
                    href="/contact">CONTACT US</a>

                <div
                    class="p-2.5 overflow-hidden w-[45px] h-[45px] hover:w-[230px] shadow-[2px_2px_20px_rgba(0,0,0,0.08)] border border-gray-200 rounded-md flex group items-center hover:duration-300 duration-300">
                    <div class="flex items-center justify-center fill-white">
                        <svg xmlns="http://www.w3.org/2000/svg" id="Isolation_Mode" data-name="Isolation Mode"
                            viewBox="0 0 24 24" width="22" height="22">
                            <path
                                d="M18.9,16.776A10.539,10.539,0,1,0,16.776,18.9l5.1,5.1L24,21.88ZM10.5,18A7.5,7.5,0,1,1,18,10.5,7.507,7.507,0,0,1,10.5,18Z">
                            </path>
                        </svg>
                    </div>
                    <input type="text"
                        class="outline-none text-[16px] bg-transparent w-full text-white font-normal px-4" />
                </div>
            </div>

            {{-- Hamberger --}}
            <div class="xl:hidden">
                @include('layouts.hamburger')
            </div>
        </div>
    </div>
</nav>
