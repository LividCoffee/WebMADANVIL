/**
 Core script to handle the entire layout and base functions
 **/
var App = function () {

    // IE mode
    var isRTL = false;
    var isIE8 = false;
    var isIE9 = false;
    var isIE10 = false;

    var responsiveHandlers = [];

    // theme layout color set
    var layoutColorCodes = {'blue': '#4b8df8', 'red': '#e02222', 'green': '#35aa47', 'purple': '#852b99', 'grey': '#555555', 'light-grey': '#fafafa', 'yellow': '#ffb848'};

    //* BEGIN:CORE HANDLERS *//
    // this function handles responsive layout on screen size resize or mobile device rotate.
    var handleResponsive = function () {

        if ($('body').css('direction') === 'rtl') {
            isRTL = true;
        }

        if (jQuery.browser.msie && jQuery.browser.version.substr(0, 1) == 8) {
            isIE8 = true; // detect IE8 version
        }

        if (jQuery.browser.msie && jQuery.browser.version.substr(0, 1) == 9) {
            isIE9 = true; // detect IE9 version
        }

        var isIE10 = !!navigator.userAgent.match(/MSIE 10/);

        if (isIE10) {
            jQuery('html').addClass('ie10'); // detect IE10 version
        }

        // loops all page elements with "responsive" class and applies classes for tablet mode
        // For metornic  1280px or less set as tablet mode to display the content properly
        var _handleTabletElements = function () {
            if ($(window).width() <= 1280) {
                $(".responsive").each(function () {
                    var forTablet = $(this).attr('data-tablet');
                    var forDesktop = $(this).attr('data-desktop');
                    if (forTablet) {
                        $(this).removeClass(forDesktop);
                        $(this).addClass(forTablet);
                    }
                });
            }
        }

        // loops all page elements with "responsive" class and applied classes for desktop mode
        // For metornic  higher 1280px set as desktop mode to display the content properly
        var _handleDesktopElements = function () {
            if ($(window).width() > 1280) {
                $(".responsive").each(function () {
                    var forTablet = $(this).attr('data-tablet');
                    var forDesktop = $(this).attr('data-desktop');
                    if (forTablet) {
                        $(this).removeClass(forTablet);
                        $(this).addClass(forDesktop);
                    }
                });
            }
        }

        // remove sidebar toggler if window width smaller than 900(for table and phone mode)
        var _handleSidebar = function () {
            if ($(window).width() < 900) {
                $.cookie('sidebar-closed', null);
                $('.page-container').removeClass("sidebar-closed");
            }
        }

        // handle all elements which require to re-initialize on screen width change(on resize or on rotate mobile device)
        var handleElements = function () {
            // reinitialize core elements
            handleTooltip();
            _handleSidebar();
            _handleTabletElements();
            _handleDesktopElements();
            handleSidenarAndContentHeight();
            handleChoosenSelect();

            // reinitialize other subscribed elements
            for (var i in responsiveHandlers) {
                var each = responsiveHandlers[i];
                each.call();
            }
        }

        // handles responsive breakpoints.
        $(window).setBreakpoints({
            breakpoints: [320, 480, 768, 900, 1024, 1280]
        });

        $(window).bind('exitBreakpoint320', function () {
            handleElements();
        });
        $(window).bind('enterBreakpoint320', function () {
            handleElements();
        });

        $(window).bind('exitBreakpoint480', function () {
            handleElements();
        });
        $(window).bind('enterBreakpoint480', function () {
            handleElements();
        });

        $(window).bind('exitBreakpoint768', function () {
            handleElements();
        });
        $(window).bind('enterBreakpoint768', function () {
            handleElements();
        });

        $(window).bind('exitBreakpoint900', function () {
            handleElements();
        });
        $(window).bind('enterBreakpoint900', function () {
            handleElements();
        });

        $(window).bind('exitBreakpoint1024', function () {
            handleElements();
        });
        $(window).bind('enterBreakpoint1024', function () {
            handleElements();
        });

        $(window).bind('exitBreakpoint1280', function () {
            handleElements();
        });
        $(window).bind('enterBreakpoint1280', function () {
            handleElements();
        });
    }

    var handleSidenarAndContentHeight = function () {
        var content = $('.page-content');
        var sidebar = $('.page-sidebar');

        if (!content.attr("data-height")) {
            content.attr("data-height", content.height());
        }

        if (sidebar.height() > content.height()) {
            content.css("min-height", sidebar.height() + 20);
        } else {
            content.css("min-height", content.attr("data-height"));
        }
    }

    var handleSidebarMenu = function () {
        jQuery('.page-sidebar li > a').live('click', function (e) {

            if ($(this).next().hasClass('sub-menu') == false) {
                return;
            }

            var parent = $(this).parent().parent();

            parent.children('li.open').children('a').children('.arrow').removeClass('open');
            parent.children('li.open').children('.sub-menu').slideUp(200);
            parent.children('li.open').removeClass('open');

            var sub = jQuery(this).next();
            if (sub.is(":visible")) {
                jQuery('.arrow', jQuery(this)).removeClass("open");
                jQuery(this).parent().removeClass("open");
                sub.slideUp(200, function () {
                    handleSidenarAndContentHeight();
                });
            } else {
                jQuery('.arrow', jQuery(this)).addClass("open");
                jQuery(this).parent().addClass("open");
                sub.slideDown(200, function () {
                    handleSidenarAndContentHeight();
                });
            }

            e.preventDefault();
        });

        // handle ajax links
        jQuery('.page-sidebar li > a.ajaxify').live('click', function (e) {
            e.preventDefault();
            App.scrollTop();

            var url = $(this).attr("href");
            var menuContainer = jQuery('.page-sidebar ul');
            var pageContent = $('.page-content');
            var pageContentBody = $('.page-content .page-content-body');

            menuContainer.children('li.active').removeClass('active');
            menuContainer.children('arrow.open').removeClass('open');

            $(this).parents('li').each(function () {
                $(this).addClass('active');
                $(this).children('a > span.arrow').addClass('open');
            });
            $(this).parents('li').addClass('active');

            App.blockUI(pageContent, false);

            $.post(url, {}, function (res) {
                App.unblockUI(pageContent);
                pageContentBody.html(res);
                App.fixContentHeight(); // fix content height
                App.initUniform(); // initialize uniform elements
            });
        });
    }

    var handleSidebarToggler = function () {

        var container = $(".page-container");

        // check if sidebar was closed before
        if ($.cookie && $.cookie('sidebar-closed') == 1) {
            container.addClass("sidebar-closed");
        }

        // handle sidebar show/hide
        $('.page-sidebar .sidebar-toggler').click(function (e) {
            $(".sidebar-search").removeClass("open");
            var container = $(".page-container");
            if (container.hasClass("sidebar-closed") === true) {
                container.removeClass("sidebar-closed");
                $.cookie('sidebar-closed', null);
            } else {
                container.addClass("sidebar-closed");
                $.cookie('sidebar-closed', 1);
            }
            handleChoosenSelect();
            e.preventDefault();
        });

        // handle the search bar close
        $('.sidebar-search .remove').click(function (e) {
            $('.sidebar-search').removeClass("open");
            e.preventDefault();
        });

        // handle the search query submit on enter press
        $('.sidebar-search input').keypress(function (e) {
            if (e.which == 13) {
                window.location.href = "extra_search.html";
                return false; //<---- Add this line
            }
        });

        // handle the search submit
        $('.sidebar-search .submit').click(function (e) {
            if ($('.page-container').hasClass("sidebar-closed")) {
                if ($('.sidebar-search').hasClass('open') == false) {
                    $('.sidebar-search').addClass("open");
                } else {
                    window.location.href = "extra_search.html";
                }
            } else {
                window.location.href = "extra_search.html";
            }
            e.preventDefault();
        });
    }

    var handleHorizontalMenu = function () {
        jQuery('.navbar-inner ul > li > a.dropdown-toggle ').dropdownHover();
    }

    var handleGoTop = function () {
        /* set variables locally for increased performance */
        jQuery('.footer .go-top').click(function (e) {
            App.scrollTo();
            e.preventDefault();
        });
    }

    var handlePortletTools = function () {
        jQuery('.portlet .tools a.remove').live('click', function () {
            var removable = jQuery(this).parents(".portlet");
            if (removable.next().hasClass('portlet') || removable.prev().hasClass('portlet')) {
                jQuery(this).parents(".portlet").remove();
            } else {
                jQuery(this).parents(".portlet").parent().remove();
            }
        });

        jQuery('.portlet .tools a.reload').live('click', function () {
            var el = jQuery(this).parents(".portlet");
            App.blockUI(el);
            window.setTimeout(function () {
                App.unblockUI(el);
            }, 1000);
        });

        jQuery('.portlet .tools .collapse, .portlet .tools .expand').live('click', function () {
            var el = jQuery(this).parents(".portlet").children(".portlet-body");
            if (jQuery(this).hasClass("collapse")) {
                jQuery(this).removeClass("collapse").addClass("expand");
                el.slideUp(200);
            } else {
                jQuery(this).removeClass("expand").addClass("collapse");
                el.slideDown(200);
            }
        });
    }

    var handleUniform = function () {
        if (!jQuery().uniform) {
            return;
        }
        var test = $("input[type=checkbox]:not(.toggle), input[type=radio]:not(.toggle, .starz)");
        if (test.size() > 0) {
            test.each(function () {
                if ($(this).parents(".checker").size() == 0) {
                    $(this).show();
                    $(this).uniform();
                }
            });
        }
    }

    var handleAccordions = function () {
        $(".accordion").collapse().height('auto');

        var lastClicked;

        //add scrollable class name if you need scrollable panes
        jQuery('.accordion.scrollable .accordion-toggle').click(function () {
            lastClicked = jQuery(this);
        }); //move to faq section

        jQuery('.accordion.scrollable').on('shown', function () {
            jQuery('html,body').animate({
                scrollTop: lastClicked.offset().top - 150
            }, 'slow');
        });
    }

    var handleScrollers = function () {

        $('.scroller').each(function () {
            $(this).slimScroll({
                size: '7px',
                color: '#a1b2bd',
                position: isRTL ? 'left' : 'right',
                height: $(this).attr("data-height"),
                alwaysVisible: ($(this).attr("data-always-visible") == "1" ? true : false),
                railVisible: ($(this).attr("data-rail-visible") == "1" ? true : false),
                disableFadeOut: true
            });
        });
    }

    var handleTooltip = function () {
        if (App.isTouchDevice()) { // if touch device, some tooltips can be skipped in order to not conflict with click events
            jQuery('.tooltips:not(.no-tooltip-on-touch-device)').tooltip();
        } else {
            jQuery('.tooltips').tooltip();
        }
    }

    var handlePopover = function () {
        jQuery('.popovers').popover();
    }

    var handleChoosenSelect = function () {
        if (!jQuery().chosen) {
            return;
        }

        $(".chosen").each(function () {
            $(this).chosen({
                allow_single_deselect: $(this).attr("data-with-diselect") === "1" ? true : false
            });
        });
    }

    var handleFancybox = function () {
        if (!jQuery.fancybox) {
            return;
        }

        if (jQuery(".fancybox-button").size() > 0) {
            jQuery(".fancybox-button").fancybox({
                groupAttr: 'data-rel',
                prevEffect: 'none',
                nextEffect: 'none',
                closeBtn: true,
                helpers: {
                    title: {
                        type: 'inside'
                    }
                }
            });
        }
    }

    var handleStyler = function () {

        var panel = $('.color-panel');

        $('.icon-color', panel).click(function () {
            $('.color-mode').show();
            $('.icon-color-close').show();
        });

        $('.icon-color-close', panel).click(function () {
            $('.color-mode').hide();
            $('.icon-color-close').hide();
        });

        $('li', panel).click(function () {
            var color = $(this).attr("data-style");
            setColor(color);
            $('.inline li', panel).removeClass("current");
            $(this).addClass("current");
        });

        $('input', panel).change(function () {
            setLayout();
        });

        var setColor = function (color) {
            $('#style_color').attr("href", "css/themes/" + color + ".css");
        }

        var setLayout = function () {
            if ($('input.header', panel).is(":checked")) {
                $("body").addClass("fixed-top");
                $(".header").addClass("navbar-fixed-top");
            } else {
                $("body").removeClass("fixed-top");
                $(".header").removeClass("navbar-fixed-top");
            }
        }
    }

    var handleFixInputPlaceholderForIE = function () {
        //fix html5 placeholder attribute for ie7 & ie8
        if (jQuery.browser.msie && jQuery.browser.version.substr(0, 1) <= 9) { // ie7&ie8

            // this is html5 placeholder fix for inputs, inputs with placeholder-no-fix class will be skipped(e.g: we need this for password fields)
            jQuery('input[placeholder]:not(.placeholder-no-fix), textarea[placeholder]:not(.placeholder-no-fix)').each(function () {

                var input = jQuery(this);

                jQuery(input).addClass("placeholder").val(input.attr('placeholder'));

                jQuery(input).focus(function () {
                    if (input.val() == input.attr('placeholder')) {
                        input.val('');
                    }
                });

                jQuery(input).blur(function () {
                    if (input.val() == '' || input.val() == input.attr('placeholder')) {
                        input.val(input.attr('placeholder'));
                    }
                });
            });
        }
    }

    //* END:CORE HANDLERS *//

    return {

        //main function to initiate template pages
        init: function (assetsPath) {
            //core handlers
            handleResponsive(); // set and handle responsive
            handleUniform(); // handles uniform elements
            handleSidebarMenu(); // handles main menu
            handleHorizontalMenu(); // handles horizontal menu
            handleSidebarToggler(); // handles sidebar hide/show
            handleScrollers(); // handles slim scrolling contents
            handlePortletTools(); // handles portlet action bar functionality(refresh, configure, toggle, remove)
            handleTooltip(); // handles bootstrap tooltips
            handlePopover(); // handles bootstrap popovers
            handleAccordions(); //handles accordions
            handleChoosenSelect(); // handles bootstrap chosen dropdowns
            handleFixInputPlaceholderForIE(); // fixes/enables html5 placeholder attribute for IE9, IE8
            handleGoTop(); //handles scroll to top functionality in the footer
            handleStyler(); // handles style customer tool
        },

        fixContentHeight: function () {
            handleSidenarAndContentHeight();
        },

        addResponsiveHandler: function (func) {
            responsiveHandlers.push(func);
        },

        // useful function to make equal height for contacts stand side by side
        setEqualHeight: function (els) {
            var tallestEl = 0;
            els = jQuery(els);
            els.each(function () {
                var currentHeight = $(this).height();
                if (currentHeight > tallestEl) {
                    tallestColumn = currentHeight;
                }
            });
            els.height(tallestEl);
        },

        // wrapper function to scroll to an element
        scrollTo: function (el, offeset) {
            pos = el ? el.offset().top : 0;
            jQuery('html,body').animate({
                scrollTop: pos + (offeset ? offeset : 0)
            }, 'slow');
        },

        scrollTop: function () {
            App.scrollTo();
        },

        // wrapper function to  block element(indicate loading)
        blockUI: function (el, centerY) {
            jQuery(el).block({
                message: '<img src="' + App.assetsPath + '/img/ajax-loading.gif" align="">',
                centerY: centerY != undefined ? centerY : true,
                css: {
                    top: '10%',
                    border: 'none',
                    padding: '2px',
                    backgroundColor: 'none'
                },
                overlayCSS: {
                    backgroundColor: '#000',
                    opacity: 0.05,
                    cursor: 'wait'
                }
            });
        },

        // wrapper function to  un-block element(finish loading)
        unblockUI: function (el) {
            jQuery(el).unblock({
                onUnblock: function () {
                    jQuery(el).removeAttr("style");
                }
            });
        },

        // initializes uniform elements
        initUniform: function (els) {

            if (els) {
                jQuery(els).each(function () {
                    if ($(this).parents(".checker").size() == 0) {
                        $(this).show();
                        $(this).uniform();
                    }
                });
            } else {
                handleUniform();
            }

        },

        // initializes choosen dropdowns
        initChosenSelect: function (els) {
            $(els).chosen({
                allow_single_deselect: true
            });
        },

        initFancybox: function () {
            handleFancybox();
        },

        getActualVal: function (el) {
            var el = jQuery(el);
            if (el.val() === el.attr("placeholder")) {
                return "";
            }

            return el.val();
        },

        getURLParameter: function (paramName) {
            var searchString = window.location.search.substring(1),
                i, val, params = searchString.split("&");

            for (i = 0; i < params.length; i++) {
                val = params[i].split("=");
                if (val[0] == paramName) {
                    return unescape(val[1]);
                }
            }
            return null;
        },

        // check for device touch support
        isTouchDevice: function () {
            try {
                document.createEvent("TouchEvent");
                return true;
            } catch (e) {
                return false;
            }
        },

        isIE8: function () {
            return isIE8;
        },

        isRTL: function () {
            return isRTL;
        },

        getLayoutColorCode: function (name) {
            if (layoutColorCodes[name]) {
                return layoutColorCodes[name];
            } else {
                return '';
            }
        }

    };
}();


;
(function ($) {
    $.fn.getValues = function () {
        var arrVal = [];
        this.each(function () {
            arrVal.push($(this).data('value'));
        });
        return arrVal;
    }
})(window.jQuery);

;
(function ($) {
    $.fn.getArrayText = function () {
        var arrVal = [];
        this.each(function () {
            arrVal.push($(this).text());
        });
        return arrVal;
    }
})(window.jQuery);

App.translate = {
    types: {
        'country': 'Страна<br />',
        'region': 'Регион<br />',
        'city': 'Населенный пункт<br />',

        'device': 'Устройство<br />',
        'format': 'Формат<br />',
        'browser': 'Браузер<br />'
    }
};


App.config = {
    'treeGeo': {
        'country': 'region',
        'region': 'city'
    },

    'lastType': 'city'
};

App.configBrowser = {
    'treeGeo': {
        'device': 'format',
        'format': 'browser'
    },

    'lastType': 'browser'
};


;
(function ($) {
    $(document).ready(function () {

        /* scrollable modals */
        $('td .modal').each(function () {
            var parent = $(this).parents('div.portlet-body')
            $(this).remove();
            parent.append(this);
        })
        $('.modal').live('show.bs.modal', function () {
            $(this).css('position', 'absolute');
            $(this).css('top', $(window).scrollTop() + 95);
        });

        var tables = $('.table-responsive');

        tables.each(function () {
            var table = $(this),
                data = table.find('th')
                    .map(function (item) {
                        return  $(this).text().trim();
                    }).get();
            for (var i = 0; i < data.length; i++) {
                var el = table.find('td:nth-child(' + (i + 1) + ')');

                el.each(function () {
                    $(this).html('<span class=\"td-hide\" style=\"position:absolute; left:0; text-indent:7px; text-align:left; width:50%;\">' + data[i] + '</span>' + $(this).html())
                });
            }
        });
    });
})(jQuery);

/* apply special css styles for responsive tables */

;
(function ($) {
    $(document).ready(function () {
        var tableToolsSave = $('.tools-save table');
        var responsiveTable = function () {
            var tablesNoMoreTables = $('div.row-fluid table.resp-table');
            if (tablesNoMoreTables.length) {
                tablesNoMoreTables.each(function () {
                    $(this).removeClass('table-no-more-tables');
                });
                var tablesNoMoreTables2 = $('div.row-fluid table.resp-table');
                tablesNoMoreTables2.each(function () {
                    var parentTableWidth = $(this).parent().outerWidth(),
                        tableNoMoreTablesWidth = $(this).outerWidth();
                    if ((parentTableWidth - tableNoMoreTablesWidth) <= 15) {
                        $(this).addClass('table-no-more-tables');
                    }
                });
            }
            /* special rules for save report dialog */
            if (window.innerWidth <= 555) {
                tableToolsSave.addClass('table-no-more-tables');
            }
            else {
                tableToolsSave.removeClass('table-no-more-tables');
            }
        };
        responsiveTable();
        $(window).resize(function () {
            responsiveTable()
        });
    });
})(jQuery);

/* Shows Horizontal Submenu on HOVER */

;
(function ($, window, undefined) {
    // outside the scope of the jQuery plugin to
    // keep track of all dropdowns
    var $allDropdowns = $();

    // if instantlyCloseOthers is true, then it will instantly
    // shut other nav items when a new one is hovered over
    $.fn.dropdownHover = function (options) {

        // don't do anything if touch is supported
        // (plugin causes some issues on mobile)
        if ('ontouchstart' in document) return this; // don't want to affect chaining

        // the element we really care about
        // is the dropdown-toggle's parent
        $allDropdowns = $allDropdowns.add(this.parent());

        return this.each(function () {
            var $this = $(this),
                $parent = $this.parent(),
                defaults = {
                    delay: 500,
                    instantlyCloseOthers: true
                },
                data = {
                    delay: $(this).data('delay'),
                    instantlyCloseOthers: $(this).data('close-others')
                },
                settings = $.extend(true, {}, defaults, (options instanceof Window) ? {} : options, data),
                timeout;

            $parent.hover(function (event) {
                // so a neighbor can't open the dropdown
                if (!$parent.hasClass('open') && !$this.is(event.target)) {
                    return true;
                }

                if (settings.instantlyCloseOthers === true)
                    $allDropdowns.removeClass('open');

                window.clearTimeout(timeout);
                $parent.addClass('open');
            }, function () {
                timeout = window.setTimeout(function () {
                    $parent.removeClass('open');
                }, settings.delay);
            });

            // this helps with button groups!
            $this.hover(function () {
                if (settings.instantlyCloseOthers === true)
                    $allDropdowns.removeClass('open');

                window.clearTimeout(timeout);
                $parent.addClass('open');
            });

            // handle submenus
            $parent.find('.dropdown-submenu').each(function () {
                var $this = $(this);
                var subTimeout;
                $this.hover(function () {
                    window.clearTimeout(subTimeout);
                    $this.children('.dropdown-menu').show();
                    // always close submenu siblings instantly
                    $this.siblings().children('.dropdown-menu').hide();
                }, function () {
                    var $submenu = $this.children('.dropdown-menu');
                    subTimeout = window.setTimeout(function () {
                        $submenu.hide();
                    }, settings.delay);
                });
            });
        });
    };
})(jQuery, this);

/* Set of functions for navigation's download-menu's (falling blocks of information)
 * Functions check their width, out of bounds and set right coordinates
 */
;
(function ($) {
    var hold = {}
    hold.oldDropdowns = [];
    hold.newDropdowns = [];

    var readOldParams = function () {
        hold.dropdowns.each(function () {
            hold.oldDropdowns.push({
                name: this,
                width: $(this).width()
            })
        })
    }

    var readParams = function () {
        hold.dropdowns.each(function () {
            $(this).css({
                opacity: 0,
                display: 'block'
            })
            hold.newDropdowns.push({
                name: this,
                width: $(this).width(),
                offsetLeft: $(this).offset().left,
                offsetLeftPrev: $(this).prev().offset().left,
                left: $(this).position().left,
                leftPrev: $(this).prev().position().left
            })
            $(this).css({
                opacity: '',
                display: ''
            })
        })
    }

    var setDropdownOldParam = function () {
        hold.dropdowns.each(function () {
            for (var i = 0; i < hold.oldDropdowns.length; i++) {
                if (hold.oldDropdowns[i].name == this) {
                    $(this).width(hold.oldDropdowns[i].width)
                    $(this).css('left', 'initial');
                }
            }
        })
    }

    var setDropdownNewParam = function () {
        hold.dropdowns.each(function () {
            for (var i = 0; i < hold.newDropdowns.length; i++) {
                if (hold.newDropdowns[i].name == this) {
                    if ($(this).width() > $(window).width() - 10) {
                        $(this).css('width', ($(window).width() - 10) < 300 ? 300 : $(window).width() - 10)
                    }

                    if (hold.newDropdowns[i].offsetLeft < 5) {
                        $(this).css('left', 5 - hold.newDropdowns[i].offsetLeftPrev)
                    }
                }
            }
        })
        hold.newDropdowns = [];
    }

    window.onload = function () {
        var param = setInterval(function () {
            hold.parents = $('div.navbar-inner ul.pull-right li.dropdown');
            hold.dropdowns = $(hold.parents).find('ul.dropdown-menu');
            if (hold.dropdowns.length != 0) {
                clearInterval(param);
                hold.dropdowns.each(function () {
                    $(this).addClass('pull-right');
                })
                readOldParams();
                readParams();
                setDropdownNewParam();
            }
        }, 200)

        $(window).resize(function () {
            if (window.innerWidth > 990) floatingMenu();
            if ((window.innerWidth <= 990) && header.information.hasClass('right-panel-top')) setBottomPanel();

            setDropdownOldParam();
            readParams();
            setDropdownNewParam();
        })

        // вывод подсказки по ховеру на метку с баллами на офферах

        var popoverHandler = function () {
            $('.points').popover({
                'title': "Бонусные баллы",
                'content': "Бонусные баллы начисляются за каждый заработанный рубль. Пример: по 'Офферу 1' начисляется" +
                    " за каждый рубль 2 балла, при одобрении конверсии 100 рублей, будет начислено 200 баллов.",
                'trigger': "hover",
                'placement': "top"
            });
        }
        popoverHandler();

        $(document).bind("ajaxComplete", popoverHandler)
    };
})(jQuery);


