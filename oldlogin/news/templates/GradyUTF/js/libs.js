

$(document).on('click','.unsubcomm',function(){
	ShowLoading();
	var $this = $(this);
	$.post(dle_root+"engine/ajax/subscribe.php",{post_id:$('#post_id').val()},function(d){
		HideLoading();
		if(d.error) DLEalert(d.error,"Ошибка");
		else $this.html(d.html);
	},"json");
});


(function (factory) {
  if (typeof define === 'function' && define.amd) {
    // AMD. Register as an anonymous module.
    define(['../../../engine/classes/js/jquery'], factory);
  } else {
    // Browser globals
    factory(jQuery);
  }
}(function ($) {
  $.timeago = function(timestamp) {
    if (timestamp instanceof Date) {
      return inWords(timestamp);
    } else if (typeof timestamp === "string") {
      return inWords($.timeago.parse(timestamp));
    } else if (typeof timestamp === "number") {
      return inWords(new Date(timestamp));
    } else {
      return inWords($.timeago.datetime(timestamp));
    }
  };
  var $t = $.timeago;

  $.extend($.timeago, {
    settings: {
      refreshMillis: 60000,
      allowFuture: false,
      localeTitle: false,
      strings: {
        prefixAgo: null,
        prefixFromNow: null,
        suffixAgo: "ago",
        suffixFromNow: "from now",
        seconds: "less than a minute",
        minute: "about a minute",
        minutes: "%d minutes",
        hour: "about an hour",
        hours: "about %d hours",
        day: "a day",
        days: "%d days",
        month: "about a month",
        months: "%d months",
        year: "about a year",
        years: "%d years",
        wordSeparator: " ",
        numbers: []
      }
    },
    inWords: function(distanceMillis) {
      var $l = this.settings.strings;
      var prefix = $l.prefixAgo;
      var suffix = $l.suffixAgo;
      if (this.settings.allowFuture) {
        if (distanceMillis < 0) {
          prefix = $l.prefixFromNow;
          suffix = $l.suffixFromNow;
        }
      }

      var seconds = Math.abs(distanceMillis) / 1000;
      var minutes = seconds / 60;
      var hours = minutes / 60;
      var days = hours / 24;
      var years = days / 365;

      function substitute(stringOrFunction, number) {
        var string = $.isFunction(stringOrFunction) ? stringOrFunction(number, distanceMillis) : stringOrFunction;
        var value = ($l.numbers && $l.numbers[number]) || number;
        return string.replace(/%d/i, value);
      }

      var words = seconds < 45 && substitute($l.seconds, Math.round(seconds)) ||
        seconds < 90 && substitute($l.minute, 1) ||
        minutes < 45 && substitute($l.minutes, Math.round(minutes)) ||
        minutes < 90 && substitute($l.hour, 1) ||
        hours < 24 && substitute($l.hours, Math.round(hours)) ||
        hours < 42 && substitute($l.day, 1) ||
        days < 30 && substitute($l.days, Math.round(days)) ||
        days < 45 && substitute($l.month, 1) ||
        days < 365 && substitute($l.months, Math.round(days / 30)) ||
        years < 1.5 && substitute($l.year, 1) ||
        substitute($l.years, Math.round(years));

      var separator = $l.wordSeparator || "";
      if ($l.wordSeparator === undefined) { separator = " "; }
      return $.trim([prefix, words, suffix].join(separator));
    },
    parse: function(iso8601) {
      var s = $.trim(iso8601);
      s = s.replace(/\.\d+/,""); // remove milliseconds
      s = s.replace(/-/,"/").replace(/-/,"/");
      s = s.replace(/T/," ").replace(/Z/," UTC");
      s = s.replace(/([\+\-]\d\d)\:?(\d\d)/," $1$2"); // -04:00 -> -0400
      return new Date(s);
    },
    datetime: function(elem) {
      var iso8601 = $t.isTime(elem) ? $(elem).attr("datetime") : $(elem).attr("title");
      return $t.parse(iso8601);
    },
    isTime: function(elem) {
      // jQuery's `is()` doesn't play well with HTML5 in IE
      return $(elem).get(0).tagName.toLowerCase() === "time"; // $(elem).is("time");
    }
  });

  // functions that can be called via $(el).timeago('action')
  // init is default when no action is given
  // functions are called with context of a single element
  var functions = {
    init: function(){
      var refresh_el = $.proxy(refresh, this);
      refresh_el();
      var $s = $t.settings;
      if ($s.refreshMillis > 0) {
        setInterval(refresh_el, $s.refreshMillis);
      }
    },
    update: function(time){
      $(this).data('timeago', { datetime: $t.parse(time) });
      refresh.apply(this);
    }
  };

  $.fn.timeago = function(action, options) {
    var fn = action ? functions[action] : functions.init;
    if(!fn){
      throw new Error("Unknown function name '"+ action +"' for timeago");
    }
    // each over objects here and call the requested function
    this.each(function(){
      fn.call(this, options);
    });
    return this;
  };

  function refresh() {
    var data = prepareData(this);
    if (!isNaN(data.datetime)) {
      $(this).text(inWords(data.datetime));
    }
    return this;
  }

  function prepareData(element) {
    element = $(element);
    if (!element.data("timeago")) {
      element.data("timeago", { datetime: $t.datetime(element) });
      var text = $.trim(element.text());
      if ($t.settings.localeTitle) {
        element.attr("title", element.data('timeago').datetime.toLocaleString());
      } else if (text.length > 0 && !($t.isTime(element) && element.attr("title"))) {
        element.attr("title", text);
      }
    }
    return element.data("timeago");
  }

  function inWords(date) {
    return $t.inWords(distance(date));
  }

  function distance(date) {
    return (new Date().getTime() - date.getTime());
  }

  // fix for IE6 suckage
  document.createElement("abbr");
  document.createElement("time");
}));

// Russian
(function() {
  function numpf(n, f, s, t) {
    // f - 1, 21, 31, ...
    // s - 2-4, 22-24, 32-34 ...
    // t - 5-20, 25-30, ...
    var n10 = n % 10;
    if ( (n10 == 1) && ( (n == 1) || (n > 20) ) ) {
      return f;
    } else if ( (n10 > 1) && (n10 < 5) && ( (n > 20) || (n < 10) ) ) {
      return s;
    } else {
      return t;
    }
  }

  jQuery.timeago.settings.strings = {
    prefixAgo: null,
    prefixFromNow: "через",
    suffixAgo: "назад",
    suffixFromNow: null,
    seconds: "меньше минуты",
    minute: "минуту",
    minutes: function(value) { return numpf(value, "%d минута", "%d минуты", "%d минут"); },
    hour: "час",
    hours: function(value) { return numpf(value, "%d час", "%d часа", "%d часов"); },
    day: "день",
    days: function(value) { return numpf(value, "%d день", "%d дня", "%d дней"); },
    month: "месяц",
    months: function(value) { return numpf(value, "%d месяц", "%d месяца", "%d месяцев"); },
    year: "год",
    years: function(value) { return numpf(value, "%d год", "%d года", "%d лет"); }
  };
})();
 
    $("time.ago").timeago();


$(function() {
	var Accordion = function(el, multiple) {
		this.el = el || {};
		this.multiple = multiple || false;

		// Variables privadas
		var links = this.el.find('.link');
		// Evento
		links.on('click', {el: this.el, multiple: this.multiple}, this.dropdown)
	}

	Accordion.prototype.dropdown = function(e) {
		var $el = e.data.el;
			$this = $(this),
			$next = $this.next();

		$next.slideToggle();
		$this.parent().toggleClass('open');

		if (!e.data.multiple) {
			$el.find('.submenu').not($next).slideUp().parent().removeClass('open');
		};
	}	

	var accordion = new Accordion($('#accordion'), false);
});


( function( $ ) {
$( document ).ready(function() {
$('#cssmenu li.has-sub>a').on('click', function(){
		$(this).removeAttr('href');
		var element = $(this).parent('li');
		if (element.hasClass('open')) {
			element.removeClass('open');
			element.find('li').removeClass('open');
			element.find('ul').slideUp();
		}
		else {
			element.addClass('open');
			element.children('ul').slideDown();
			element.siblings('li').children('ul').slideUp();
			element.siblings('li').removeClass('open');
			element.siblings('li').find('li').removeClass('open');
			element.siblings('li').find('ul').slideUp();
		}
	});

	$('#cssmenu>ul>li.has-sub>a').append('<span class="holder"></span>');

	(function getColor() {
		var r, g, b;
		var textColor = $('#cssmenu').css('color');
		textColor = textColor.slice(4);
		r = textColor.slice(0, textColor.indexOf(','));
		textColor = textColor.slice(textColor.indexOf(' ') + 1);
		g = textColor.slice(0, textColor.indexOf(','));
		textColor = textColor.slice(textColor.indexOf(' ') + 1);
		b = textColor.slice(0, textColor.indexOf(')'));
		var l = rgbToHsl(r, g, b);
		
		
	})();

	function rgbToHsl(r, g, b) {
	    r /= 255, g /= 255, b /= 255;
	    var max = Math.max(r, g, b), min = Math.min(r, g, b);
	    var h, s, l = (max + min) / 2;

	    if(max == min){
	        h = s = 0;
	    }
	    else {
	        var d = max - min;
	        s = l > 0.5 ? d / (2 - max - min) : d / (max + min);
	        switch(max){
	            case r: h = (g - b) / d + (g < b ? 6 : 0); break;
	            case g: h = (b - r) / d + 2; break;
	            case b: h = (r - g) / d + 4; break;
	        }
	        h /= 6;
	    }
	    return l;
	}
});
} )( jQuery );
function testTheiaStickySidebars() {
    var me = {};
    me.scrollTopStep = 1;
    me.currentScrollTop = 0;
    me.values = null;

    window.scrollTo(0, 1);
    window.scrollTo(0, 0);

    $(window).scroll(function(me) {
        return function(event) {
            var newValues = [];
            
            // Get sidebar offsets.
            $('.theiaStickySidebar').each(function() {
                newValues.push($(this).offset().top);
            });
            
            if (me.values != null) {
                var ok = true;
                
                for (var j = 0; j < newValues.length; j++) {
                    var diff = Math.abs(newValues[j] - me.values[j]);
                    if (diff > 1) {
                        ok = false;
                        
                        console.log('Offset difference for sidebar #' + (j + 1) + ' is ' + diff + 'px');
                        
                        // Highlight sidebar.
                        $($('.theiaStickySidebar')[j]).css('background', 'yellow');
                    }
                }
                
                if (ok == false) {                    
                    // Stop test.
                    $(this).unbind(event);
                    
                    alert('Bummer. Offset difference is bigger than 1px for some sidebars, which will be highlighted in yellow. Check the logs. Aborting.');
                    
                    return;
                }
            }
            
            me.values = newValues;
            
            // Scroll to bottom. We don't cache ($(document).height() - $(window).height()) since it may change (e.g. after images are loaded).
            if (me.currentScrollTop < ($(document).height() - $(window).height()) && me.scrollTopStep == 1) {
                me.currentScrollTop += me.scrollTopStep;
                window.scrollTo(0, me.currentScrollTop);
            }
            // Then back up.
            else if (me.currentScrollTop > 0) {
                me.scrollTopStep = -1;
                me.currentScrollTop += me.scrollTopStep;
                window.scrollTo(0, me.currentScrollTop);
            }
            // Then stop.
            else {                    
                $(this).unbind(event);
                
                alert("Great success!");
            }
        };
    }(me));
}

