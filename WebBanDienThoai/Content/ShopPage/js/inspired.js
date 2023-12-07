var INS = {
    init: function () {
        this.Main.init();
        if (window.shop.template == 'index') {
            this.Home.init();
        }


    },
    load: function () {
        this.loadPage.init();
    }
}
$(document).ready(function () {
    INS.init();
})

$(window).load(function () {
    INS.load();
})
/* jQuery for all*/
INS.Main = {
    init: function () {
        this.fastClick();
        this.searchAutoComplete();
        this.scrollToTop();
        this.productItemAddCart();
        this.mobileActions();
        this.UpadteItemCart();
        this.DeleteAllCart();
        this.DeleteOneItemCart();
        this.ajaxAddCartProduct();
        this.ajaxQuickViewCart();
    },
    fastClick: function () {
        $(function () {
            FastClick.attach(document.body);
        });
    },
    searchAutoComplete: function () {
        var $input = $('#searchFRM input[type="text"]');
        $input.bind('keyup change paste propertychange', function () {
            var key = $(this).val(),
                $parent = $(this).parents('.frmSearch'),
                $results = $(this).parents('.frmSearch').find('.ajaxSearchAuto');
            if (key.length > 0 && key !== $(this).attr('data-history')) {
                $(this).attr('data-history', key);
                var str = '/search/smartsearch?q=' + key;
                console.log(str);
                $.ajax({
                    url: str,
                    type: 'GET',
                    async: true,
                    success: function (data) {
                        $results.find('.resultsContent').html(data);
                    }
                })
                $results.fadeIn();
            }
        })
        $('body').click(function (evt) {
            var target = evt.target;
            if (target.id !== 'ajaxSearchResults' && target.id !== 'inputSearchAuto') {
                $("#ajaxSearchResults").hide();
            }
        });
        $('body').on('click', '#searchFRM input[type="text"]', function () {
            if ($(this).is(":focus")) {
                if ($(this).val() != '') {
                    $("#ajaxSearchResults").show();
                }
            } else {

            }
        })
    },
    scrollToTop: function () {
        jQuery(window).scroll(function () {
            if ($(this).scrollTop() > 100) {
                $('.tempFixed .itemFixed.backTop').addClass('trans');
            } else {
                $('.tempFixed .itemFixed.backTop').removeClass('trans');
            }
        });

        //Click event to scroll to top
        jQuery('.backTop a').click(function () {
            $('html, body').animate({
                scrollTop: 0
            }, 600);
            return false;
        });
        jQuery('.tempFixed .itemFixed.hotLine label i').click(function () {
            $(this).parents('.hotLine').fadeOut(500)
        });
    },
    productItemAddCart: function () {
        $(document).on('click', '.Addcart', function () {
            var qty = 1,
                variantID = $(this).attr('data-variantid'),
                cart = $('.tempFixed .cartFixed'),
                image = $(this).parents('.pdLoopItem').find('.pdLoopImg img').eq(0);
            cart.addClass('loading');
            INS.Main.flyToElement(image, cart);
            INS.Main.ajaxAddCart(qty, variantID);
        })
    },




    UpadteItemCart: function () {
        $(document).on('click', '#btn_update_cart', function () {
            var quanlity_prouct = $(".quanlity_cart");
            var carList = [];

            $.each(quanlity_prouct, function (i, item) {
                carList.push({
                    Quanlity: $(item).val(),
                    Product: {
                        ProductID: $(item).data("id")
                    }
                });
            });


            $.ajax({
                url: "Cart/UpdateCart",
                data: { CartModels: JSON.stringify(carList) },
                dataType: "json",
                type: "POST" ,
                success: function (data) {
                    if (data.status == true) {
                        window.location.href = "/cart";
                    }
                }
            });

        })
    },


    DeleteAllCart: function () {
        $(document).on('click', '#delete_all_cart', function () {

            $.ajax({
                url: "Cart/DeleteCartAll",
                dataType: "json",
                type: "POST",
                success: function (data) {
                    if (data.status == true) {
                        window.location.href = "/cart";
                    }
                }
            });

        })
    },


    DeleteOneItemCart: function () {
        $(document).on('click', '.cart__remove', function () {
            var id = $(this).data("id");
            $.ajax({
                url: "Cart/DeleteOneCart",
                data:{id:id},
                dataType: "json",
                type: "POST",
                success: function (data) {
                    if (data.status == true) {
                        window.location.href = "/cart";
                    }
                }
            });

        })
    },

    

    flyToElement(flyer, flyingTo) {
        var $func = $(this);
        var divider = 10;
        var flyerClone = $(flyer).clone().css('width', '100px');
        $(flyerClone).css({
            position: 'absolute',
            top: $(flyer).offset().top + "px",
            left: $(flyer).offset().left + "px",
            opacity: 1,
            'z-index': 100001
        });
        $('body').append($(flyerClone));
        var gotoX = $(flyingTo).offset().left + ($(flyingTo).width() / 2) - ($(flyer).width() / divider) / 2;
        var gotoY = $(flyingTo).offset().top + ($(flyingTo).height() / 2) - ($(flyer).height() / divider) / 2;

        $(flyerClone).animate({
            opacity: 0.5,
            left: gotoX,
            top: gotoY,
            width: 10,
            height: 10
        }, 1000,
            function () {
                $(flyingTo).fadeOut('fast', function () {
                    $(flyingTo).fadeIn('fast', function () {
                        $(flyerClone).fadeOut('fast', function () {
                            $(flyerClone).remove();
                            flyingTo.removeClass('loading');
                        });
                    });
                });
            });
    },
    ajaxAddCart: function (qty, id) {
        var cartItem = parseInt($('#cartCount').text());
        var params = {
            type: 'GET',
            url: '/addcart',
            data: 'ProductID=' + id + '&Quanlity=' + qty,
            success: function (line_item) {
                $('.cartItemCount').text(cartItem + qty);
            },
            error: function (err) {
                alert("Error");
            }
        };
        jQuery.ajax(params);
    },


    ajaxQuickViewCart: function () {
        $(document).on('click', '.btn-add-cart-quickview', function () {
            var qty = parseInt($('#quick-view-modal .form-input input[type=number]').val()),
					variantID = $('.btn-add-cart-quickview').attr("data-variantid"),
					cart = $('.tempFixed .cartFixed'),
					image = $(this).parents('#quick-view-modal').find('.p-product-image-feature');
            cart.addClass('loading');
            INS.Main.flyToElement(image, cart);
            INS.Main.ajaxAddCart(qty, variantID);
        })
    },




    ajaxAddCartProduct: function () {
        $(document).on('click', '.btn-add-cart-product', function () {
            var cartItem = parseInt($('#cartCount').text());
            var id = $(this).data("productid");
            var qty = parseInt($('.wrapBlockInfo .groupQty input').val()),
					variantID = $('#product-select').val(),
					cart = $('.tempFixed .cartFixed'),
					image = $('.wrapperPdImage .featureImg img');
            cart.addClass('loading');
            INS.Main.flyToElement(image, cart);
            

            $.ajax({
                url: '/addcart',
                data: 'ProductID=' + id + '&Quanlity=' + qty,
                type: "GET",
                success: function (data) {
                    $('.cartItemCount').text(cartItem + qty);
                }
            });


        })
    },



    mobileActions: function () {
        $(document).on('click', '.btnMBToggleNav, .closeMenuMB, .overlayMenu', function () {
            $('body').toggleClass('openNav');
        })
    }
};
/* jQuery for index*/
INS.Home = {
    init: function () {
        this.owlSliderHome();
        this.renderTopProduct();
        this.slideBlockHome();
        this.actionMediaScreen();
    },
    owlSliderHome: function () {
        var sliderOWl = jQuery('.sliderWrap').owlCarousel({
            items: 1,
            lazyLoad: true,
            loop: false,
            autoplay: false,
            margin: 0,
            responsiveClass: true,
            paginationSpeed: 800,
            nav: false,
            navText: ['‹', '›'],
            afterAction: function () {

            }
        });
        var size = $('.subWrap ul.listSub li').length,
            sizeWidth = 100 / size;
        $('.subWrap ul.listSub li').css('width', sizeWidth + '%');
        $('.subWrap ul.listSub li a').on('click', function () {
            $('.subWrap ul.listSub li').removeClass('active');
            $(this).parent().addClass('active');
            var index = $(this).parent().index();
            sliderOWl.trigger('to.owl.carousel', index)
        })
        sliderOWl.on('initialized.owl.carousel changed.owl.carousel refreshed.owl.carousel', function (event) {
            if (!event.namespace) return;
            var carousel = event.relatedTarget,
                element = event.target,
                current = carousel.current();
            $('.subWrap ul.listSub li').removeClass('active');
            $('.subWrap ul.listSub li').eq(current).addClass('active');
        })
    },


    renderTopProduct: function () {
        if ($('#topProducts').size() > 0) {
            var checkAuto = parseInt($('#topProducts').attr('data-auto'));
            if (checkAuto == 1) {
                var str = '/collections/all?sort_by=best-selling&view=top';
                $.ajax({
                    url: str,
                    async: false,
                    beforeSend: function () { },
                    success: function (data) {
                        var parsed = $.parseHTML(data);
                        var html = $(parsed).filter('.itemTop[data-show="true"]').clone();
                        $('#pdTopLisstting').append(html);
                    }
                })
                var owl = $('#pdTopLisstting');
                setTimeout(function () {
                    owl.on('initialize.owl.carousel initialized.owl.carousel ' +
                        'initialize.owl.carousel initialize.owl.carousel ' +
                        'resize.owl.carousel resized.owl.carousel ' +
                        'refresh.owl.carousel refreshed.owl.carousel ' +
                        'update.owl.carousel updated.owl.carousel ' +
                        'drag.owl.carousel dragged.owl.carousel ' +
                        'translate.owl.carousel translated.owl.carousel ' +
                        'to.owl.carousel changed.owl.carousel',
                        function (e) {
                            $('#topProducts').fadeIn(500);
                        })
                    owl.owlCarousel({
                        items: 6,
                        loop: false,
                        autoplay: false,
                        margin: 15,
                        responsiveClass: true,
                        dots: false,
                        nav: true,
                        navText: ['‹', '›'],
                        responsive: {
                            0: {
                                items: 1
                            },
                            320: {
                                items: 2
                            },
                            480: {
                                items: 2
                            },
                            767: {
                                items: 3
                            },
                            992: {
                                items: 5
                            },
                            1200: {
                                items: 6
                            }
                        }
                    });
                    owl.find('.owl-prev').addClass('disabled')
                    owl.on('initialized.owl.carousel changed.owl.carousel refreshed.owl.carousel', function (event) {
                        if (!event.namespace) return;
                        var carousel = event.relatedTarget,
                            element = event.target,
                            current = carousel.current();
                        $('.owl-next', element).toggleClass('disabled', current === carousel.maximum());
                        $('.owl-prev', element).toggleClass('disabled', current === carousel.minimum());
                    })
                    $('#compareProduct .listCpPd').html('');
                }, 1000)
            } else {
                var owl = $('#pdTopLisstting');
                owl.on('initialize.owl.carousel initialized.owl.carousel ' +
                    'initialize.owl.carousel initialize.owl.carousel ' +
                    'resize.owl.carousel resized.owl.carousel ' +
                    'refresh.owl.carousel refreshed.owl.carousel ' +
                    'update.owl.carousel updated.owl.carousel ' +
                    'drag.owl.carousel dragged.owl.carousel ' +
                    'translate.owl.carousel translated.owl.carousel ' +
                    'to.owl.carousel changed.owl.carousel',
                    function (e) {
                        $('#topProducts').fadeIn(500);
                    })
                owl.owlCarousel({
                    items: 6,
                    loop: false,
                    autoplay: false,
                    margin: 15,
                    responsiveClass: true,
                    dots: false,
                    nav: true,
                    navText: ['‹', '›'],
                    responsive: {
                        0: {
                            items: 1
                        },
                        320: {
                            items: 2
                        },
                        480: {
                            items: 2
                        },
                        767: {
                            items: 3
                        },
                        992: {
                            items: 5
                        },
                        1200: {
                            items: 6
                        }
                    }
                });
                owl.find('.owl-prev').addClass('disabled')
                owl.on('initialized.owl.carousel changed.owl.carousel refreshed.owl.carousel', function (event) {
                    if (!event.namespace) return;
                    var carousel = event.relatedTarget,
                        element = event.target,
                        current = carousel.current();
                    $('.owl-next', element).toggleClass('disabled', current === carousel.maximum());
                    $('.owl-prev', element).toggleClass('disabled', current === carousel.minimum());
                })
                $('#compareProduct .listCpPd').html('');

            }
        }
    },
    slideBlockHome: function () {
        $('.slidePDHome').each(function () {
            var sizeChild = $(this).children('.productItem').size();
            if (sizeChild > 0) {
                var owl = $(this);
                owl.parent().hide();
                owl.on('initialize.owl.carousel initialized.owl.carousel ' +
                    'initialize.owl.carousel initialize.owl.carousel ' +
                    'resize.owl.carousel resized.owl.carousel ' +
                    'refresh.owl.carousel refreshed.owl.carousel ' +
                    'update.owl.carousel updated.owl.carousel ' +
                    'drag.owl.carousel dragged.owl.carousel ' +
                    'translate.owl.carousel translated.owl.carousel ' +
                    'to.owl.carousel changed.owl.carousel',
                    function (e) {
                        owl.parent().fadeIn(500);
                    })
                owl.owlCarousel({
                    items: 4,
                    slideBy: 4,
                    loop: false,
                    autoplay: false,
                    margin: 15,
                    responsiveClass: true,
                    dots: false,
                    nav: true,
                    navText: ['‹', '›'],
                    responsive: {
                        0: {
                            items: 1
                        },
                        320: {
                            items: 2
                        },
                        480: {
                            items: 2
                        },
                        767: {
                            items: 3
                        },
                        992: {
                            items: 4
                        },
                        1200: {
                            items: 4
                        }
                    }
                });
                owl.find('.owl-prev').addClass('disabled')
                owl.on('initialized.owl.carousel changed.owl.carousel refreshed.owl.carousel', function (event) {
                    if (!event.namespace) return;
                    var carousel = event.relatedTarget,
                        element = event.target,
                        current = carousel.current();
                    $('.owl-next', element).toggleClass('disabled', current === carousel.maximum());
                    $('.owl-prev', element).toggleClass('disabled', current === carousel.minimum());
                })
            }
        })
        if ($('.slideBlogHome').children().size() > 0) {
            var owl = $('.slideBlogHome');
            owl.owlCarousel({
                items: 3,
                loop: false,
                autoplay: false,
                margin: 15,
                responsiveClass: true,
                dots: false,
                nav: true,
                navText: ['‹', '›'],
                responsive: {
                    0: {
                        items: 1
                    },
                    320: {
                        items: 1
                    },
                    480: {
                        items: 1
                    },
                    767: {
                        items: 2
                    },
                    992: {
                        items: 3
                    },
                    1200: {
                        items: 3
                    }
                }
            });
            owl.find('.owl-prev').addClass('disabled')
            owl.on('initialized.owl.carousel changed.owl.carousel refreshed.owl.carousel', function (event) {
                if (!event.namespace) return;
                var carousel = event.relatedTarget,
                    element = event.target,
                    current = carousel.current();
                $('.owl-next', element).toggleClass('disabled', current === carousel.maximum());
                $('.owl-prev', element).toggleClass('disabled', current === carousel.minimum());
            })
        }
    },
    actionMediaScreen: function () {
        $(document).on('click', '.openMenuTabs a', function () {
            $(this).parents('.blockTitle').toggleClass('open');
        })
    }
};
/* js load page */
INS.loadPage = {
    init: function () {
        this.pageLoad();
    },
    pageLoad: function () {
        $('.preloader').delay(1000).fadeOut(500);
        //setTimeout(function(){$(window).trigger('resize');},4000)
    }
}
/* js Product page */


/* js Collection page */


$(document).ready(function () {
    jQuery('.contentRelatedPd').owlCarousel({
        items: 5,
        loop: false,
        autoplay: false,
        margin: 0,
        responsiveClass: true,
        nav: true,
        navText: ['‹', '›'],
        responsive: {
            0: {
                items: 1
            },
            320: {
                items: 2
            },
            600: {
                items: 3
            },
            767: {
                items: 3
            },
            992: {
                items: 5
            },
            1200: {
                items: 5
            }
        }
    })
    $(".imgThumb a").click(function () {
        $(".imgThumb").removeClass('active');
        $(this).parents('li').addClass('active');
        $(".featureImg img").attr("src", $(this).attr("data-image"));
        $("a.pdFancybox").attr('href', $(this).attr("data-fancybox"));
    });

})










$(document).on('click', '.fil_mobile a, .overlay_chir.filter', function () {
    $('body').toggleClass('open_drawer_filter');
})




$('.checkout').click(function () {
    window.location.href = "/checkouts";
});