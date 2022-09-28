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
      },
    },
  },
  plugins: [
    require("daisyui"),
    require('@tailwindcss/forms'),
  ],

   // daisyUI config (optional)
   daisyui: {
    themes: [
      {
        mytheme: {
          "primary": "#c13164",
          "secondary": "#F000B8",     
          "accent": "#37CDBE" ,                   
          "neutral": "#3D4451",                   
          "base-100": "#FFFFFF",                   
          "info": "#3ABFF8",                   
          "success": "#36D399",               
          "warning": "#FBBD23",                
          "error": "#F87272",
        },
      },
    ],
  },
}
