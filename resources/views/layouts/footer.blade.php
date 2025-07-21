<footer>
    <div class="relative flex justify-center w-full h-auto border-yellow-400 border-b-2 xl:py-[2.5rem] py-[3rem] bg-[#101010]">
        <div class="grid sm:grid-cols-3 grid-cols-1 xl:gap-[6rem] gap-6 xl:w-[1200px] w-full px-4 ">
            <ul class="flex flex-col list-disc list-inside max-sm:hidden">
                <li
                    class="xl:text-[14px] text-[12px] border-gray-300/20 border-t py-3 cursor-pointer text-gray-400 hover:text-yellow-500">
                    <a href="/" class="{{ Request::is('/') ? 'text-yellow-500' : 'text-gray-400' }}">HOME</a>
                </li>
                <li
                    class="xl:text-[14px] text-[12px] border-gray-300/20 border-t py-3 cursor-pointer text-gray-400 hover:text-yellow-500">
                    <a href="/menu" class="{{ Request::is('menu') ? 'text-yellow-500' : 'text-gray-400' }}">FOOD
                        MENU</a>
                </li>
                <li
                    class="xl:text-[14px] text-[12px] border-gray-300/20 border-t py-3 cursor-pointer text-gray-400 hover:text-yellow-500">
                    <a href="/news" class="{{ Request::is('news') ? 'text-yellow-500' : 'text-gray-400' }}">NEWS</a>
                </li>
                <li
                    class="xl:text-[14px] text-[12px] border-gray-300/20 border-t py-3 cursor-pointer text-gray-400 hover:text-yellow-500">
                    <a href="/about" class="{{ Request::is('about') ? 'text-yellow-500' : 'text-gray-400' }}">ABOUT
                        US</a>
                </li>
                <li
                    class="xl:text-[14px] text-[12px] border-gray-300/20 border-y py-3 cursor-pointer text-gray-400 hover:text-yellow-500">
                    <a href="/contact"
                        class="{{ Request::is('contact') ? 'text-yellow-500' : 'text-gray-400' }}">CONTACT
                        US</a>
                </li>
            </ul>

            <div class="w-full">
                <figure class="w-full h-[120px] border border-gray-300/20 ">
                    <img class="w-full h-full object-contain" src="/image/Logo.png" alt="">
                </figure>
                <p class="xl:text-[14px] text-[12px] text-gray-400 text-justify mt-4">Lorem ipsum dolor sit amet
                    consectetur adipisicing elit.
                    Alias minus necessitatibus quasi quaerat. Perferendis minima deserunt labore, quia tenetur alias.
                </p>
            </div>

            <ul class="flex flex-col list-disc list-inside">
                <li
                    class="xl:text-[14px] text-[12px] border-gray-300/20 border-t py-3 cursor-pointer hover:text-yellow-500 text-gray-400">
                    FAQS
                </li>
                <li
                    class="xl:text-[14px] text-[12px] border-gray-300/20 border-t py-3 cursor-pointer hover:text-yellow-500 text-gray-400">
                    RETRIEVE BILL
                </li>
                <li
                    class="xl:text-[14px] text-[12px] border-gray-300/20 border-y py-3 cursor-pointer hover:text-yellow-500 text-gray-400">
                    CUSTOMER SERVICE
                </li>

                <div class="text-sm text-gray-400 border-gray-300/20 border p-4 mt-8">
                    @ 2010-2021 Hanekwa. All rights reserved.
                </div>
            </ul>

        </div>
    </div>
</footer>
