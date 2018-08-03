function swipeCarousel () {
  $(document).ready(function() {
     $("#carousel-images-<%= apartment.id %>").swiperight(function() {
        $(this).carousel('prev');
      });
     $("#carousel-images-<%= apartment.id %>").swipeleft(function() {
        $(this).carousel('next');
     });
  });
}
export { swipeCarousel };
