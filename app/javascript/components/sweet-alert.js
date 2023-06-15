import swal from 'sweetalert';

function sweetAlertReservation() {
  const swalButton = document.querySelector('.sweet-alert-reservation');
    if (swalButton) { // protect other pages
      swalButton.addEventListener('click', () => {
        swal({
          title: i18n.title,
          buttons:
          {
            flatshare: i18n.option1,
            apartment:i18n.option2
          },
        }).then(value => {
          switch (value) {
            case "flatshare":
              location.href = 'https://docs.google.com/forms/d/e/1FAIpQLScFlItNbbbMVsVucvpQUKOoHCj-SLS0IYoMklJMoZiUGIT17A/viewform';
              break;
            case "apartment":
              location.href ='https://goo.gl/forms/KmEczmhDktRC48V73';
              break;
          };
        });
      });
    };
};

function sweetAlertContact() {
 const swalButton = document.querySelector('.sweet-alert-contact');
    if (swalButton) { // protect other pages
      swalButton.addEventListener('click', () => {
        swal({
          title: i18n.title,
          buttons:
          {
            flatshare: i18n.option1,
            apartment:i18n.option2
          },
        }).then(value => {
          switch (value) {
            case "flatshare":
              location.href = "https://www.messenger.com/t/314138672074369";
              break;
            case "apartment":
              location.href = "https://www.messenger.com/t/314138672074369";
              break;
          };
        });
      });
    };
}

export { sweetAlertReservation };
export { sweetAlertContact };
