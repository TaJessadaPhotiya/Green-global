<div class="w-full h-full">
    <div
        class="flex flex-col justify-center 2xl:w-[1300px] w-full h-full min-h-[calc(100vh-92px)] mx-auto md:px-[4rem] px-[1rem] xl:pt-[4rem] pt-[2.5rem] xl:pb-[7rem] pb-[4rem] shadow-2xl ">
        {{-- Form --}}
        <form id="profileForm">
            <div class="container w-full max-w-3xl mx-auto px-6 sm:px-[5rem] py-12 bg-[#283891] rounded-lg shadow-2xl ">
                {{-- Header --}}
                <div class="text-center mb-6">
                    <h1 class="text-3xl text-white font-extrabold mb-4">
                        PROFILE MEMBER
                    </h1>
                </div>

                <div class="space-y-6">
                    {{-- Username --}}
                    <div>
                        <label for="username" class="text-white">*User name</label>
                        <input id="username" type="text" name="username" required
                            value="{{ $profile->display_name ?? '' }}"
                            class="mt-2 rounded-md px-4 py-2 bg-white text-gray-900 placeholder-gray-400 w-full focus:outline-none focus:ring-2 focus:ring-blue-400"
                            placeholder="User Name">
                    </div>

                    {{-- First & Last Name --}}
                    <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
                        <div>
                            <label for="firstname" class="text-white">*First Name</label>
                            <input id="firstname" name="firstname" type="text"
                                value="{{ $profile->first_name ?? '' }}" required
                                class="mt-2 rounded-md px-4 py-2 bg-white text-gray-900 w-full focus:outline-none focus:ring-2 focus:ring-blue-400"
                                placeholder="First Name">
                        </div>
                        <div>
                            <label for="lastname" class="text-white">*Last Name</label>
                            <input id="lastname" name="lastname" type="text" value="{{ $profile->last_name ?? '' }}"
                                required
                                class="mt-2 rounded-md px-4 py-2 bg-white text-gray-900 w-full focus:outline-none focus:ring-2 focus:ring-blue-400"
                                placeholder="Last Name">
                        </div>
                    </div>

                    {{-- Telephone & Email --}}
                    <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
                        <div>
                            <label for="telephone" class="text-white">*Telephone Number</label>
                            <input id="telephone" name="telephone" type="tel"
                                value="{{ $profile->phone_number ?? '' }}" required
                                class="mt-2 rounded-md px-4 py-2 bg-white text-gray-900 w-full focus:outline-none focus:ring-2 focus:ring-blue-400"
                                placeholder="000-000-0000">
                        </div>
                        <div>
                            <label for="email" class="text-white">*Email</label>
                            <input id="email" name="email" type="email" value="{{ $user->email }}" required
                                class="mt-2 rounded-md px-4 py-2 bg-white text-gray-900 w-full focus:outline-none focus:ring-2 focus:ring-blue-400"
                                placeholder="sample@gmail.com">
                        </div>
                    </div>

                    <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
                        <!-- Password -->
                        <div>
                            <label for="password" class="text-white">*Password</label>
                            <div class="relative mt-2">
                                <input id="password" name="password" type="password"
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

                        <!-- Confirm Password -->
                        <div>
                            <label for="password_confirmation" class="text-white">*Confirm Password</label>
                            <div class="relative mt-2">
                                <input id="password_confirmation" name="password_confirmation" type="password"
                                    class="rounded-md px-4 py-2 pr-10 bg-white text-gray-900 w-full focus:outline-none focus:ring-2 focus:ring-blue-400"
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
                <button type="submit" form="profileForm"
                    class="w-[95px] text-sm text-white py-2 bg-gradient-to-r from-green-700 to-green-500 hover:from-green-600 hover:to-green-400 hover:shadow-xl transition duration-200 rounded-md shadow-md drop-shadow-sm">
                    SAVE
                </button>
                <a href="javascript:history.back()">
                <button type="button"
                    class="w-[95px] text-sm text-white py-2 bg-gradient-to-r from-red-600 to-red-400 hover:from-red-500 hover:to-red-300 hover:shadow-xl transition duration-200 rounded-md shadow-md drop-shadow-sm"
                    >
                    CANCEL
                </button>
                </a>
            </div>
        </form>
        {{-- End Form --}}
    </div>
</div>

<script>
    document.getElementById("profileForm").addEventListener("submit", function(event) {
        event.preventDefault(); // Prevent form submission
console.log('123');

        const username = document.getElementById('username').value.trim();
        const firstname = document.getElementById('firstname').value.trim();
        const lastname = document.getElementById('lastname').value.trim();
        const telephone = document.getElementById('telephone').value.trim();
        const email = document.getElementById('email').value.trim();
        const password = document.getElementById('password').value;
        const password_confirmation = document.getElementById('password_confirmation').value;

        const url = '{{ $language }}';
        axios.post(`/${url}/profile/update`, {
                username: username,
                firstname: firstname,
                lastname: lastname,
                telephone: telephone,
                email: email,
                password: password,
                password_confirmation: password_confirmation
            })
            .then(function(response) {
                // handle success
                console.log(response.data);
            })
            .catch(function(error) {
                // handle error
                console.log(error);
            })

    });

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
