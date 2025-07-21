<style>
    .ham {
        cursor: pointer;
        -webkit-tap-highlight-color: transparent;
        transition: transform 400ms;
        user-select: none;
    }

    .hamRotate.active {
        transform: rotate(45deg);
    }

    .line {
        fill: none;
        transition: stroke-dasharray 400ms, stroke-dashoffset 400ms;
        stroke: #e4b210;
        stroke-width: 5.5;
        stroke-linecap: round;
    }

    .ham1 .top {
        stroke-dasharray: 40 139;
    }

    .ham1 .bottom {
        stroke-dasharray: 40 180;
    }

    .ham1.active .top {
        stroke-dashoffset: -98px;
    }

    .ham1.active .bottom {
        stroke-dashoffset: -138px;
    }

    .sidebar {
        position: fixed;
        top: 55px;
        right: 0;
        width: 240px;
        height: 100vh;
        background: #101010;
        color: white;
        visibility: hidden;
        opacity: 0;
        transform: translateY(-20px);
        transition: opacity 0.4s ease, transform 0.4s ease, visibility 0s linear 0.4s;
        z-index: 100;
        flex-direction: column;
    }

    .sidebar.active {
        visibility: visible;
        opacity: 1;
        transform: translateY(0);
        transition: opacity 0.4s ease, transform 0.4s ease;
    }

    @media (min-width: 1300px) {
        .sidebar {
            display: none;
        }
    }

    .sidebar a {
        display: flex;
        align-items: center;
        gap: 10px;
        color: #ffffff;
        text-decoration: none;
        font-size: 14px;
        transition: background 0.3s;
    }

    .sidebar img {
        width: 20px;
        height: auto;
    }
</style>

<div>
    <svg class="ham hamRotate ham1" viewBox="0 0 100 100" width="40" onclick="toggleSidebar()">
        <path class="line top"
            d="m 30,33 h 40 c 0,0 9.044436,-0.654587 9.044436,-8.508902 0,-7.854315 -8.024349,-11.958003 -14.89975,-10.85914 -6.875401,1.098863 -13.637059,4.171617 -13.637059,16.368042 v 40" />
        <path class="line middle" d="m 30,50 h 40" />
        <path class="line bottom"
            d="m 30,67 h 40 c 12.796276,0 15.357889,-11.717785 15.357889,-26.851538 0,-15.133752 -4.786586,-27.274118 -16.667516,-27.274118 -11.88093,0 -18.499247,6.994427 -18.435284,17.125656 l 0.252538,40" />
    </svg>

    <div class="sidebar ">
        <a class="drop-shadow-md border-y border-gray-400/20 px-6 py-4 w-full flex justify-center {{ Request::is('/') ? 'bg-gray-300/10' : '' }} "
            href="/">
            HOME
        </a>
        <a class="drop-shadow-md border-b border-gray-400/20 px-6 py-4 w-full flex justify-center {{ Request::is('menu') || Request::is('detail*') ? 'bg-gray-300/10 ' : '' }} "
            href="/menu">
            FOOD MENU
        </a>
        <a class="drop-shadow-md border-b border-gray-400/20 px-6 py-4 w-full flex justify-center {{ Request::is('news') || Request::is('news-detail*') ? 'bg-gray-300/10 ' : '' }} "
            href="/news">
            NEWS
        </a>
        <a class="drop-shadow-md border-b border-gray-400/20 px-6 py-4 w-full flex justify-center {{ Request::is('about') ? 'bg-gray-300/10' : '' }} "
            href="/about">
            ABOUT US
        </a>
        <a class="drop-shadow-md border-b border-gray-400/20 px-6 py-4 w-full flex justify-center {{ Request::is('contact') ? 'bg-gray-300/10' : '' }} "
            href="/contact">
            Contact
        </a>
    </div>
</div>

<script>
    function toggleSidebar() {
        const sidebar = document.querySelector('.sidebar');
        const ham = document.querySelector('.ham');

        if (sidebar.classList.contains('active')) {
            sidebar.classList.remove('active');
            setTimeout(() => {
                sidebar.style.visibility = "hidden";
            }, 400);
        } else {
            sidebar.style.visibility = "visible";
            sidebar.classList.add('active');
        }

        ham.classList.toggle('active');
    }

    // ปิด Sidebar เมื่อคลิกข้างนอก
    window.addEventListener('click', function(event) {
        const sidebar = document.querySelector('.sidebar');
        const ham = document.querySelector('.ham');

        if (sidebar.classList.contains('active') && !sidebar.contains(event.target) && !ham.contains(event
                .target)) {
            sidebar.classList.remove('active');
            setTimeout(() => {
                sidebar.style.visibility = "hidden";
            }, 400);
            ham.classList.remove('active');
        }
    });
</script>
