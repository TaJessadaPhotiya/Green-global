@php
    $target_id = 2;

    // ดึงสินค้าที่ product_new = 1 และ id = 2
    // $new_product = $menu_product->where('product_new', 1)->firstWhere('id', $target_id);

@endphp

<div class="relative w-full h-full">
    <div
        class="2xl:w-[1300px] w-full h-full overflow-hidden min-h-screen 2xl:min-h-[calc(100vh-92px)] mx-auto 2xl:pt-[5rem] pt-[3rem] md:px-[4rem] px-[1rem] xl:pb-[4rem] pb-[6rem] shadow-2xl ">
        <div class="container mx-auto">
            <div class="grid lg:grid-cols-2 grid-cols-1 gap-6 w-full">
                {{-- ซ้าย --}}
                <div class="w-full" data-aos="fade-right" data-aos-duration="1200">
                    @if ($NewsData)
                        <div class="sm:w-[300px] w-full bg-[#EEC90E] py-1 pr-4 max-sm:pl-4">
                            <div class="bg-[#098C46] p-1">
                                <p class="text-center text-white text-lg font-semibold">NEWS</p>
                            </div>
                        </div>
                        <div class="w-full rounded-xl shadow-md overflow-hidden mt-4">
                            <div class="w-full xl:h-[360px] sm:h-[260px] h-[250px] bg-[#FFFAE8] py-4 xl:px-[3rem] px-4">
                                <figure class="relative w-full h-full rounded-xl overflow-hidden">
                                    {{-- ป้ายวิบวับ --}}
                                    <img class="flash-img absolute top-2 left-2 sm:w-[50px] w-[40px] sm:h-[50px] h-[40px] drop-shadow-sm z-10"
                                        src="/image/Group 108.png" alt="">
                                    <img class="w-full h-full object-cover" src={{ '/' . $NewsData->thumbnail_link }}
                                        alt={{ $NewsData->thumbnail_alt }}>
                                </figure>
                            </div>
                            <div class="flex flex-col w-full">
                                <div class="w-full p-6">
                                    <p class="text-[#098C46] sm:text-xl text-lg font-semibold">
                                        {{ $NewsData->title ?? '-' }}
                                    </p>
                                    <p
                                        class="h-[40px] text-[#098C46] sm:text-[16px] text-sm font-normal line-clamp-2 mt-2">
                                        {{ $NewsData->description ?? '-' }}
                                    </p>
                                </div>
                                <div class="flex items-center justify-between px-6 py-4">
                                    <p class="text-[#B8B8B8] md:text-[16px] text-sm">
                                        {{ \Carbon\Carbon::parse($NewsData->updated_at)->format('M d, Y') }}
                                    </p>
                                    <a href={{ url('/' . $NewsData->iframe) }}
                                        class="w-[100px] text-white sm:text-[16px] text-sm font-medium text-center py-2 bg-[#19703D] hover:bg-[#EEC90E] hover:shadow-xl transition duration-200 rounded-md shadow-md drop-shadow-sm">
                                        Detail
                                    </a>
                                </div>
                            </div>
                        </div>
                    @endif
                </div>

                {{-- ขวา --}}
                <div class="w-full" data-aos="fade-left" data-aos-duration="1200">
                    @if ($NewsProduct)
                        <div class="sm:w-[300px] w-full bg-[#EEC90E] py-1 pr-4 max-sm:pl-4">
                            <div class="bg-[#098C46] p-1">
                                <p class="text-center text-white text-lg font-semibold">NEW PRODUCT</p>
                            </div>
                        </div>
                        <div class="w-full rounded-xl shadow-md overflow-hidden mt-4">
                            <div class="w-full xl:h-[360px] sm:h-[260px] h-[250px] bg-[#FFFAE8] py-4 xl:px-[3rem] px-4">
                                <figure class=" relative w-full h-full rounded-xl overflow-hidden">
                                    {{-- ป้ายวิบวับ --}}
                                    <img class="flash-img absolute top-2 left-2 sm:w-[50px] w-[40px] sm:h-[50px] h-[40px] drop-shadow-sm z-10"
                                        src="/image/Group 108.png" alt="">
                                    <img class="w-full h-full object-cover"
                                        src={{ '/' . $NewsProduct['thumbnail_link'] }}
                                        alt={{ '/' . $NewsProduct['thumbnail_alt'] }}>
                                </figure>
                            </div>
                            <div class="flex flex-col w-full">
                                <div class="w-full p-6">
                                    <div class="text-[#8E8E8E] sm:text-xl text-lg font-medium">
                                        {{ $NewsProduct['c_title'] }} :
                                        <span class="text-[#098C46] sm:text-xl text-lg font-semibold ml-2">
                                            {{ $NewsProduct['title'] }}
                                        </span>
                                    </div>
                                    <p
                                        class="h-[40px] text-[#098C46] sm:text-[16px] text-sm font-normal line-clamp-2 mt-2">
                                        {{ $NewsProduct['description'] ?? 'Product description or summary text here...' }}
                                    </p>
                                </div>
                                <div class="flex items-center justify-end px-6 py-4">
                                    @if (Auth::check())
                                        <a href="{{ url('/' . $NewsProduct['short_url']) }}"
                                            class="w-[100px] text-white sm:text-[16px] text-sm font-medium text-center py-2 bg-[#19703D] hover:bg-[#EEC90E] hover:shadow-xl transition duration-200 rounded-md shadow-md drop-shadow-sm block">
                                            Detail
                                        </a>
                                    @else
                                        <div
                                            class="w-[100px] text-white sm:text-[16px] text-sm font-medium text-center py-2 bg-[#19703D]  transition duration-200 rounded-md shadow-md drop-shadow-sm block">
                                            Detail
                                        </div>
                                    @endif
                                </div>
                            </div>
                        </div>
                    @endif
                </div>
            </div>
        </div>
    </div>
</div>

<style>
    @keyframes flashRedOrange {

        0%,
        100% {
            filter: sepia(1) hue-rotate(-47deg) saturate(10);
            /* 🔴 แดง */
            opacity: 1;
        }

        50% {
            filter: none;
            opacity: 1;
        }
    }

    .flash-img {
        animation: flashRedOrange 0.5s infinite;
    }
</style>
