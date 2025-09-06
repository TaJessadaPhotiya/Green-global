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
    @include('layouts.popup')
    <div
        class="2xl:w-[1300px] w-full h-full min-h-screen mx-auto md:px-[4rem] px-[1rem] xl:pt-[4rem] pt-[2.5rem] xl:pb-[7rem] pb-[4rem] shadow-2xl ">
        {{-- Form --}}
        <form id="registerForm">
            <div class="container w-full max-w-3xl mx-auto px-6 sm:px-[5rem] py-12 bg-[#283891] rounded-lg shadow-2xl"
                data-aos="fade-up" data-aos-duration="1200">
                {{-- Header --}}
                <div class="text-center mb-8">
                    <h1 class="text-xl text-white font-extrabold mb-4">
                        Register To Get Password For Business Growth Together (B2B)
                    </h1>
                    <p class="text-base text-blue-100 mb-8">
                        Please fill out the information completely to get member.
                    </p>
                </div>


                <div class="space-y-6">

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
                            <span id="error-telephone" class="text-red-500 ml-2"></span>
                        </div>
                        <div>
                            <label for="email" class="text-white">*Email</label>
                            <input id="email" name="email" type="email" required
                                class="mt-2 rounded-md px-4 py-2 bg-white text-gray-900 w-full focus:outline-none focus:ring-2 focus:ring-blue-400"
                                placeholder="sample@gmail.com">
                            <span id="error-email" class="text-red-500 ml-2"></span>
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
                            <span id="error-password" class="text-red-500 ml-2"></span>
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
                            <span id="error-password_confirmation" class="text-red-500 ml-2"></span>
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
                                        <input type="checkbox" id="occupation_{{ $loop->index }}"
                                            name="occupations[]" value="{{ $occupation }}"
                                            class="accent-white w-4 h-4 chk" />
                                        <label for="occupation_{{ $loop->index }}"
                                            class="text-white text-sm">{{ $occupation }}</label>
                                    </div>
                                @endforeach
                                <div class="flex items-center space-x-3">
                                    <input type="checkbox" id="occupation_other" name="occupations[]" value="Other"
                                        class="accent-white w-4 h-4 chk" />
                                    <label for="occupation_other" class="text-white text-sm">Other (please
                                        specify)</label>
                                </div>
                                <input type="text" id="other_occupation"" name="other_occupation"
                                    class="rounded-md px-4 py-2 bg-white text-gray-900 w-full max-w-md focus:outline-none focus:ring-2 focus:ring-blue-400"
                                    placeholder="Please specify your occupation">
                            </div>
                            <span id="error-occupation" class="text-red-500"></span>
                        </div>

                        {{-- Country --}}
                        <div class="w-full mb-8">
                            <label for="country" class="text-white font-semibold mb-2 block">
                                Which country are you from?
                            </label>
                            <span id="error-country" class="text-red-500"></span>
                            <div class="relative w-full">
                                <select name="country" id="country"
                                    class="peer appearance-none rounded-md px-4 py-2 bg-white text-gray-900 flex justify-center w-full text-md focus:outline-none focus:ring-2 focus:ring-blue-400">
                                    <option value="">Please select a country</option>
                                    @foreach ($countries as $country)
                                        <option value="{{ strtolower($country) }}">{{ $country }}</option>
                                    @endforeach
                                </select>

                                <svg class="pointer-events-none absolute right-3 top-1/2 -translate-y-1/2 h-4 w-4 text-gray-600 transition-transform duration-300 peer-focus:rotate-180"
                                    fill="none" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24"
                                    aria-hidden="true">
                                    <path stroke-linecap="round" stroke-linejoin="round" d="M19 9l-7 7-7-7" />
                                </svg>
                            </div>
                        </div>
                    </div>

                    {{-- PDPA Notice --}}
                    <div class="text-sm text-center text-blue-100 leading-relaxed mb-8">
                        <p>
                            "Your personal information is important to us. We need your information solely for
                            processing
                            and
                            improving the services we provide. Please give your consent. If you agree, you accept
                            the terms of use in accordance with Thailand's PDPA regulations. Read the terms of our
                            privacy
                            policy."
                        </p>
                    </div>
                </div>
            </div>

            <div class="w-full flex justify-center gap-5 mt-8">
                <!-- ปุ่ม loading -->
                <button type="submit" form="registerForm" id="registerBtn"
                    class="w-[95px] flex items-center justify-center text-sm text-white py-2
                            bg-gradient-to-r from-green-700 to-green-500 hover:from-green-600 hover:to-green-400
                            hover:shadow-xl transition duration-200 rounded-md shadow-md drop-shadow-sm">
                    <span id="btnText">ACCEPT</span>
                    <!-- Spinner สวย -->
                    <svg id="btnSpinner" class="hidden animate-spin ml-2 h-5 w-5 text-white"
                        xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24">
                        <circle class="opacity-25" cx="12" cy="12" r="10" stroke="currentColor"
                            stroke-width="4"></circle>
                        <path class="opacity-75" fill="currentColor" d="M12 2a10 10 0 0110 10h-4a6 6 0 00-6-6V2z">
                        </path>
                    </svg>
                </button>

                <a type="button" href="{{ route('login', ['language' => $language]) }}">
                    <button type="button"
                        class="w-[95px] text-sm text-white py-2 bg-gradient-to-r from-red-600 to-red-400 hover:from-red-500 hover:to-red-300 hover:shadow-xl transition duration-200 rounded-md shadow-md drop-shadow-sm">
                        REJECT
                    </button>
                </a>
            </div>
        </form>
    </div>
</div>


<script>
    document.getElementById("registerForm").addEventListener("submit", function(event) {
        event.preventDefault();

        const btn = document.getElementById("registerBtn");
        const btnText = document.getElementById("btnText");
        const btnSpinner = document.getElementById("btnSpinner");



        const username = document.getElementById('username').value.trim();
        const firstname = document.getElementById('firstname').value.trim();
        const lastname = document.getElementById('lastname').value.trim();
        const telephone = document.getElementById('telephone').value.trim();
        const email = document.getElementById('email').value.trim();
        const password = document.getElementById('password').value;
        const password_confirmation = document.getElementById('password_confirmation').value;
        const occupation = document.querySelectorAll('input[name="occupations[]"]');
        const occupationsOther = document.getElementById('other_occupation').value.trim();
        const country = document.getElementById('country').value;

        const selectedValues = [];

        occupation.forEach((checkbox) => {
            if (checkbox.checked) {
                selectedValues.push(checkbox.value);
            }
        });

        document.getElementById("error-telephone").innerHTML = "";
        document.getElementById("error-email").innerHTML = "";
        document.getElementById("error-password").innerHTML = "";
        document.getElementById("error-password_confirmation").innerHTML = "";
        document.getElementById("error-occupation").innerHTML = "";
        document.getElementById("error-country").innerHTML = "";
        // occupationsOther.value = "1";

        // Username
        if (!username) {
            Swal.fire({
                position: "top-end",
                icon: "warning",
                title: "Please enter a username.",
                showConfirmButton: false,
                timer: 1500
            });
            return false;
        }

        // Firstname & Lastname
        if (!firstname) {
            Swal.fire({
                position: "top-end",
                icon: "warning",
                title: "Please enter your first name.",
                showConfirmButton: false,
                timer: 1500
            });
            return false;
        }
        if (!lastname) {
            alert('Please enter your last name.');
            return false;
        }

        // Telephone (เช็ค format แบบง่าย ๆ เช่น 000-000-0000 หรือเลขอย่างเดียว 10 หลัก)
        const telRegex = /^(\d{3}-\d{3}-\d{4}|\d{10})$/;
        if (!telRegex.test(telephone)) {
            Swal.fire({
                position: "top-end",
                icon: "warning",
                title: "Please enter a valid telephone number (e.g., 000-000-0000 or 10 digits).",
                showConfirmButton: false,
                timer: 1500
            });
            document.getElementById("error-telephone").innerHTML =
                "*Please enter a valid telephone number (e.g., 000-000-0000 or 10 digits).";
            return false;
        }

        // Email
        const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        if (!emailRegex.test(email)) {
            Swal.fire({
                position: "top-end",
                icon: "warning",
                title: "Please enter a valid email address.",
                showConfirmButton: false,
                timer: 1500
            });
            document.getElementById("error-email").innerHTML = "*Please enter a valid email address.";
            return false;
        }

        if (!password) {
            Swal.fire({
                position: "top-end",
                icon: "warning",
                title: "Please enter a password.",
                showConfirmButton: false,
                timer: 1500
            });
            document.getElementById("error-password").innerHTML = "*Please enter a password.";
            return false;
        }

        if (password !== password_confirmation) {
            Swal.fire({
                position: "top-end",
                icon: "warning",
                title: "Passwords do not match.",
                showConfirmButton: false,
                timer: 1500
            });
            document.getElementById("error-password_confirmation").innerHTML = "*Passwords do not match.";
            return false;
        }
        if (password.length < 6) {
            Swal.fire({
                position: "top-end",
                icon: "warning",
                title: "Password should be at least 6 characters.",
                showConfirmButton: false,
                timer: 1500
            });
            document.getElementById("error-password").innerHTML = "*Password should be at least 6 characters.";
            document.getElementById("error-password_confirmation").innerHTML =
                "*Password should be at least 6 characters.";
            return false;
        }

        // Occupations - ต้องเลือกอย่างน้อย 1 ตัว
        if (selectedValues.length === 0) {
            Swal.fire({
                position: "top-end",
                icon: "warning",
                title: "Please select at least one occupation.",
                showConfirmButton: false,
                timer: 1500
            });
            document.getElementById("error-occupation").innerHTML = "*Please select at least one occupation.";
            return false;
        }

        // ถ้าเลือก Other ต้องกรอกช่องอื่น
        let otherChecked = false;
        occupation.forEach(input => {
            if (input.checked && input.value === 'Other') otherChecked = true;
        });

        if (otherChecked && occupationsOther === '') {
            Swal.fire({
                position: "top-end",
                icon: "warning",
                title: "Please specify your occupation in the Other field.",
                showConfirmButton: false,
                timer: 1500
            });
            document.getElementById("error-occupation").innerHTML =
                "*Please specify your occupation in the Other field.";
            return false;
        }

        if (country === "") {
            Swal.fire({
                position: "top-end",
                icon: "warning",
                title: "Please select your country.",
                showConfirmButton: false,
                timer: 1500
            });
            document.getElementById("error-country").innerHTML = "*Please select your country.";
            return false;
        }

        // ถ้าผ่านทั้งหมด
        const url = '{{ $language }}';
        btn.disabled = true;
        btnText.classList.add("hidden");
        btnSpinner.classList.remove("hidden");

        axios.post(`/${url}/register/store`, {
            username,
            firstname,
            lastname,
            telephone,
            email,
            password,
            password_confirmation,
            occupationsOther,
            selectedValues,
            country
        }).then(function(response) {
            console.log(response.data);
            const url = response.data.url;

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
                title: "Registration successful!"
            }).then(() => {
                window.location.href = `/${url}`;
            });

        }).catch(function(error) {
            console.log(error.response.data);

            // 🔄 คืนปุ่มกลับเป็นปกติ
            btn.disabled = false;
            btnText.classList.remove("hidden");
            btnSpinner.classList.add("hidden");
            const {
                errorCode,
                errorsMessage
            } = error.response.data;
            if (errorCode == 1062) {
                Swal.fire({
                    position: "top-end",
                    icon: "warning",
                    title: `${errorsMessage}`,
                    showConfirmButton: false,
                    timer: 1000
                });
                document.getElementById("error-email").innerHTML = `${errorsMessage}`;
            }
        });

    });

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
