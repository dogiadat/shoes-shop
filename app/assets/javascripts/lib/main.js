var $ = jQuery;
/*-------------------------------------
JQuery Serch Box
-------------------------------------*/
$('#search-button').on('click', function (e) {
  e.preventDefault();
  $(this).prev('.search-form').slideToggle('slow');
});

/*-------------------------------------
jQuery MeanMenu logo
--------------------------------------*/
$(document).ready(function(){
  $('nav#dropdown').meanmenu({siteLogo: "<a href='#' class='logo-mobile-menu'><img src='pr1-1803-shoes-shop/app/assets/images/logo.png' /></a>"});
});

/*-------------------------------------
On click loadmore functionality 
-------------------------------------*/
$('.loadmore').on('click', 'a', function (e) {
  e.preventDefault();
  var _this = $(this),
  _parent = _this.parents('.menu-list-wrapper'),
  _target = _parent.find('.menu-list'),
_set = _target.find('.menu-item.hidden').slice(0, 4); // Herre 2 is the limit
if (_set.length) {
  _set.animate({opacity: 0});
  _set.promise().done(function () {
    _set.removeClass('hidden');
    _set.show().animate({opacity: 1}, 1000);
  });
} else {
  _this.text('No more item to display');
}

return false;
});

/*-------------------------------------
Jquery Stiky Menu at window Load
-------------------------------------*/
$(window).on('scroll', function () {

  var s = $('#sticker'),
  w = $('.wrapper'),
  h = s.outerHeight(),
  windowpos = $(window).scrollTop(),
  windowWidth = $(window).width(),
  h2 = s.parent('.header-area'),
  topBar = s.prev('.header-top-area');

  if (windowWidth > 767) {
    w.css('padding-top', '');
    var topBarH, mBottom = 0;
    if (h2.length) {
      mBottom = h2.find('.header-bottom-area').outerHeight();
      topBarH = topBar.outerHeight();
    } 
    if (windowpos >= topBarH) {
      s.addClass('stick');
      if (h2.length) {
        topBar.css('margin-bottom', mBottom + 'px');
      }
    } else {
      s.removeClass('stick');
      if (h2.length) {
        topBar.css('margin-bottom', 0);
      }
    }
  }

});
/*-------------------------------------
Wow js Initiation 
-------------------------------------*/
// $(document).ready(function(){
//  new WOW().init();
// });

/*-------------------------------------
Jquery Scollup Initiation
-------------------------------------*/
$(document).ready(function(){
  $.scrollUp({
    scrollText: '<i class="fa fa-arrow-up"></i>',
    easingType: 'linear',
    scrollSpeed: 900,
    animation: 'fade'
  });
});

/*-------------------------------------
Window onLoad and onResize event trigger
-------------------------------------*/
$(window).on('load resize', function () {
//Define the maximum height for mobile menu
var wHeight = $(window).height(),
mLogoH = $('a.logo-mobile-menu').outerHeight();
wHeight = wHeight - 50;
$('.mean-nav > ul').css('height', wHeight + 'px');
});

/* -------- owl carousel ------------ */
$(document).ready(function() {
  $('.services .owl-carousel.owl-services').owlCarousel({
    loop: true,
    margin:10,
    dots: true,
    nav: false,
    navText: ["<div class='btn btn-prev fa fa-caret-left'></div>","<div class='btn btn-prev fa fa-caret-right'></div>"],
    autoplay: false,
    autoplayTimeout: 5000,
    autoplayHoverPause: true,
    smartSpeed: 1000,
    responsive:{
      0:{
        items:1,
        margin:10
      },
      375:{
        items:1,
        margin:10
      },
      575:{
        items:1,
        margin:10
      },
      768:{
        items:2
      },
      992:{
        items:3
      },
      1200:{
        items:4
      }
    }
  });
  $('.product .owl-carousel.owl-product').owlCarousel({
    loop: true,
    margin:10,
    dots: true,
    nav: false,
    navText: ["<div class='btn btn-prev fa fa-caret-left'></div>","<div class='btn btn-prev fa fa-caret-right'></div>"],
    autoplay: false,
    autoplayTimeout: 5000,
    autoplayHoverPause: true,
    smartSpeed: 1000,
    responsive:{
      0:{
        items:1,
        margin:10
      },
      375:{
        items:1,
        margin:10
      },
      575:{
        items:1,
        margin:10
      },
      768:{
        items:2
      },
      992:{
        items:3
      },
      1200:{
        items:5
      }
    }
  });
  $('.banner .owl-carousel.owl-banner').owlCarousel({
    loop: true,
    margin:10,
    dots: true,
    nav: false,
    navText: [""],
    autoplay: false,
    autoplayTimeout: 5000,
    autoplayHoverPause: false,
    smartSpeed: 1000,
    responsive:{
      0:{
        items:1,
        margin:10
      },
      375:{
        items:1,
        margin:10
      },
      575:{
        items:1,
        margin:10
      },
      768:{
        items:1
      },
      992:{
        items:2
      },
      1200:{
        items:2
      }
    }
  });
  $('.news-post .owl-carousel.owl-post-sale').owlCarousel({
    loop: true,
    margin:10,
    dots: true,
    nav: false,
    navText: [""],
    autoplay: false,
    autoplayTimeout: 5000,
    autoplayHoverPause: true,
    smartSpeed: 1000,
    responsive:{
      0:{
        items:1,
        margin:10
      },
      375:{
        items:1,
        margin:10
      },
      575:{
        items:1,
        margin:10
      },
      768:{
        items:2
      },
      992:{
        items:3
      },
      1200:{
        items:3
      }
    }
  });
  $('.brand .owl-carousel.owl-brand').owlCarousel({
    loop: true,
    margin:10,
    dots: true,
    nav: false,
    navText: [""],
    autoplay: false,
    autoplayTimeout: 5000,
    autoplayHoverPause: false,
    smartSpeed: 1000,
    responsive:{
      0:{
        items:2,
        margin:10
      },
      375:{
        items:2,
        margin:10
      },
      575:{
        items:2,
        margin:10
      },
      768:{
        items:2
      },
      992:{
        items:2
      },
      1200:{
        items:6
      }
    }
  });
});
// tab pane
$(document).ready(function(){
  
  $('ul.tabs li').click(function(){
    var tab_id = $(this).attr('data-tab');

    $('ul.tabs li').removeClass('current');
    $('.tab-content').removeClass('current');

    $(this).addClass('current');
    $("#"+tab_id).addClass('current');
  });
});
