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
            <h2 class="text-2xl text-center font-bold mb-4 text-white">WARRANTY AND LIMITATION OF LIABILITY</h2>
            <div class="text-sm text-gray-300 space-y-4">
                <p>
                    The Company warrants that the seed in this package conforms to the Company’s standard specifications
                    and
                    labeling.
                    To the extent permissible under applicable law, the Company hereby disclaims all express or implied
                    warranties,
                    including warranties of merchantability and fitness for a particular purpose.
                </p>
                <p>
                    There are no other warranties, including warranties of crop performance or freedom from disease
                    (even if
                    seed-borne).
                    Weather conditions, soil, farming experience, and other variables — including new and mutated
                    diseases
                    and chemicals —
                    can have a major effect on the successful farming of any seeds. Therefore, no warranty against
                    disease,
                    variety,
                    or crop performance is given or implied.
                </p>
                <p>
                    The Company’s total liability in relation to this seed — however such liability may arise — is
                    limited
                    in amount
                    to the purchase price of the seed. The Company shall not be liable to the buyer for any direct,
                    special,
                    incidental,
                    or consequential losses or damages, regardless of whether such damages are claimed in contract, tort
                    (including negligence or breach of statutory duty), misrepresentation, or otherwise.
                </p>

                <h3 class="text-lg font-semibold mt-6">Notice of Claim</h3>
                <p>
                    Notice of any claim in connection with the warranty expressly made herein shall be given within a
                    reasonable time after discovery.
                    Notice given after the point in time at which the Company cannot physically inspect or examine the
                    seed
                    or the resulting crops
                    shall be deemed not to be reasonable notice hereunder.
                </p>

                <h3 class="text-lg font-semibold mt-6">Product & Variety Disclaimer</h3>
                <p>
                    Weather conditions, soil, farming experience, and other variables — including new and mutated
                    diseases
                    and chemicals —
                    can have a major effect on the successful farming of any seeds. Therefore, no warranty against
                    disease,
                    variety, or crop performance is provided. load
                    Weather conditions, soil, farming experience, and other variables — including new and mutated
                    diseases
                    and chemicals —
                    can have a major effect on the successful farming of any seeds. Therefore, no warranty against
                    disease,
                    variety, or crop performance is provided. load
                    Weather conditions, soil, farming experience, and other variables — including new and mutated
                    diseases
                    and chemicals —
                    can have a major effect on the successful farming of any seeds. Therefore, no warranty against
                    disease,
                    variety, or crop performance is provided. load
                    Weather conditions, soil, farming experience, and other variables — including new and mutated
                    diseases
                    and chemicals —
                    can have a major effect on the successful farming of any seeds. Therefore, no warranty against
                    disease,
                    variety, or crop performance is provided. load
                </p>
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
