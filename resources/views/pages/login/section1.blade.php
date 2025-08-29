<div class="w-full h-full">
    <div
        class="flex flex-col justify-center 2xl:w-[1300px] w-full h-full min-h-screen 2xl:min-h-[calc(100vh-92px)] mx-auto md:px-[4rem] px-[1rem] xl:pt-[4rem] pt-[2.5rem] xl:pb-[7rem] pb-[4rem] shadow-2xl ">
        {{-- Form --}}
        <form id="loginForm">
            {{-- @csrf --}}
            <div class="container w-full max-w-3xl mx-auto px-6 sm:px-[5rem] py-12 bg-[#283891] rounded-lg shadow-2xl "
                data-aos="fade-up" data-aos-duration="1200">
                {{-- Header --}}
                <div class="text-center mb-8">
                    <h1 class="text-xl text-white font-extrabold mb-4">
                        Key in password and selecting product for your market
                    </h1>
                    <p class="text-base text-blue-100 mb-8">
                        Please enter your details.
                    </p>
                </div>
                <div class="space-y-6">
                    <div class="w-full mx-auto max-w-md ">
                        {{-- Username --}}
                        <div>
                            <label for="username" class="text-white">*User name</label>
                            <input id="username" type="text" name="username" required
                                class="mt-2 rounded-md px-4 py-2 bg-white text-gray-900 placeholder-gray-400 w-full focus:outline-none focus:ring-2 focus:ring-blue-400"
                                placeholder="User Name">
                        </div>
                        {{-- Password --}}
                        <div class="mt-4">
                            <label for="password" class="text-white">*Password</label>
                            <div class="relative mt-2">
                                <input id="password" name="password" type="password" required
                                    class=" rounded-md px-4 py-2 pr-10 bg-white text-gray-900 w-full focus:outline-none focus:ring-2 focus:ring-blue-400"
                                    placeholder="••••••••" />
                                <button type="button" onclick="togglePassword('password', this)"
                                    class="absolute top-1/2 right-3 -translate-y-1/2 text-gray-400 hover:text-gray-700 focus:outline-none">
                                    <svg xmlns="http://www.w3.org/2000/svg"
                                        class="h-5 w-5 text-gray-700 hover:text-gray-400" fill="none"
                                        viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
                                        <path stroke-linecap="round" stroke-linejoin="round"
                                            d="M15 12a3 3 0 11-6 0 3 3 0 016 0z" />
                                        <path stroke-linecap="round" stroke-linejoin="round"
                                            d="M2.458 12C3.732 7.943 7.523 5 12 5c4.477 0 8.268 2.943 9.542 7-1.274 4.057-5.065 7-9.542 7-4.477 0-8.268-2.943-9.542-7z" />
                                    </svg>
                                </button>
                            </div>
                        </div>
                        {{-- Remember Me --}}
                        <div class="flex items-center space-x-3 mt-4">
                            <input type="checkbox" id="occupation_other" name="occupations[]" value="Other"
                                class="accent-white w-4 h-4" />
                            <label for="occupation_other" class="text-white text-sm">
                                Remember Me
                            </label>
                        </div>
                    </div>

                    <div class="flex xl:flex-row flex-col justify-between max-xl:items-center max-xl:gap-4 ">
                        <div class="flex items-center gap-2">
                            <img class="w-5 h-5" src="/icons/hugeicons_reset-password.png" alt="">
                            <a class="text-white font-medium hover:text-yellow-300 hover:underline"
                                href="/{{ $language }}/forgot">
                                Forgot password?
                            </a>
                        </div>
                        <div>
                            <a class="text-white text-sm font-normal hover:text-yellow-300 hover:underline underline"
                                href="/{{ $language }}/register">
                                Register to get password for business growth together (B2B)
                            </a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="w-full flex justify-center gap-5 mt-8">
                <button type="submit" form="loginForm" id="loginBtn"
                    class="w-[110px] text-sm text-white py-2 bg-gradient-to-r from-green-700 to-green-500 hover:from-green-600 hover:to-green-400 hover:shadow-xl transition duration-200 rounded-md shadow-md drop-shadow-sm flex justify-center items-center">
                    <span id="btnText">SIGN IN</span>
                    <svg id="btnSpinner" class="hidden animate-spin h-4 w-4 ml-2 text-white"
                        xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24">
                        <circle class="opacity-25" cx="12" cy="12" r="10" stroke="currentColor"
                            stroke-width="4"></circle>
                        <path class="opacity-75" fill="currentColor" d="M12 2a10 10 0 0110 10h-4a6 6 0 00-6-6V2z">
                        </path>
                    </svg>
                </button>
            </div>
        </form>
    </div>
</div>

<script>
    document.getElementById("loginForm").addEventListener("submit", function(event) {
        event.preventDefault();

        const userName = document.getElementById('username').value;
        const passWord = document.getElementById('password').value;
        const url = '{{ $language }}';

        const btn = document.getElementById("loginBtn");
        const btnText = document.getElementById("btnText");
        const btnSpinner = document.getElementById("btnSpinner");

        // 🔄 แสดง Loading
        btn.disabled = true;
        btnText.textContent = "Loading...";
        btnSpinner.classList.remove("hidden");

        axios.post(`/${url}/authenticate`, {
            username: userName,
            password: passWord
        }).then(function(response) {
            if (response.data.status === '200') {
                const redirectUrl = response.data.url;

                const Toast = Swal.mixin({
                    toast: true,
                    position: "top-end",
                    showConfirmButton: false,
                    timer: 1000,
                    timerProgressBar: true,
                    customClass: {
                        popup: 'mt-[6.4rem]'
                    },
                    didOpen: (toast) => {
                        toast.onmouseenter = Swal.stopTimer;
                        toast.onmouseleave = Swal.resumeTimer;
                    }
                });

                Toast.fire({
                    icon: "success",
                    title: "Login successful!"
                }).then(() => {
                    window.location.href = `/${redirectUrl}`;
                });
            }
        }).catch(function(error) {
            console.log(error.response);

            // ❌ reset ปุ่มเมื่อ error
            btn.disabled = false;
            btnText.textContent = "SIGN IN";
            btnSpinner.classList.add("hidden");

            Swal.fire({
                icon: 'error',
                title: 'Login failed!',
                text: error.response?.data?.message || 'Please check your credentials',
                showConfirmButton: true
            });
        });
    });

    // toggle password
    function togglePassword(id, btn) {
        const input = document.getElementById(id);
        const icon = btn.querySelector("svg");

        if (input.type === "password") {
            input.type = "text";
            icon.classList.remove("text-gray-700");
            icon.classList.add("text-gray-400");
        } else {
            input.type = "password";
            icon.classList.remove("text-gray-400");
            icon.classList.add("text-gray-700");
        }
    }
</script>
