<div class="relative w-full h-full">
    <div
        class="2xl:w-[1300px] w-full h-full min-h-[calc(100vh-94px)] mx-auto md:px-[4rem] px-[1rem] xl:pt-[4rem] pt-[2.5rem] xl:pb-[4rem] pb-[4rem] shadow-2xl ">
        <div class="container mx-auto">
            <div class="grid xl:grid-cols-2 grid-cols-1 xl:gap-6 gap-7 w-full">
                {{-- ซ้าย --}}
                <div class="flex flex-col xl:gap-4 gap-3 w-full ">
                    <div class="w-full md:h-[400px] h-auto rounded-tl-[50px] overflow-hidden">
                        <img class="w-full h-full object-cover" src="{{ $product->thumbnail }}" alt="">
                    </div>
                    <div class="grid grid-cols-3 xl:gap-4 gap-3 w-full">
                        <div class="w-full">
                            <figure
                                class="w-full md:h-[130px] sm:h-[100px] h-[75px] xl:rounded-2xl rounded-lg overflow-hidden shadow-md cursor-pointer">
                                <img class="w-full h-full object-cover" src="/image/Rectangle 1692.png" alt="">
                            </figure>
                            <p class="xl:text-lg sm:text-md text-sm text-[#098C46] text-center font-semibold mt-1">
                                Plant Growth
                            </p>
                        </div>
                        <div class="w-full">
                            <figure
                                class="flex items-center justify-center w-full md:h-[130px] sm:h-[100px] h-[75px] xl:rounded-2xl rounded-lg bg-[#098C46] overflow-hidden shadow-md cursor-pointer">
                                <img class="w-auto sm:h-[85px] h-[60px] " src="/icons/chevron-left-svgrepo-com.png"
                                    alt="">
                            </figure>
                            <p class="xl:text-lg sm:text-md text-sm text-[#098C46] text-center font-semibold mt-1">
                                Watch Video
                            </p>
                        </div>
                        <div class="w-full">
                            <figure
                                class="flex items-center justify-center w-full md:h-[130px] sm:h-[100px] h-[75px] xl:rounded-2xl rounded-lg bg-[#098C46] overflow-hidden shadow-md cursor-pointer">
                                <img class="w-auto sm:h-[85px] h-[50px] "
                                    src="/icons/fluent_document-pdf-32-regular.png" alt="">
                            </figure>
                            <p class="xl:text-lg sm:text-md text-sm text-[#098C46] text-center font-semibold mt-1">
                                Download PDF
                            </p>
                        </div>
                    </div>
                </div>
                {{-- ขวา --}}
                <div class="w-full">
                    <div class="text-2xl text-[#8E8E8E]">{{ $product->title }} | <span
                            class="text-[#098C46] font-semibold">{{ $product->product_code }}</span></div>
                    <div class="flex items-start gap-6 mt-4 mb-6">
                        <figure>
                            <img class="min-w-[70px] h-[70px] drop-shadow-md" src="/icons/icon-plant.png"
                                alt="">
                            <figcaption class="text-center text-md font-[600] text-[#7AC53A] ">PLANT</figcaption>
                        </figure>
                        <ul class="text-[#098C46] text-[14px]/8 ">
                            <li>- Good branching plant with heat setting.</li>
                            <li>- Good leaf covering plant, and early maturity.</li>
                            <li>- Cost management via early maturity and open field practice.</li>
                        </ul>
                    </div>
                    <div class="flex items-start gap-6 mt-4 mb-6">
                        <figure>
                            <img class="min-w-[70px] h-[70px] drop-shadow-md" src="/icons/icon-fruit.png"
                                alt="">
                            <figcaption class="text-center text-md font-[600] text-[#7AC53A] ">FRUIT</figcaption>
                        </figure>
                        <ul class="text-[#098C46] text-[14px]/8 ">
                            <li>- The fruit weighs 100–120 grams.</li>
                            <li>- It has a square shape.</li>
                            <li>- It has very good transportation ability.</li>
                        </ul>
                    </div>
                    <div class="flex items-start gap-6 mt-4 mb-6">
                        <figure>
                            <img class="min-w-[70px] h-[70px] drop-shadow-md" src="/icons/icon-taste.png"
                                alt="">
                            <figcaption class="text-center text-md font-[600] text-[#7AC53A] ">TASTE</figcaption>
                        </figure>
                        <ul class="text-[#098C46] text-[14px]/8 ">
                            <li>- Good branching plant with heat setting.</li>
                            <li>- Good leaf covering plant, and early maturity.</li>
                            <li>- Cost management via early maturity and open field practice.</li>
                        </ul>
                    </div>
                    <div class="flex items-start gap-6 mt-4 mb-6">
                        <figure>
                            <img class="min-w-[70px] h-[70px] drop-shadow-md" src="/icons/icon-disease.png"
                                alt="">
                            <figcaption class="text-center text-md font-[600] text-[#7AC53A] ">DISEASE</figcaption>
                        </figure>
                        <ul class="text-[#098C46] text-[14px]/8 ">
                            <li>- Good branching plant with heat setting.</li>
                            <li>- Good leaf covering plant, and early maturity.</li>
                            <li>- Cost management via early maturity and open field practice.</li>
                        </ul>
                    </div>
                    <div class="border-[#098C46] border"></div>
                    <div class="flex sm:justify-end justify-center w-full">
                        <a href="/<?= $language ?>/product"
                            class="flex items-start justify-center gap-4 w-[110px] text-white sm:text-[16px] text-sm font-medium text-center py-2 bg-[#19703D] hover:bg-[#EEC90E] hover:shadow-xl transition duration-200 rounded-md shadow-md drop-shadow-sm mt-6">
                            <img class="w-5 h-5" src="/icons/icon-park-solid_back.png" alt="">BACK
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
