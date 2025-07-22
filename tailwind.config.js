/** @type {import('tailwindcss').Config} */
export default {
    content: [
        "./resources/**/*.blade.php",
        "./resources/**/*.js",
        "./resources/**/*.vue",
    ],
    theme: {
        extend: {
            screens: {
                "iPad-mini": "600px",
                "size-mini": "450px",
            },
            fontFamily: {
                Kanit: ["Kanit", "sans-serif"],
            },
            keyframes: {
                scaleInCenter: {
                    "0%": { transform: "scale(0)", opacity: "1" },
                    "100%": { transform: "scale(1)", opacity: "1" },
                },
            },
            animation: {
                scaleInCenter: "scaleInCenter 0.3s ease-in-out",
            },
            transitionProperty: {
                "max-height": "max-height",
            },
            keyframes: {
                kenburnsTopRight: {
                    "0%": {
                        transform: "scale(1) translate(0, 0)",
                        transformOrigin: "84% 16%",
                    },
                    "100%": {
                        transform: "scale(1.25) translate(20px, -15px)",
                        transformOrigin: "right top",
                    },
                },
            },
            animation: {
                kenburnsTopRight: "kenburnsTopRight 10s ease-in-out infinite",
            },
        },
    },
    plugins: [],
};
