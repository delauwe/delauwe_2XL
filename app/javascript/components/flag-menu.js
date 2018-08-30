 import $ from 'jquery';




console.log('hello')

function flagMenu() {
  const flags = document.querySelector('.dropdown-item')
  flags.forEach((flag) => {
    flag.addEventListener('click', (event) => {
      document.querySelector('.active').forEach((active) => {
        active.classList.remove('active');
      });
      event.currentTarget.classList.toggle('active');
    });
  });


  document.getElementById('flag-container').addEventListener('click', (event) => {
    console.log('hello')
  })


}



export { flagMenu };





// const selectFlag = document.getElementById('languageMenuToggle');
      // selectFlag.innerHTML = console.log('hello')
