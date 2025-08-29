<div class="w-full h-full">
    <div
        class="flex flex-col justify-center 2xl:w-[1300px] w-full h-full min-h-screen 2xl:min-h-[calc(100vh-92px)] mx-auto md:px-[4rem] px-[1rem] xl:pt-[4rem] pt-[2.5rem] xl:pb-[7rem] pb-[4rem] shadow-2xl ">
        {{-- Form --}}
        <form id="formConfirmation">
            {{-- @csrf --}}
            <div class="container w-full max-w-3xl mx-auto px-6 sm:px-[5rem] py-12 bg-[#283891] rounded-lg shadow-2xl "
                data-aos="fade-up" data-aos-duration="1200">
                {{-- Header --}}
                <div class="text-center mb-8">
                    <h1 class="text-xl text-white font-extrabold mb-4">
                        Key in password to Confirm Password.
                    </h1>
                    <p class="text-base text-blue-100 mb-8">
                        Confirm password.
                    </p>
                </div>
                <div class="space-y-6">
                    <div class="w-full mx-auto max-w-md ">
                        <input type="hidden" id="custId" name="token" value="{{ $token }}">
                        {{-- Username --}}
                        {{-- <div>
                            <label for="username" class="text-white">*User name</label>
                            <input id="username" type="text" name="username" required
                                class="mt-2 rounded-md px-4 py-2 bg-white text-gray-900 placeholder-gray-400 w-full focus:outline-none focus:ring-2 focus:ring-blue-400"
                                placeholder="User Name">
                        </div> --}}
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
                        {{-- Password Confirmation --}}
                        <div class="mt-4">
                            <label for="password_confirmation" class="text-white">*Confirm Password</label>
                            <div class="relative mt-2">
                                <input id="password_confirmation" name="password_confirmation" type="password" required
                                    class=" rounded-md px-4 py-2 pr-10 bg-white text-gray-900 w-full focus:outline-none focus:ring-2 focus:ring-blue-400"
                                    placeholder="••••••••" />
                                <button type="button" onclick="togglePassword('password_confirmation', this)"
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
                    </div>
                </div>
            </div>

            <div class="w-full flex justify-center gap-5 mt-8">
                <button type="submit" form="formConfirmation"
                    class="w-[95px] text-sm text-white py-2 bg-gradient-to-r from-green-700 to-green-500 hover:from-green-600 hover:to-green-400 hover:shadow-xl transition duration-200 rounded-md shadow-md drop-shadow-sm">
                    Confirm
                </button>
            </div>
        </form>
    </div>
</div>

<script>
    document.getElementById("formConfirmation").addEventListener("submit", function(event) {
        event.preventDefault(); // Prevent form submission

        const password = document.getElementById('password').value;
        const password_confirmation = document.getElementById('password_confirmation').value;
        const token = '{{ $token }}';

        const url = '{{ $language }}';

        // สร้าง Toast
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

        axios.post(`/${url}/reset-password`, {
            password: password,
            password_confirmation: password_confirmation,
            token: token
        }).then(function(response) {
            console.log(response);

            if (response.status === 200) {
                // ✅ แสดง Toast แทน Swal.fire ปกติ
                Toast.fire({
                    icon: "success",
                    title: `${response.data.description}`
                }).then(() => {
                    // redirect หลัง Toast แสดงเสร็จ
                    window.location.href = '/' + response.data.url;
                });
            }
        }).catch(function(error) {
            console.log(error.response);

            // กรณี error ใช้ Toast แบบเดียวกัน
            let message = 'Something went wrong';
            if (error.response && error.response.data && error.response.data.message) {
                message = error.response.data.message;
            }

            Toast.fire({
                icon: 'error',
                title: message
            });
        });
    });
</script>
