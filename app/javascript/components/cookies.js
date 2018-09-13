function cookies() {
  window.addEventListener("load", function(){
    window.cookieconsent.initialise({
      "palette": {
        "popup": {
          "background": "#eaf7f7",
          "text": "#5c7291"
        },
        "button": {
          "background": "#56cbdb",
          "text": "#ffffff"
        }
      }
    })
  });
}

export { cookies }
