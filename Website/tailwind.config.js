/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./**/*.{html,js}"],
  theme: {
    extend: {
      fontFamily: {
        'fredoka' : ['Fredoka', 'sans-serif'],
        'rubik' : ['Rubik', 'sans-serif'],
      },
      colors :{
        'rosered' : ['#c13164'],
        'candypink' : ['#e67c8b'],
        'verdigris' : ['#3caaab'],
        'bluesapphir' : ['#145875'],
      }
    },
  },
  plugins: [
    require("daisyui"),
    require('@tailwindcss/forms'),
  ],

   // daisyUI config (optional)
   daisyui: {
    darkTheme: "light",
  },
}
