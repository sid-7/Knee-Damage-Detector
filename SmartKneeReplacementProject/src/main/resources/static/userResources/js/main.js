(function($) {

    "use strict";

    //Global Variables
    var windowHeight = $(window).height();
    var windowWidth = $(window).width();

    //Document Ready
    $(document).on('ready', function() {

        //Counter up
        $('.counter').counterUp({
            delay: 10,
            time: 1000
        });

        $('.section-wave').each(function() {

            var self = $(this);

            $(this).waypoint({
                offset: '85%',
                handler: function() {
                    self.addClass('active')
                }
            });
        })

        //Dynamic sticky Menu

        var sitckyHeader = $('.navbar-sticky');
        if (sitckyHeader.length > 0) {
            var navOffset = $('.navbar-sticky').offset().top;
            $(window).on('scroll', function() {
                var $cloneNav = $('.navbar-sticky').clone(true);
                $cloneNav.addClass('sticky-active');
                if ($(this).scrollTop() > navOffset) {
                    if ($(document).find('.sticky-active').length < 1) {
                        $('.navbar-sticky').not('.sticky-active').css({
                            visibility: 'hidden',
                            opacity: 0
                        });
                        $('header').append($cloneNav);
                        $cloneNav.show('slow');
                    } else {

                    }
                } else {
                    $('.navbar-sticky').not('.sticky-active').css({
                        visibility: 'visible',
                        opacity: 1
                    });
                    $('.sticky-active').remove();
                }
            });
        }


        //Anime js
        $('.ml12').each(function() {
            $(this).html($(this).text().replace(/([^\x00-\x80]|\w)/g, "<span class='letter'>$&</span>"));
        });

        anime.timeline({
                loop: false
            })
            .add({
                targets: '.ml12 .letter',
                translateX: [40, 0],
                translateZ: 0,
                opacity: [0, 1],
                easing: "easeOutExpo",
                duration: 1200,
                delay: function(el, i) {
                    return 500 + 30 * i;
                },
                complete: function() {
                    anime({
                        targets: '.ml12 .letter',
                        opacity: 1,
                        duration: 1000,
                    });
                }
            });


        anime.timeline({ loop: false })
            .add({
                targets: '.ml15 .word',
                scale: [2, 1],
                opacity: [0, 1],
                easing: "easeOutCirc",
                duration: 800,
                delay: function(el, i) {
                    return 800 * i;
                },
                complete: function() {
                    anime({
                        targets: '.ml15 .word',
                        opacity: 1,
                        duration: 1000,
                    });
                }
            });


        /* ----------------------------------
        ----------------------------------*/
        $('.doctors-slider').slick({
            slidesToScroll: 1,
            slidesToShow: 3,
            dots: true,
            infinite: true,
            centerMode: true,
            autoplay: true,
            autoplaySpeed: 2000,
            centerPadding: '0px',
            arrows: false,
            responsive: [{
                    breakpoint: 992,
                    settings: {
                        centerMode: false,
                        slidesToShow: 2
                    }
                },
                {
                    breakpoint: 768,
                    settings: {
                        centerMode: false,
                        slidesToShow: 2

                    }
                },
                {
                    breakpoint: 577,
                    settings: {
                        autoplay: true,
                        centerMode: false,
                        slidesToShow: 1
                    }
                },
                {
                    breakpoint: 300,
                    settings: {
                        autoplay: false,
                        centerMode: false,
                        slidesToShow: 1
                    }
                }
            ]

        });
        //Testimonial slider
        $('.testimonial-slider2').slick({
            slidesToScroll: 1,
            slidesToShow: 1,
            dots: true,
            infinite: true,
            arrows: false

        });
        //Partner Slider
        $('.partner-slider').slick({
            slidesToScroll: 1,
            slidesToShow: 5,
            dots: false,
            infinite: true,
            autoplay: true,
            autoplaySpeed: 2000,
            arrows: false,
            responsive: [{
                    breakpoint: 992,
                    settings: {
                        slidesToShow: 4
                    }
                },
                {
                    breakpoint: 768,
                    settings: {
                        slidesToShow: 2
                    }
                },
                {
                    breakpoint: 300,
                    settings: {
                        slidesToShow: 1
                    }
                }
            ]

        });
        //
        $('.testimonial-slider').slick({
            slidesToScroll: 1,
            slidesToShow: 2,
            dots: true,
            infinite: true,
            arrows: false,
            responsive: [{
                    breakpoint: 992,
                    settings: {
                        slidesToShow: 2
                    }
                },
                {
                    breakpoint: 768,
                    settings: {
                        slidesToShow: 1
                    }
                },
                {
                    breakpoint: 300,
                    settings: {
                        slidesToShow: 1
                    }
                }
            ]

        });

        // Department Carousel


        //Set background image for WordPress
        $(".set-bg").each(function() {
            var thesrc = $(this).attr('data-bg');
            $(this).css("background-image", "url(" + thesrc + ")");
            $(this).css("background-position", "center");
            $(this).css("background-size", "cover");
            $(this).css("background-repeat", "no-repeat");
            $(this).removeAttr('data-bg');
        });
        //Date Picker
        $(".datepicker").datepicker({
            dateFormat: 'yy-mm-dd',
        });
        //Select-2
        $('.js-example-basic-single').select2();

        // Convert All Image to SVG
        $('img.svg').each(function() {
            var $img = $(this),
                imgID = $img.attr('id'),
                imgClass = $img.attr('class'),
                imgURL = $img.attr('src');

            $.get(imgURL, function(data) {
                var $svg = $(data).find('svg');
                if (typeof imgID !== 'undefined') {
                    $svg = $svg.attr('id', imgID);
                }
                if (typeof imgClass !== 'undefined') {
                    $svg = $svg.attr('class', imgClass);
                }
                $svg = $svg.removeAttr('xmlns:a');
                $img.replaceWith($svg);
            }, 'xml');

        });

        //Burget Menu
        $('.burger_menu').on('click', function(e) {
            e.preventDefault();
            if (isMobile) {
                moileMenu()
            } else {

            }
            $(this).toggleClass('is-open');
            $('.bcbd_collpase_nav').toggleClass('show_clmenu');
            $('.bcbd_navbar').toggleClass('activeMobileMenu');
            $('.bcbd_nav').find('.opendp').removeClass('opendp');
            $('.bcbd_nav').children('.hs_dropdown').find('.mega-menu').slideUp();
            $('.bcbd_nav').children('.hs_dropdown').find('.bcbd_dropdown').slideUp();
            $('body').toggleClass("mobileMenuOpen");
            if ($('body').hasClass("mobileMenuOpen")) {
                $('body').css('overflowY', 'hidden');

            } else {
                $('body').css({
                    overflow: 'visible',
                    height: '100%'
                });
            }
        });

        //For drop down navigation
        $('.hs_dropdown > a').on('click', function(e) {
            var hash = this.hash;
            if ($(this).attr('href') != '' || hash) {
                e.preventDefault();
                e.stopPropagation();
            } else {

            }

        });

        var wWidth = $(window).width();
        var isMobile = wWidth < 992;
        $(window).on('resize', function() {
            wWidth = $(window).width();
            isMobile = wWidth < 992;
            if (wWidth >= 992) {
                $('.mega-menu').show();
                $('.bcbd_dropdown').show();
            }
        });

        function moileMenu() {
            $('.hs_dropdown').on('click', function(ev) {
                //ev.preventDefault();
                ev = window.event || ev;
                ev.stopPropagation();
                if ($(this).parents('.bcbd_collpase_nav').hasClass('show_clmenu')) {
                    $(this).children('ul').stop().slideToggle();
                    $(this).siblings('.hs_dropdown').children('ul').stop().slideUp();
                    $(this).siblings('.hs_dropdown').children('.mega-menu ').stop().slideUp();
                    $(this).toggleClass('opendp');
                    $(this).siblings('.hs_dropdown').children('.mega-menu').find('.opendp').children('.bcbd_dropdown').stop().slideUp();
                    $(this).siblings('.hs_dropdown').children('.mega-menu').find('.opendp ').removeClass('opendp')
                    $(this).siblings('.hs_dropdown').removeClass('opendp');

                    if ($(this).children('.mega-menu ')) {
                        $(this).children('.mega-menu ').stop().slideToggle();

                    }
                }

            });
        }


        //ripple Effect
        $(".banenr").on('click',function(e) {

            // Remove any old one
            $(".ripple").remove();

            // Setup
            var posX = $(this).offset().left,
                posY = $(this).offset().top,
                buttonWidth = $(this).width(),
                buttonHeight = $(this).height();

            // Add the element
            $(this).prepend("<span class='ripple'></span>");


            // Make it round!
            if (buttonWidth >= buttonHeight) {
                buttonHeight = buttonWidth;
            } else {
                buttonWidth = buttonHeight;
            }

            var x = e.pageX - posX - buttonWidth / 2;
            var y = e.pageY - posY - buttonHeight / 2;

            $(".ripple").css({
                width: buttonWidth,
                height: buttonHeight,
                top: y + 'px',
                left: x + 'px'
            }).addClass("rippleEffect");
        })

        //scroll top
        var documentHeight = $(document).height();
        var scrollableHeight = documentHeight / 1.70;
        $('.scroll-top').hide();
        $(window).on('scroll', function() {
            if ($(this).scrollTop() > scrollableHeight) {
                $('.scroll-top').show();
            } else {
                $('.scroll-top').hide();
            }
        });
        $('.scroll-top').on('click', function() {
            $("html, body").animate({ scrollTop: 0 }, "slow");
        });

        //Venobox
        $('.venobox').venobox();

    });
    
    //Check Content block children
    $('.content-block').each(function(index, el) {
        if($(this).children().length > 0){
            $(this).addClass('has-content')
        }
    });


    /* ----------------------------------
    ----------------------------------*/
    $(document).on('mouseup',function(e) {
        var container = $(".nav_outer,.burger_menu");
        if (!container.is(e.target) && container.has(e.target).length === 0) {
            $('.burger_menu').removeClass('is-open');
            $('.bcbd_navbar').removeClass('activeMobileMenu');
            $('body').removeClass('mobileMenuOpen');
            $('.bcbd_collpase_nav').removeClass('show_clmenu');

        }
    });


    // Makin Wp Frindly Parallax image

    $('.parallax-window').each(function() {
        var image = $(this).attr('data-bg');
        $(this).parallax({
            imageSrc: image
        });
    });


    //Mouse Move
    $(window).on('load', function() {
        var wrapper = document.querySelector('.banenr.type-2');
        if ($('.banenr.type-2').length > 0) {
            var layerOne = document.querySelector('.inner-image');
            wrapper.addEventListener('mousemove', function(e) {
                var pageX = e.clientX,
                    pageY = e.clientY;
                layerOne.style.webkitTransform = 'translateX(' + pageX / 250 + '%) translateY(' + pageY / 250 + '%)';
                layerOne.style.transform = 'translateX(' + pageX / 250 + '%) translateY(' + pageY / 250 + '%)';

            });
        }
    });

    //Windows Load
    $(window).on('load', function() {
        var wrapper = document.querySelector('.banenr.type-4');
        if ($('.banenr.type-4').length > 0) {
            var layerOne = document.querySelector('.logo-box');
            var layerTwo = document.querySelector('.banenr.type-4 h5');
            var layerThree = document.querySelector('.banenr.type-4  .btn');
            var layerFour = document.querySelector('.banenr.type-4  h1');
            var layerFive = document.querySelector('.banenr.type-4  .no-border');
            wrapper.addEventListener('mousemove', function(e) {
                var pageX = e.clientX,
                    pageY = e.clientY;
                layerOne.style.webkitTransform = 'translateX(' + pageX / 240 + '%) translateY(' + pageY / 40 + '%)';
                layerOne.style.transform = 'translateX(' + pageX / 240 + '%) translateY(' + pageY / 40 + '%)';

                layerTwo.style.webkitTransform = 'translateX(' + pageX / 240 + '%) translateY(' + pageY / 40 + '%)';
                layerTwo.style.transform = 'translateX(' + pageX / 240 + '%) translateY(' + pageY / 40 + '%)';

                layerThree.style.webkitTransform = 'translateX(' + pageX / 240 + '%) translateY(' + pageY / 40 + '%)';
                layerThree.style.transform = 'translateX(' + pageX / 240 + '%) translateY(' + pageY / 40 + '%)';

                layerFour.style.webkitTransform = 'translateX(' + pageX / 200 + '%) translateY(' + pageY / 40 + '%)';
                layerFour.style.transform = 'translateX(' + pageX / 240 + '%) translateY(' + pageY / 40 + '%)';

                layerFive.style.webkitTransform = 'translateX(' + pageX / 200 + '%) translateY(' + pageY / 40 + '%)';
                layerFive.style.transform = 'translateX(' + pageX / 240 + '%) translateY(' + pageY / 40 + '%)';

                wrapper.style = 'background-position:' + pageX / 100 + 'px' + ' ' + pageY / 40 + 'px';

            });
        }
    });
    //Check height for Banner

    

    $(window).on('load', function() {
        if (windowHeight <= 800) {
            $('.banenr.type-4 .banner-inner').each(function(index, el) {
                $(this).addClass('full-height');
            });
            $('.reversed-margin.appoint-area').each(function(index, el) {
                $(this).addClass('low-banner-height');
            });
        } else {
            $('.reversed-margin.appoint-area').removeClass('low-banner-height');
        }
        // isotop initialize
        $('.pricing-grid').isotope({
            itemSelector: '.grid-item',
            filter: '.monthly'

        });

        $('.pricing-filter li').on('click', function() {
            $(this).addClass('active').siblings().removeClass('active');
            var filterValue = $(this).attr('data-filter');
            $('.grid').isotope({
                filter: filterValue
            });
        });


        var grid = $('.grid');
        if (grid.length > 0) {
            grid.each(function(index, el) {
                $('.grid').isotope({
                    itemSelector: '.grid-item'

                });

                $('.filter li').on('click', function() {
                    $(this).addClass('active').siblings().removeClass('active');
                    var filterValue = $(this).attr('data-filter');
                    $('.grid').isotope({
                        filter: filterValue
                    });
                });

            });
        }
    })


    // Content schedule
    $(window).on("load resize scroll", function(e) {
        $('.content-block').each(function() {
            if ($(this).children('div').length > 0) {

            } else {
                $(this).addClass('no-schedule')
            }
        });
    });
    //Preloader

 
    $(window).on('load',function(){
        if ($('.preloader').length > 0) {
            $('.preloader').fadeOut('slow', function () {
                $(this).hide();
            });
        }
    });



})(jQuery);