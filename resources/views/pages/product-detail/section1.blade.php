<div class="relative w-full h-full">
    {{-- videoModal --}}
    <div id="videoModal" class="fixed inset-0 bg-black bg-opacity-70 flex items-center justify-center z-[999] hidden">
        <div class="relative w-[80vw] max-w-4xl aspect-video bg-black rounded-lg shadow-lg">
            <button id="closeVideoModal"
                class="absolute -top-[4rem] right-0 text-white text-[50px] font-bold hover:text-red-600 z-50">
                &times;
            </button>
            <iframe id="youtubeIframe" class="w-full h-full rounded-lg" src="{{ $product->youtube_link ?? '' }}"
                title="YouTube video player" frameborder="0"
                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                allowfullscreen>
            </iframe>
        </div>
    </div>

    <div
        class="2xl:w-[1300px] w-full h-full min-h-[calc(100vh-94px)] mx-auto md:px-[4rem] px-[1rem] xl:pt-[4rem] pt-[2.5rem] xl:pb-[4rem] pb-[4rem] shadow-2xl ">
        <div class="container mx-auto">
            <div class="grid xl:grid-cols-2 grid-cols-1 xl:gap-6 gap-7 w-full">
                {{-- ซ้าย --}}
                <div class="flex flex-col xl:gap-4 gap-3 w-full " data-aos="fade-right" data-aos-duration="1200">
                    <div class="w-full md:h-[400px] h-auto rounded-tl-[50px] overflow-hidden">
                        <img class="w-full h-full object-cover" src="{{ $product->thumbnail }}" alt="">
                    </div>
                    <div class="grid grid-cols-3 xl:gap-4 gap-3 w-full">
                        <div class="w-full">
                            <figure
                                class="w-full md:h-[130px] sm:h-[100px] h-[75px] xl:rounded-2xl rounded-lg overflow-hidden shadow-md ">
                                <img class="w-full h-full object-cover" src="{{ $product->thumbnail }}" alt="">
                            </figure>
                            <p class="xl:text-lg sm:text-md text-sm text-[#098C46] text-center font-semibold mt-1">
                                Plant Growth
                            </p>
                        </div>
                        <div class="w-full group cursor-pointer" id="openVideoModal">
                            <figure
                                class="flex items-center justify-center w-full md:h-[130px] sm:h-[100px] h-[75px] xl:rounded-2xl rounded-lg bg-[#098C46] group-hover:bg-[#7AC53A] transition duration-200 overflow-hidden shadow-md">
                                <img class="w-auto sm:h-[85px] h-[60px]" src="/icons/chevron-left-svgrepo-com.png"
                                    alt="Watch Video" />
                            </figure>
                            <p
                                class="xl:text-lg sm:text-md text-sm text-[#098C46] group-hover:text-[#7AC53A] text-center font-semibold mt-1">
                                Watch Video
                            </p>
                        </div>
                        <a class="w-full group" href="/pdf/test.pdf" target="_blank"
                            onclick="event.preventDefault(); window.open('/pdf/test.pdf');">
                            <figure
                                class="flex items-center justify-center w-full md:h-[130px] sm:h-[100px] h-[75px] xl:rounded-2xl rounded-lg bg-[#098C46] group-hover:bg-[#7AC53A] transition duration-200 overflow-hidden shadow-md cursor-pointer">
                                <img class="w-auto sm:h-[85px] h-[50px]" src="/icons/fluent_document-pdf-32-regular.png"
                                    alt="">
                            </figure>
                            <p
                                class="xl:text-lg sm:text-md text-sm text-[#098C46] group-hover:text-[#7AC53A] text-center font-semibold mt-1">
                                ดู PDF
                            </p>
                        </a>
                    </div>
                </div>
                {{-- ขวา --}}
                <div class="w-full" data-aos="fade-left" data-aos-duration="1200">
                    <div class="xl:text-2xl text-xl text-[#8E8E8E]">{{ $product->title }} | <span
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

{{-- Script --}}
<script>
    document.addEventListener("DOMContentLoaded", function() {
        const openBtn = document.getElementById("openVideoModal");
        const closeBtn = document.getElementById("closeVideoModal");
        const modal = document.getElementById("videoModal");
        const iframe = document.getElementById("youtubeIframe");

        const youtubeUrl = "{{ $product->youtube_link ?? '' }}?autoplay=1";

        openBtn.addEventListener("click", () => {
            iframe.src = youtubeUrl; // ตั้งค่า URL พร้อม autoplay
            modal.classList.remove("hidden");
        });

        closeBtn.addEventListener("click", () => {
            iframe.src = ""; // หยุดวีดีโอ
            modal.classList.add("hidden");
        });

        modal.addEventListener("click", (e) => {
            if (e.target === modal) {
                iframe.src = "";
                modal.classList.add("hidden");
            }
        });
    });
</script>

<script>
    function openPDFPreview(pdfUrl) {
        document.getElementById('pdfViewer').src = pdfUrl;
        document.getElementById('downloadPDFLink').href = pdfUrl;
        document.getElementById('pdfModal').classList.remove('hidden');
    }

    function closePDFModal() {
        document.getElementById('pdfViewer').src = "";
        document.getElementById('pdfModal').classList.add('hidden');
    }
</script>
