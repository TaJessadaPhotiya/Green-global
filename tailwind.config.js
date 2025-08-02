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
        swingRightFwd: {
          "0%": {
            transform: "rotateY(0)",
            transformOrigin: "right",
          },
          "100%": {
            transform: "rotateY(180deg)",
            transformOrigin: "right",
          },
        },
        jelloHorizontal: {
          "0%": { transform: "scale3d(1, 1, 1)" },
          "30%": { transform: "scale3d(1.25, 0.75, 1)" },
          "40%": { transform: "scale3d(0.75, 1.25, 1)" },
          "50%": { transform: "scale3d(1.15, 0.85, 1)" },
          "65%": { transform: "scale3d(0.95, 1.05, 1)" },
          "75%": { transform: "scale3d(1.05, 0.95, 1)" },
          "100%": { transform: "scale3d(1, 1, 1)" },
        },
        focusInExpand: {
          "0%": {
            letterSpacing: "-0.5em",
            filter: "blur(12px)",
            opacity: "0",
          },
          "100%": {
            letterSpacing: "normal",
            filter: "blur(0px)",
            opacity: "1",
          },
        },
      },
      animation: {
        scaleInCenter: "scaleInCenter 0.3s ease-in-out",
        kenburnsTopRight: "kenburnsTopRight 10s ease-in-out infinite",
        swingRightFwd: "swingRightFwd 0.7s ease-in-out forwards",
        jelloHorizontal: "jelloHorizontal 0.9s both",
        focusInExpand: "focusInExpand 0.8s ease-out both",
      },
      transitionProperty: {
        "max-height": "max-height",
      },
    },
  },
  plugins: [],
};
