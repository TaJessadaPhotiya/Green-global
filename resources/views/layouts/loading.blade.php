<!-- หน้าจอโหลด -->
<div id="loading-screen"
    class="loading-screen flex justify-center items-center w-full h-screen fixed top-0 left-0 bg-[#f4e1d2] z-50">
    <div class="flex flex-col justify-center items-center">
        <!-- ไอคอนกาแฟหมุน -->
        <div class="coffee-icon animate-spin mb-4">
            <img class="w-[100px]" src="/image/logo-GGS.png 1.png" alt="">
        </div>
        <!-- ข้อความกำลังโหลด -->
        <div class="font-messiri italic text-md font-semibold text-[#098C46] mt-4 ">LOADING <span class="text-xl text-[#098C46]">. . .</span></div>
    </div>
</div>

<!-- สไตล์สำหรับหน้าจอโหลด -->
<style>
    .loading-screen {
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background: rgba(17, 17, 17, 0.8);
        display: flex;
        justify-content: center;
        align-items: center;
        z-index: 9999;
        transition: opacity 1s ease-out;
    }

    .loading-screen.hidden {
        opacity: 0;
        visibility: hidden;
    }

    .coffee-icon {
        animation: spin 1.5s linear infinite;
    }

    @keyframes spin {
        0% {
            transform: rotate(0deg);
        }

        100% {
            transform: rotate(360deg);
        }
    }

</style>
