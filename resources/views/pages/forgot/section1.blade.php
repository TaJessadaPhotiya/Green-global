<div class="w-full h-full">
    <div
        class="flex flex-col justify-center 2xl:w-[1300px] w-full min-h-screen 2xl:min-h-[calc(100vh-92px)] mx-auto md:px-[4rem] px-[1rem] xl:pt-[4rem] pt-[2.5rem] xl:pb-[7rem] pb-[4rem] shadow-2xl ">
        <div class="container w-full max-w-3xl mx-auto px-6 sm:px-[5rem] py-12 bg-[#283891] rounded-lg shadow-2xl ">
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
                    {{-- Username --}}
                    <div>
                        <label for="username" class="text-white">*Email</label>
                        <input id="username" type="text" name="username" required
                            class="mt-2 rounded-md px-4 py-2 bg-white text-gray-900 placeholder-gray-400 w-full focus:outline-none focus:ring-2 focus:ring-blue-400"
                            placeholder="User Name">
                    </div>
                </div>
            </form>
        </div>

        <div class="w-full flex justify-center gap-5 mt-8">
            <button type="submit" form="forgotPasswordForm"
                class="w-[95px] text-sm text-white py-2 bg-gradient-to-r from-green-700 to-green-500 hover:from-green-600 hover:to-green-400 hover:shadow-xl transition duration-200 rounded-md shadow-md drop-shadow-sm">
                CONFIRM
            </button>
        </div>
    </div>
</div>

<script>
    document.getElementById("forgotPasswordForm").addEventListener("submit", function(event) {
        event.preventDefault(); // Prevent form submission
        // console.log('123');
        const email = document.getElementById("username").value.trim();

        const url = '{{ $language }}';

        axios.post(`/${url}/forgot-password`, {
            email: email
        }).then(function(response) {
            // Handle success
            console.log(response.data);
            document.getElementById("username").value = "";
            Swal.fire({
                position: "top-end",
                icon: "success",
                title: `${response.data.description}`,
                showConfirmButton: false,
                timer: 1500
            });
        }).catch(function(error) {
            // Handle error
            console.error(error);
        });
    });
</script>
