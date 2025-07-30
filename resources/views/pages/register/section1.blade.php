@php
    $occupations = [
        'Farmer',
        'Seed Company',
        'Agriculture-related business',
        'Seed Distributor',
        'Seedling nursery',
        'Chemical or fertilizer',
    ];

    $countries = [
        'Thailand',
        'Vietnam',
        'Malaysia',
        'Singapore',
        'Indonesia',
        'Philippines',
        'Cambodia',
        'Laos',
        'Myanmar',
        'Brunei',
        'United States',
        'United Kingdom',
        'Australia',
        'Canada',
        'Japan',
        'South Korea',
        'China',
        'India',
    ];
@endphp

<div class="relative w-full h-full">
    <div
        class="2xl:w-[1300px] w-full h-full min-h-screen mx-auto md:px-[4rem] px-[1rem] xl:pt-[4rem] pt-[2.5rem] xl:pb-[7rem] pb-[4rem] shadow-2xl ">
        <div class="container w-full max-w-3xl mx-auto px-6 sm:px-[5rem] py-12 bg-[#283891] rounded-lg shadow-2xl">
            {{-- Header --}}
            <div class="text-center mb-8">
                <h1 class="text-xl text-white font-extrabold mb-4">
                    Register To Get Password For Business Growth Together (B2B)
                </h1>
                <p class="text-base text-blue-100 mb-8">
                    Please fill out the information completely to get member.
                </p>
            </div>

            {{-- Form --}}
            <form method="POST" action="" class="space-y-6" id="registerForm" onsubmit="return validateForm()">
                @csrf

                {{-- Username --}}
                <div>
                    <label for="username" class="text-white">*User name</label>
                    <input id="username" type="text" name="username" required
                        class="mt-2 rounded-md px-4 py-2 bg-white text-gray-900 placeholder-gray-400 w-full focus:outline-none focus:ring-2 focus:ring-blue-400"
                        placeholder="User Name">
                </div>

                {{-- First & Last Name --}}
                <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
                    <div>
                        <label for="firstname" class="text-white">*First Name</label>
                        <input id="firstname" name="firstname" type="text" required
                            class="mt-2 rounded-md px-4 py-2 bg-white text-gray-900 w-full focus:outline-none focus:ring-2 focus:ring-blue-400"
                            placeholder="First Name">
                    </div>
                    <div>
                        <label for="lastname" class="text-white">*Last Name</label>
                        <input id="lastname" name="lastname" type="text" required
                            class="mt-2 rounded-md px-4 py-2 bg-white text-gray-900 w-full focus:outline-none focus:ring-2 focus:ring-blue-400"
                            placeholder="Last Name">
                    </div>
                </div>

                {{-- Telephone & Email --}}
                <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
                    <div>
                        <label for="telephone" class="text-white">*Telephone Number</label>
                        <input id="telephone" name="telephone" type="tel" required
                            class="mt-2 rounded-md px-4 py-2 bg-white text-gray-900 w-full focus:outline-none focus:ring-2 focus:ring-blue-400"
                            placeholder="000-000-0000">
                    </div>
                    <div>
                        <label for="email" class="text-white">*Email</label>
                        <input id="email" name="email" type="email" required
                            class="mt-2 rounded-md px-4 py-2 bg-white text-gray-900 w-full focus:outline-none focus:ring-2 focus:ring-blue-400"
                            placeholder="sample@gmail.com">
                    </div>
                </div>

                <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
                    <!-- Password -->
                    <div>
                        <label for="password" class="text-white">*Password</label>
                        <div class="relative mt-2">
                            <input id="password" name="password" type="password" required
                                class=" rounded-md px-4 py-2 pr-10 bg-white text-gray-900 w-full focus:outline-none focus:ring-2 focus:ring-blue-400"
                                placeholder="••••••••" />
                            <button type="button" onclick="togglePassword('password', this)"
                                class="absolute top-1/2 right-3 -translate-y-1/2 text-gray-400 hover:text-gray-700 focus:outline-none">
                                <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 text-gray-700 hover:text-gray-400" fill="none"
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
                            <input id="password_confirmation" name="password_confirmation" type="password" required
                                class="rounded-md px-4 py-2 pr-10 bg-white text-gray-900 w-full focus:outline-none focus:ring-2 focus:ring-blue-400"
                                placeholder="••••••••" />
                            <button type="button" onclick="togglePassword('password_confirmation', this)"
                                class="absolute top-1/2 right-3 -translate-y-1/2 text-gray-400 hover:text-gray-700 focus:outline-none">
                                <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 text-gray-700 hover:text-gray-400" fill="none"
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

                {{-- Info Section --}}
                <div class="mt-12">
                    <div class="border-b border-white/30 pb-2 mb-8">
                        <h2 class="text-xl font-bold text-white">INFORMATION</h2>
                    </div>

                    {{-- Occupation --}}
                    <div class="mb-8">
                        <h3 class="text-white font-medium mb-6">What is your occupation?</h3>
                        <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
                            @foreach ($occupations as $occupation)
                                <div class="flex items-center space-x-3">
                                    <input type="checkbox" id="occupation_{{ $loop->index }}" name="occupations[]"
                                        value="{{ $occupation }}" class="accent-white w-4 h-4" />
                                    <label for="occupation_{{ $loop->index }}"
                                        class="text-white text-sm">{{ $occupation }}</label>
                                </div>
                            @endforeach
                            <div class="flex items-center space-x-3">
                                <input type="checkbox" id="occupation_other" name="occupations[]" value="Other"
                                    class="accent-white w-4 h-4" />
                                <label for="occupation_other" class="text-white text-sm">Other (please
                                    specify)</label>
                            </div>
                            <input type="text" name="other_occupation"
                                class="rounded-md px-4 py-2 bg-white text-gray-900 w-full max-w-md focus:outline-none focus:ring-2 focus:ring-blue-400"
                                placeholder="Please specify your occupation">
                        </div>
                    </div>

                    {{-- Country --}}
                    <div class="w-full mb-8">
                        <label for="country" class="text-white font-semibold mb-2 block">
                            Which country are you from?
                        </label>
                        <select name="country" id="country"
                            class="rounded-md px-4 py-2 bg-white text-gray-900 flex justify-center w-full text-md focus:outline-none focus:ring-2 focus:ring-blue-400">
                            <option value="">Please select a country</option>
                            @foreach ($countries as $country)
                                <option value="{{ strtolower($country) }}">{{ $country }}</option>
                            @endforeach
                        </select>
                    </div>
                </div>

                {{-- PDPA Notice --}}
                <div class="text-sm text-center text-blue-100 leading-relaxed mb-8">
                    <p>
                        "Your personal information is important to us. We need your information solely for processing
                        and
                        improving the services we provide. Please give your consent. If you agree, you accept
                        the terms of use in accordance with Thailand's PDPA regulations. Read the terms of our privacy
                        policy."
                    </p>
                </div>
            </form>
        </div>

        <div class="w-full flex justify-center gap-5 mt-8">
            <button type="submit" form="registerForm"
                class="w-[95px] text-sm text-white py-2 bg-gradient-to-r from-green-700 to-green-500 hover:from-green-600 hover:to-green-400 hover:shadow-xl transition duration-200 rounded-md shadow-md drop-shadow-sm">
                ACCEPT
            </button>
            <button type="button"
                class="w-[95px] text-sm text-white py-2 bg-gradient-to-r from-red-600 to-red-400 hover:from-red-500 hover:to-red-300 hover:shadow-xl transition duration-200 rounded-md shadow-md drop-shadow-sm"
                onclick="document.getElementById('registerForm').reset()">
                REJECT
            </button>
        </div>
    </div>


    <script>
        function validateForm() {
            // ดึงค่าจากฟอร์ม
            const username = document.getElementById('username').value.trim();
            const firstname = document.getElementById('firstname').value.trim();
            const lastname = document.getElementById('lastname').value.trim();
            const telephone = document.getElementById('telephone').value.trim();
            const email = document.getElementById('email').value.trim();
            const password = document.getElementById('password').value;
            const password_confirmation = document.getElementById('password_confirmation').value;
            const occupationsChecked = document.querySelectorAll('input[name="occupations[]"]:checked');
            const otherOccupation = document.querySelector('input[name="other_occupation"]').value.trim();
            const country = document.getElementById('country').value;

            // Username
            if (!username) {
                alert('Please enter a username.');
                return false;
            }

            // Firstname & Lastname
            if (!firstname) {
                alert('Please enter your first name.');
                return false;
            }
            if (!lastname) {
                alert('Please enter your last name.');
                return false;
            }

            // Telephone (เช็ค format แบบง่าย ๆ เช่น 000-000-0000 หรือเลขอย่างเดียว 10 หลัก)
            const telRegex = /^(\d{3}-\d{3}-\d{4}|\d{10})$/;
            if (!telRegex.test(telephone)) {
                alert('Please enter a valid telephone number (e.g., 000-000-0000 or 10 digits).');
                return false;
            }

            // Email
            const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            if (!emailRegex.test(email)) {
                alert('Please enter a valid email address.');
                return false;
            }

            // Password & Confirm password
            if (!password) {
                alert('Please enter a password.');
                return false;
            }
            if (password !== password_confirmation) {
                alert('Passwords do not match.');
                return false;
            }
            if (password.length < 6) {
                alert('Password should be at least 6 characters.');
                return false;
            }

            // Occupations - ต้องเลือกอย่างน้อย 1 ตัว
            if (occupationsChecked.length === 0) {
                alert('Please select at least one occupation.');
                return false;
            }

            // ถ้าเลือก Other ต้องกรอกช่องอื่น
            let otherChecked = false;
            occupationsChecked.forEach(input => {
                if (input.value === 'Other') otherChecked = true;
            });
            if (otherChecked && otherOccupation === '') {
                alert('Please specify your occupation in the Other field.');
                return false;
            }

            // Country - ต้องเลือก
            if (!country) {
                alert('Please select your country.');
                return false;
            }

            // ถ้าผ่านทั้งหมด
            return true;
        }

        // ฟังก์ชัน togglePassword เหมือนเดิม
        function togglePassword(inputId, btn) {
            const input = document.getElementById(inputId);

            if (input.type === "password") {
                input.type = "text";
                btn.classList.remove("text-gray-400");
                btn.classList.add("text-gray-700");
            } else {
                input.type = "password";
                btn.classList.remove("text-gray-700");
                btn.classList.add("text-gray-400");
            }
        }
    </script>
