<div class="w-full h-full">
    <div
        class="flex flex-col justify-center 2xl:w-[1300px] w-full min-h-screen 2xl:min-h-[calc(100vh-92px)] mx-auto md:px-[4rem] px-[1rem] xl:pt-[4rem] pt-[2.5rem] xl:pb-[7rem] pb-[4rem] shadow-2xl">
        <div class="container w-full max-w-3xl mx-auto px-6 sm:px-[5rem] py-12 bg-[#283891] rounded-lg shadow-2xl">
            {{-- Header --}}
            <div class="text-center mb-8">
                <h1 class="text-xl text-white font-extrabold mb-4">
                    Password reset email address
                </h1>
            </div>

            {{-- Form --}}
            <form class="space-y-6" id="forgotPasswordForm">
                @csrf
                <div class="w-full mx-auto max-w-md">
                    {{-- Email --}}
                    <div>
                        <label for="username" class="text-white">*Email</label>
                        <input id="username" type="text" name="username" required
                            class="mt-2 rounded-md px-4 py-2 bg-white text-gray-900 placeholder-gray-400 w-full focus:outline-none focus:ring-2 focus:ring-blue-400"
                            placeholder="Email">
                    </div>
                </div>
            </form>
        </div>

        <div class="w-full flex justify-center gap-5 mt-8">
            <button type="submit" form="forgotPasswordForm" id="forgotBtn"
                class="w-[95px] text-sm text-white py-2 bg-gradient-to-r from-green-700 to-green-500 hover:from-green-600 hover:to-green-400 hover:shadow-xl transition duration-200 rounded-md shadow-md drop-shadow-sm flex justify-center items-center">
                <span id="btnText">CONFIRM</span>
                <svg id="btnSpinner" class="hidden animate-spin h-4 w-4 ml-2 text-white"
                    xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24">
                    <circle class="opacity-25" cx="12" cy="12" r="10" stroke="currentColor"
                        stroke-width="4"></circle>
                    <path class="opacity-75" fill="currentColor" d="M12 2a10 10 0 0110 10h-4a6 6 0 00-6-6V2z"></path>
                </svg>
            </button>
        </div>
    </div>
</div>

<script>
    document.getElementById("forgotPasswordForm").addEventListener("submit", function(event) {
        event.preventDefault(); // Prevent form submission

        const email = document.getElementById("username").value.trim();
        const url = '{{ $language }}';

        // Loading spinner
        const btn = document.getElementById("forgotBtn");
        const btnText = document.getElementById("btnText");
        const btnSpinner = document.getElementById("btnSpinner");

        btn.disabled = true;
        btnText.textContent = "Loading...";
        btnSpinner.classList.remove("hidden");

        axios.post(`/${url}/forgot-password`, {
                email: email
            })
            .then(function(response) {
                console.log(response.data);

                document.getElementById("username").value = "";
                btn.disabled = false;
                btnText.textContent = "CONFIRM";
                btnSpinner.classList.add("hidden");

                const Toast = Swal.mixin({
                    toast: true,
                    position: "top-end",
                    showConfirmButton: false,
                    timer: 1500,
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
                    title: `${response.data.description}`
                });

            }).catch(function(error) {
                console.error(error);

                btn.disabled = false;
                btnText.textContent = "CONFIRM";
                btnSpinner.classList.add("hidden");

                // แจ้ง error
                Swal.fire({
                    icon: 'error',
                    title: 'Failed',
                    text: 'This email has been sent to request a password reset.'
                });
            });
    });
</script>
