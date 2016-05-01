$(document).ready(function(){
    $('#nav-main-menu').superfish({
    });

    $('.flexslider').flexslider({
        controlNav: false,
        directionNav: true,
        animationLoop: true,
        slideshow: true,
        slideshowSpeed:5000,
        pauseOnAction: true,
        touch: false,
        animationSpeed: 500
    });

    $('.gallery').owlCarousel({
        items:1,
        margin:10,
        loop:true,
        nav:true,
        autoplay:true

    });

});
