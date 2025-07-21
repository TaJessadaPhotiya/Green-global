@php
    $NewsData = [
        [
            'id' => 1,
            'image' => '/image/11.jpg',
            'name' => 'WorldHotels Launches WorldHotelsTo Crafted Collection 1',
            'date' => 'March 26, 2021',
            'description' =>
                'Lorem ipsum dolor sitametconsecteturadipisicing elit. Vitae id doloribus quam eveniet ut? Minusomnis, eos hic labore optio cupiditatetemporaest necessitatibus sint? Tenetur',
        ],
        [
            'id' => 2,
            'image' => '/image/22.jpg',
            'name' => 'WorldHotels Launches WorldHotelsTo Crafted Collection 2',
            'date' => 'March 27, 2021',
            'description' =>
                'Lorem ipsum dolor sitametconsecteturadipisicing elit. Vitae id doloribus quam eveniet ut? Minusomnis, eos hic labore optio cupiditatetemporaest necessitatibus sint? Tenetur',
        ],
        [
            'id' => 3,
            'image' => '/image/33.jpg',
            'name' => 'WorldHotels Launches WorldHotelsTo Crafted Collection 3',
            'date' => 'March 28, 2021',
            'description' =>
                'Lorem ipsum dolor sitametconsecteturadipisicing elit. Vitae id doloribus quam eveniet ut? Minusomnis, eos hic labore optio cupiditatetemporaest necessitatibus sint? Tenetur',
        ],
        [
            'id' => 4,
            'image' => '/image/44.jpg',
            'name' => 'WorldHotels Launches WorldHotelsTo Crafted Collection 4',
            'date' => 'March 29, 2021',
            'description' =>
                'Lorem ipsum dolor sitametconsecteturadipisicing elit. Vitae id doloribus quam eveniet ut? Minusomnis, eos hic labore optio cupiditatetemporaest necessitatibus sint? Tenetur',
        ],
        [
            'id' => 5,
            'image' => '/image/55.jpg',
            'name' => 'WorldHotels Launches WorldHotelsTo Crafted Collection 5',
            'date' => 'March 30, 2021',
            'description' =>
                'Lorem ipsum dolor sitametconsecteturadipisicing elit. Vitae id doloribus quam eveniet ut? Minusomnis, eos hic labore optio cupiditatetemporaest necessitatibus sint? Tenetur',
        ],
        [
            'id' => 6,
            'image' => '/image/66.jpg',
            'name' => 'WorldHotels Launches WorldHotelsTo Crafted Collection 6',
            'date' => 'March 31, 2021',
            'description' =>
                'Lorem ipsum dolor sitametconsecteturadipisicing elit. Vitae id doloribus quam eveniet ut? Minusomnis, eos hic labore optio cupiditatetemporaest necessitatibus sint? Tenetur',
        ],
    ];
@endphp

<div class=" 2xl:w-[1300px] w-full max-2xl:px-4 mx-auto xl:mt-[5rem] mt-8 xl:mb-[5rem] mb-[2rem] ">
    <div class="2xl:w-[1300px] w-full">
        <p class="xl:text-4xl text-2xl font-semibold ">NEWS</p>
        <div class="flex justify-between">
            <p class="xl:text-[16px] text-[12px] font-medium">THE KITCHEN BEEF BISTRO</p>
            <p class="xl:text-[16px] text-[12px] text-gray-400 font-medium">Home / Food Menu</p>
        </div>
    </div>

    <div class="flex flex-col w-full xl:mt-10 mt-5">
        @foreach ($NewsData as $index => $news)
            <div class="border-gray-300/40 border-t-2 xl:mb-10 mb-6 {{ $index > 0 ? 'xl:mt-10 mt-6' : '' }}"></div>
            <div data-aos="fade-up" data-aos-duration="1000" class="grid md:grid-cols-2 grid-cols-1 xl:gap-12 gap-4 ">
                <figure class="w-full sm:h-[300px] h-auto shadow-md bg-red-50">
                    <img class="w-full h-full object-cover" src={{ $news['image'] }} alt={{ $news['name'] }}>
                </figure>

                <div>
                    <p class="xl:text-[20px] text-[14px] font-medium">
                        {{ $news['name'] }}
                    </p>
                    <p class="text-[#747474] xl:text-[16px] text-[12px] font-[300] mt-1">
                        {{ $news['date'] }}
                    </p>
                    <p class="text-[#747474] xl:text-[16px] text-[12px] font-[300] line-clamp-4 mt-4">
                        {{ $news['description'] }}
                    </p>
                    <button onclick="window.location.href='{{ route('news-detail', ['id' => $news['id']]) }}'"
                        class="mt-6 xl:w-[120px] w-[90px] xl:py-2 py-1.5 rounded-full bg-gradient-to-r from-gray-900 to-gray-700 hover:from-gray-700 hover:to-gray-500 active:from-gray-600 active:to-gray-400 hover:scale-105 shadow-md xl:text-[14px] text-[12px] font-medium text-white transition-all duration-300 ease-in-out">
                        Read More
                    </button>
                </div>
            </div>
            @if ($loop->last)
                <div class="border-gray-300/40 border-t-2 xl:mt-10 mt-6 "></div>
            @endif
        @endforeach
    </div>

    <!-- Pagination -->
    <div class="flex justify-center w-full xl:mt-12 mt-8">
        <div id="pagination" class="flex space-x-2 mt-4 "></div>
    </div>

</div>

<script>
    let totalPages = 4;
    let currentPage = parseInt(localStorage.getItem("currentPage")) || 1;

    function createPagination(pages, page) {
        localStorage.setItem("currentPage", page);
        currentPage = page;

        let paginationHTML = '<div class="flex gap-2">';

        if (page > 1) {
            paginationHTML += `
                <button onclick="createPagination(${pages}, ${page - 1})" class="px-3 py-1 bg-gray-700 rounded hover:bg-gray-600 text-gray-300">
                    <i class="fas fa-chevron-left"></i>
                </button>`;
        }

        for (let p = 1; p <= pages; p++) {
            let activeClass = page === p ? "bg-yellow-500 text-white" : "bg-gray-700 text-gray-300 hover:bg-gray-600";
            paginationHTML +=
                `<button onclick="createPagination(${pages}, ${p})" class="px-3 py-1 rounded ${activeClass}">${p}</button>`;
        }

        if (page < pages) {
            paginationHTML += `
                <button onclick="createPagination(${pages}, ${page + 1})" class="px-3 py-1 bg-gray-700 rounded hover:bg-gray-600 text-gray-300">
                    <i class="fas fa-chevron-right"></i>
                </button>`;
        }

        paginationHTML += '</div>';

        document.getElementById("pagination").innerHTML = paginationHTML;
    }

    createPagination(totalPages, currentPage);
</script>
