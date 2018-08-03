function swipeCarousel () {
  $(document).ready(function() {
     $("#carousel-images-<%= apartment.id %>").swiperight(function() {
        $(this).carousel('prev');
      });
     $(".carousel").swipeleft(function() {
        $(this).carousel('next');
     });
  });
}
export { swipeCarousel };
