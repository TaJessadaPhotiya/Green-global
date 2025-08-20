<!-- Warranty Popup Overlay -->
<div id="warranty-popup" class="fixed inset-0 bg-black/20 bg-opacity-60 z-50 flex justify-center items-center p-4">
    <div class="relative flex justify-center bg-[#283891] rounded-lg shadow-xl">

        <!-- ปุ่มกากบาท SVG -->
        <button onclick="closeWarrantyPopup()"
            class="absolute top-3 right-3 text-white hover:text-red-500 focus:outline-none" aria-label="Close">
            <svg xmlns="http://www.w3.org/2000/svg" class="w-6 h-6 md:w-7 md:h-7" fill="none" viewBox="0 0 24 24"
                stroke="currentColor" stroke-width="2">
                <path stroke-linecap="round" stroke-linejoin="round" d="M6 18L18 6M6 6l12 12" />
            </svg>
        </button>

        <div class="w-[90%] md:w-[700px] max-h-[83vh] overflow-y-auto py-6 xl:px-[3rem] px-2">
            <h2 class="text-2xl text-center font-bold mb-4 text-white">{{ $proviso->title }}</h2>
            <div class="text-sm text-gray-300 space-y-4">
                {!! $proviso->content !!}
            </div>

            <!-- ปุ่ม Accept -->
            <div class="flex justify-center mt-6">
                <button onclick="closeWarrantyPopup()"
                    class="bg-[#DEDEDE] text-[#8E8E8E] text-sm px-5 py-1.5 rounded shadow-xl hover:bg-blue-500 hover:text-white transition">
                    ACPPECT
                </button>
            </div>
        </div>

    </div>
</div>

<!-- JavaScript -->
<script>
    function closeWarrantyPopup() {
        document.getElementById('warranty-popup').style.display = 'none';
    }
</script>
