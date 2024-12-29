(function($){
    function initEvents(){
        //SMOOTH SCROLL
        $('body')
        .on('click', 'a[href*="#"]:not([href="#"]):not([href="#0"])', function(event) {         // This way the clone nav will work
            //console.log('##');
            // On-page links
            if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') && location.hostname == this.hostname) {
                // Figure out element to scroll to
                var target = $(this.hash);
                target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
                // Does a scroll target exist?
                if (target.length) {
                    // Only prevent default if animation is actually gonna happen
                    event.preventDefault();
                    $('html, body').animate({
                        scrollTop: target.offset().top
                    }, 1000, function() {
                        // Callback after animation
                        // Must change focus!
                        var $target = $(target);
                        $target.focus();
                        if ($target.is(":focus")) { // Checking if the target was focused
                            return false;
                        } else {
                            //$target.attr('tabindex','-1'); // Adding tabindex for elements not focusable
                            $target.focus(); // Set focus again
                        };
                    });
                }
            }
        });

        // Toggle nav menu on click
        $('.menu-toggle').on('click', function (event) {
            event.preventDefault();
            var ref = $(this).parents('.site-header');

            if($('body').hasClass('modal_mode')){
                $('body').removeClass('modal_mode');
                $(window).scrollTop(navTop);
            }
            
            else{
                navTop = ref.offset().top;
                $('body').css('top', -1 * navTop + 'px').addClass('modal_mode');
            }
            
            $(this).toggleClass('nav-open');
        });

        // Toggle sub-menus in mobile nav
        /* $('.mobile-navigation .menu-item-has-children > a').on('click', function (event) {
            event.preventDefault();

            $(this).parent().find('.sub-menu').slideToggle(300);
        }); */

        /* // Toggle sub-menus in desktop nav when is in tablet
        $('.desktop-navigation .menu-item-has-children > a').on('click', function (event) {
            event.preventDefault();

            var subMenu = $(this).parent().find('.sub-menu');

            // This way this functionality only works in tablet 
            if(parseInt($(subMenu).css('opacity')) === 1){
                $(this).parent().removeClass('is-active');
            }
            else{
                $(this).parent().addClass('is-active');
            }
        }); */

        /* // Control scroll position so we can change the header background color
        $(document).scroll(function(event){
		    var y = window.scrollY;

            if(y>0){
                if(!$('site-header').hasClass('nav-down')){
                    $('.site-header').addClass('nav-down');
                }
            }
            else{
                $('.site-header').removeClass('nav-down');
            }
		}); */
    }

    // Set width to menu options that have childrens
    function initMenuParentsWidth(){
        var menuParents = $('.desktop-navigation .menu-item-has-children');

        for(var mParent of menuParents){
            var mParentWidth = $(mParent).outerWidth();
            var mSubmenu = $(mParent).find('.sub-menu');
            var mSubmenuWidth = $(mSubmenu).eq(0).outerWidth();

            if(mParentWidth < mSubmenuWidth){
                $(mParent).find('> a').eq(0).outerWidth(mSubmenuWidth);
            }
        }
    }

    // Sliders
    function initSlider(){
        /* // Main carousel init
        $slider = $('.main-carousel').flickity({
            // options
            cellAlign: 'left',
            contain: true,
            //wrapAround:true,
            prevNextButtons: false,
            pageDots: true,
            //groupCells: 6,
            imagesLoaded:true,
            autoPlay: 5000
        });
        $slider.flickity('resize'); */

        const swiperSliders = document.querySelectorAll('.c-slider .swiper');
        //let windowsWidth = $(window).outerWidth();
        //console.log(windowsWidth);

        swiperSliders.forEach(swiperEl => {
            //let thisNextEl = $(swiperEl).parent().get(0).find('.swiper-button-next');
            /* let thisNextEl = $(swiperEl).parent().get(0);
            console.log(thisNextEl); */

            let swiper = new Swiper(swiperEl, {
                // Optional parameters
                /* direction: 'vertical',
                loop: true, */
                /* spaceBetween: 30, */
                /* spaceBetween: (windowsWidth - $(swiperEl).width()) / 2, */
    
                // Navigation arrows
                navigation: {
                    nextEl: '.c-slider .swiper-button-next',
                    prevEl: '.c-slider .swiper-button-prev',
                },

                breakpoints: {
                    768:{
                        enabled: false
                    },
                },
    
                /* on: {
                    init: function() {
                        console.log(this);
                        console.log(this.size);
                    }
                } */
            });
        });


        /* swiper.on('init', function() {
            // do something
            console.log("hola");
        }); */

    }

    // Data
    function initData(){
        // Toggle data definition
        $('.c-data:not(.c-data--alt) .c-data__term').on('click', function (event) {
            event.preventDefault();

            $(this).parent().find('> .c-data__definition').slideToggle(300);
            $(this).parent().toggleClass('is-open');
        });
        /* $('.c-data:not(.c-data--project) .c-data__term').on('click', function (event) {
            event.preventDefault();

            $(this).parent().find('.c-data__definition').slideToggle(300);
            $(this).parent().toggleClass('is-open');
        }); */
    }

    // Call functions
    //initMenuParentsWidth();
    initEvents();
    //initSlider();
    //initData();
})(jQuery);