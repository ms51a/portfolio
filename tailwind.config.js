module.exports = {
  content: [
    './app/views/**/*.html.erb',
    './app/helpers/**/*.rb',
    './app/assets/stylesheets/**/*.css',
    './app/javascript/**/*.js'
  ],
  theme: {
    extend: {},
      fontFamily: {
        dotgothic16: ["Dotgothic16", "sans-serif"],
      },
      colors: {
        main: "#2936B1",
        white: "#ffffff",
        black: "#000000"
        
      },
    },
  
  plugins: [
    require('daisyui')
  ],
}
