/*OwlCarousel Settings*/

    $(document).ready(function() {
     
      $("#owl-demo").owlCarousel({
     
          navigation : true, // Show next and prev buttons
          //slideSpeed : 300,
          paginationSpeed : 4000,
	  autoPlay: 6500,
	  autoplay: false,
	  autoplayHoverPause:true,
          singleItem:true
     
          // "singleItem:true" is a shortcut for:
          // items : 1, 
          // itemsDesktop : false,
          // itemsDesktopSmall : false,
          // itemsTablet: false,
          // itemsMobile : false
     
      });
     
    });


