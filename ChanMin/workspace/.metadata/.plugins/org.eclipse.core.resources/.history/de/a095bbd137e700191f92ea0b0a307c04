/**
 * Effective-tabs.js v1.0.0
 * http://www.geekslabs.com
 * Copyright 2015, GeeksLabs
 */
;( function( window ) {

	'use strict';

	function extend( a, b ) {
		for( var key in b ) {
			if( b.hasOwnProperty( key ) ) {
				a[key] = b[key];
			}
		}
		return a;
	}

	function efTabs( el, options ) {
		this.el = el;
		this.options = extend( {}, this.options );
  		extend( this.options, options );
  		this._init();
	}

	efTabs.prototype.options = {
		start : 0
	};

	efTabs.prototype._init = function() {
		// tabs elems
		this.tabs = [].slice.call( this.el.querySelectorAll( 'nav > ul > li' ) );
		// content items
		this.items = [].slice.call( this.el.querySelectorAll( '.content-wrap > section' ) );
		// current index
		this.current = -1;
		// show current content item
		this._show();
		// init events
		this._initEvents();
	};

	efTabs.prototype._initEvents = function() {
		var self = this;
		this.tabs.forEach( function( tab, idx ) {
			tab.addEventListener( 'click', function( ev ) {
				ev.preventDefault();
				self._show( idx );
			} );
		} );
	};

	efTabs.prototype._show = function( idx ) {
		if( this.current >= 0 ) {
			this.tabs[ this.current ].className = this.items[ this.current ].className = '';
			this.items[ this.current ].style.position = '';
		}

		this._transitions( this.current,idx );

		// change current
		this.current = idx != undefined ? idx : this.options.start >= 0 && this.options.start < this.items.length ? this.options.start : 0;
		this.tabs[ this.current ].className = 'tab-current';
		this.items[ this.current ].className = 'content-current';
		this.items[ this.current ].style.position = 'relative';
	};

	efTabs.prototype._transitions = function( last, current){
		var last_sec = this.items[ last ],
		current_sec = this.items[ current ];
		if(last == -1){
			this.items[0].style.visibility = "visible";
		}
		else if(last == current)
			return false;
		else{
			var obj = document.getElementsByClassName("ef-tabs");
			var effect = obj[0].getAttribute('data-effect');

			switch (effect) {
				/*********************************************************************
				*							Scale Effects 							 *
				*********************************************************************/
			    case 'scale_down_scale_up':
			        //1. Scale Down / Scale Up
					$(last_sec).transition({opacity:0, scale:0.5});
					$(current_sec)
					.css({opacity:0, transform: 'scale(0.5, 0.5)', visibility: 'visible' })
					.transition({opacity:1, scale:1, delay: 200});
			        break;
			    case 'scale_up_scale_up':
			        //2. Scale Up / Scale Up
					$(last_sec).transition({opacity:0, scale:1.3, duration: 500});
					$(current_sec)
					.css({opacity:0, transform: 'scale(0.7, 0.7)', visibility: 'visible' })
					.transition({opacity:1, scale:1, duration: 600});
			        break;
			    case 'scale_down_scale_down':
			        //3. Scale Down / Scale Down
					$(last_sec).transition({opacity:0, scale:0.7, duration: 300});
					$(current_sec)
					.css({opacity:0, transform: 'scale(1.3, 1.3)', visibility: 'visible' })
					.transition({opacity:1, scale:1, duration: 600});
			        break;
			    case 'scale_down_slide_from_right':
			        //4. Scale Down / Slide From Right
					$(last_sec)
					.transition({opacity:0, scale:0.6, duration: 500});
					$(current_sec)
					.css({opacity:0, x:'400', visibility: 'visible', scale: 1 })
					.transition({opacity:1, x:0, duration: 800});
			        break;
			    case 'scale_down_slide_from_left':
			        //5. Scale Down / Slide From Left
					$(last_sec)
					.transition({opacity:0, scale:0.6, duration: 500});
					$(current_sec)
					.css({opacity:0, x:'-400', visibility: 'visible', scale: 1 })
					.transition({opacity:1, x:0, duration: 800});
			        break;
			    case 'scale_down_slide_from_bottom':
			        //6. Scale Down / Slide From Bottom
					$(last_sec)
					.transition({opacity:0, scale:0.6, duration: 500});
					$(current_sec)
					.css({opacity:0, y:'200', visibility: 'visible', scale: 1 })
					.transition({opacity:1, y:0, duration: 800});
			        break;
			    case 'move_left_scale_up':
			        //7. Move left / Scale Up
					$(last_sec)
					.transition({opacity:0, x:'-400', duration: 800});
					$(current_sec)
					.css({opacity:0, scale:0.6, visibility: 'visible', x:0 })
					.transition({opacity:1, scale:1, duration: 500, delay:200});
			        break;
			    case 'move_right_scale_up':
			    	//8. Move Right / Scale Up
					$(last_sec)
					.transition({opacity:0, x:'400', duration: 800});
					$(current_sec)
					.css({opacity:0, scale:0.6, visibility: 'visible', x:0 })
					.transition({opacity:1, scale:1, duration: 800});
					break;
				case 'move_bottom_scale_up':
					//9. Move Bottom / Scale Up
					$(last_sec)
					.transition({opacity:0, y:'200', duration: 600});
					$(current_sec)
					.css({opacity:0, scale:0.6, visibility: 'visible', y:0 })
					.transition({opacity:1, scale:1, duration: 600});
					break;
				/*********************************************************************
				*							Fade Effects 							 *
				*********************************************************************/
				case 'fade_slide_from_right':
					//10. Fade / Slide From Right
					$(last_sec)
					.transition({opacity:0, duration: 800});
					$(current_sec)
					.css({opacity:0, x:'300', visibility: 'visible' })
					.transition({opacity:1, x:0, duration: 800, delay:100});
					break;
				case 'fade_slide_from_left':
					//11. Fade / Slide From Left
					$(last_sec)
					.transition({opacity:0, duration: 800});
					$(current_sec)
					.css({opacity:0, x:'-300', visibility: 'visible' })
					.transition({opacity:1, x:0, duration: 800, delay:100});
					break;
				case 'fade_slide_from_bottom':
					//12. Fade / Slide From Bottom
					$(last_sec)
					.transition({opacity:0, duration: 800});
					$(current_sec)
					.css({opacity:0, y:'200', visibility: 'visible' })
					.transition({opacity:1, y:0, duration: 800, delay:100});
					break;
				case 'fade_left_fade_right':
					//13. Fade Left / Fade Right
					$(last_sec)
					.transition({opacity:0, x: '-300', duration: 800});
					$(current_sec)
					.css({opacity:0, x:'300', visibility: 'visible' })
					.transition({opacity:1, x:0, duration: 800, delay:100});
					break;
				case 'fade_right_fade_left':
					//14. Fade Right / Fade Left
					$(last_sec)
					.transition({opacity:0, x: '300', duration: 800});
					$(current_sec)
					.css({opacity:0, x:'-300', visibility: 'visible' })
					.transition({opacity:1, x:0, duration: 800, delay:100});
					break;

				/*********************************************************************
				*							Rotate Effects 							 *
				*********************************************************************/

						/********************************************
						* 			  Glue Effects 					*
						********************************************/
				case 'glue_left_slide_from_right':
					//15. Glue left / Slide From Right
					$(last_sec)
					.css({transformOrigin: '0 0' })
					.transition({opacity:0,perspective: '100px', rotateY: '45deg', duration: 800,})
					$(current_sec)
					.css({opacity:0, x:'300', visibility: 'visible', perspective: '100px', rotateY: '0deg' })
					.transition({opacity:1, x:0, duration: 800, delay:100});
					break;
				case 'glue_right_slide_from_left':
					//16. Glue Right / Slide From Left
					$(last_sec)
					.css({transformOrigin: '100% 100%' })
					.transition({opacity:0,perspective: '100px', rotateY: '-45deg', duration: 800,})
					$(current_sec)
					.css({opacity:0, x:'-300', visibility: 'visible', perspective: '100px', rotateY: '0deg' })
					.transition({opacity:1, x:0, duration: 800, delay:100});
					break;
				case 'glue_top_slide_from_bottom':

					//17. Glue Top / Slide From Bottom
					$(last_sec)
					.css({transformOrigin: '0 0' })
					.transition({opacity:0, perspective: '1000px', rotateX: '-90deg', duration: 800})
					$(current_sec)
					.css({opacity:0, y:'300', visibility: 'visible', perspective: '1000px', rotateX: '0deg' })
					.transition({opacity:1, y:0, duration: 800, delay:100});
					break;

						/********************************************
						* 			  Flip Effects 					*
						********************************************/
				case 'flip_right':
					//18. Flip Right
					$(last_sec)
					.transition({opacity:0,perspective: '1000px', scale:0.5, rotateY:'90deg', duration:800})
					$(current_sec)
					.css({opacity:0, scale:0.5, visibility: 'visible', perspective: '1000px', rotateY: '-90deg' })
					.transition({opacity:1,scale:1, perspective:'1000px', rotateY: '0deg', duration: 800,delay:400});
					break;
				case 'flip_left':
					//19. Flip Left
					$(last_sec)
					.transition({opacity:0,perspective: '1000px', scale:0.5, rotateY:'-90deg', duration:800})
					$(current_sec)
					.css({opacity:0, scale:0.5, visibility: 'visible', perspective: '1000px', rotateY: '90deg' })
					.transition({opacity:1,scale:1, perspective:'1000px', rotateY: '0deg', duration: 800,delay:400});
					break;
				case 'flip_top':
					//20. Flip Top
					$(last_sec)
					.transition({opacity:0,perspective: '1000px', scale:0.5, rotateX:'90deg', duration:800})
					$(current_sec)
					.css({opacity:0, scale:0.5, visibility: 'visible', perspective: '1000px', rotateX: '-90deg' })
					.transition({opacity:1,scale:1, perspective:'1000px', rotateX: '0deg', duration: 800,delay:300});
					break;
				case 'flip_bottom':
					//21. Flip Bottom
					$(last_sec)
					.transition({opacity:0,perspective: '1000px', scale:0.5, rotateX:'-90deg', duration:800})
					$(current_sec)
					.css({opacity:0, scale:0.5, visibility: 'visible', perspective: '1000px', rotateX: '90deg' })
					.transition({opacity:1,scale:1, perspective:'1000px', rotateX: '0deg', duration: 800,delay:300});
					break;
				/*********************************************************************
				*							22.Fall Effect 							 *
				*********************************************************************/
				case 'fall':
					$(last_sec)
					.css({ transformOrigin:'0 0', 'z-index':'9999'})
					.transition({rotate: '20deg'});
					$(current_sec)
					.css({opacity:0, scale:0.3, visibility: 'visible',rotate: '0deg', x:0, y:0})
					.transition({opacity:1,scale:1, duration:600});
					$(last_sec)
					.transition({opacity:0, y:400, x:200});
					break;

				/*********************************************************************
				*							23.Newspaper Effect 						 *
				*********************************************************************/
				case 'newspaper':
					$(last_sec)
					.css({rotate: '0deg'})
					.transition({rotate: '540deg', duration:800, scale:0.2, opacity:0});
					$(current_sec)
					.css({visibility:'visible',opacity:0, scale:0.2, rotate: '-360deg'})
					.transition({rotate: '360deg', duration:800, scale:1, opacity:1, delay:400});
					break;

				/*********************************************************************
				*						Push / Pull Effects 						 *
				*********************************************************************/
				case 'push_left_pull_right':
					//24. Push left / Pull right
					$(last_sec)
					.css({transformOrigin: '0 0' })
					.transition({opacity:0, perspective: '1000px', rotateY: '45deg', duration: 800,})
					$(current_sec)
					.css({transformOrigin: '100% 100%',opacity:0, visibility: 'visible', perspective: '1000px', rotateY: '-45deg' })
					.transition({opacity:1, rotateY: '0deg', duration: 800, delay:300});
					break;
				case 'push_right_pull_left':
					//25. Push Right / Pull Left
					$(last_sec)
					.css({transformOrigin: '100% 100%' })
					.transition({opacity:0, perspective: '1000px', rotateY: '-45deg', duration: 800,})
					$(current_sec)
					.css({transformOrigin: '0 0',opacity:0, visibility: 'visible', perspective: '1000px', rotateY: '45deg' })
					.transition({opacity:1, rotateY: '0deg', duration: 800, delay:300});
					break;
				case 'push_top_pull_bottom':
					//26. Push Top / Pull Bottom
					$(last_sec)
					.css({transformOrigin: '0 0' })
					.transition({opacity:0, perspective: '1000px', rotateX: '90deg', duration: 800,})
					$(current_sec)
					.css({transformOrigin: '100% 100%',opacity:0, visibility: 'visible', perspective: '1000px', rotateX: '90deg' })
					.transition({opacity:1, rotateX: '0deg', duration: 800, delay:300});
					break;
				case 'push_bottom_pull_top':
					//27. Push Bottom / Pull Top
					$(last_sec)
					.css({transformOrigin: '100% 100%' })
					.transition({opacity:0, perspective: '1000px', rotateX: '-90deg', duration: 800,})
					$(current_sec)
					.css({transformOrigin: '0 0',opacity:0, visibility: 'visible', perspective: '1000px', rotateX: '90deg' })
					.transition({opacity:1, rotateX: '0deg', duration: 800, delay:300});
					break;

				/*********************************************************************
				*							Sides Effect						 	 *
				*********************************************************************/

				case 'side_right_side_left':
					// 28. Side Right / Side Left
					$(last_sec)
					.css({transformOrigin: '0 0'})
					.transition({opacity:0, scale:0.5, perspective: '1000px', x:'-100', rotateY: '60deg', duration: 600});
					$(current_sec)
					.css({transformOrigin: '100% 100%',opacity:0, visibility: 'visible', perspective: '1000px', rotateY: '-60deg', x:'100', scale:0.5 })
					.transition({opacity:1, scale:1, rotateY: '0deg', duration: 600, delay:100, x:'0'});
					break;
				case 'side_left_side_right':
					// 29. Side Left / Side Right
					$(last_sec)
					.css({transformOrigin: '100% 0'})
					.transition({opacity:0, scale:0.5, perspective: '1000px', x:'100', rotateY: '-60deg', duration: 600});
					$(current_sec)
					.css({transformOrigin: '0 0',opacity:0, visibility: 'visible', perspective: '1000px', rotateY: '60deg', x:'-100', scale:0.5 })
					.transition({opacity:1, scale:1, rotateY: '0deg', duration: 600, delay:100, x:'0'});
					break;

				/*********************************************************************
				*							Slide Effect						 	 *
				*********************************************************************/

				case 'slidedn_left_slideup_right':
					//30. Scale Down - Move left / Scale up - Move Right
					$(last_sec)
					.transition({ opacity:0.5, scale:0.7 })
					.transition({ x:'-600', opacity:0, duration:600});
					$(current_sec)
					.css({ opacity:0, visibility: 'visible', x:'1500' })
					.transition({opacity:0.5, scale:0.7, duration: 600, delay:300, x:'0'})
					.transition({opacity:1, scale:1, duration: 300});
					break;
				case 'slidedn_right_slideup_left':
					//31. Scale Down - Move Right / Scale up - Move left
					$(last_sec)
					.transition({ opacity:0.5, scale:0.7 })
					.transition({ x:'600', opacity:0, duration:600});
					$(current_sec)
					.css({ opacity:0, visibility: 'visible', x:'-1500' })
					.transition({opacity:0.5, scale:0.7, duration: 600, delay:300, x:'0'})
					.transition({opacity:1, scale:1, duration: 300});
					break;
				default:
			        //2. Scale Up / Scale Up
					$(last_sec).transition({opacity:0, scale:1.3, duration: 500});
					$(current_sec)
					.css({opacity:0, transform: 'scale(0.7, 0.7)', visibility: 'visible' })
					.transition({opacity:1, scale:1, duration: 600});
			        break;
			}
		}
	};
	// add to global namespace
	window.efTabs = efTabs;

})( window );

$(document).ready(function(){
	[].slice.call( document.querySelectorAll( '.ef-tabs' ) ).forEach( function( el ) {
		new efTabs( el );
	});

	var $mapdiv = $("#map");
    if ($mapdiv.length){
	/* Google Map */
	function initialize() {
        var mapCanvas = document.getElementById('map');
        var lat = 23.023348;
        var lng = 72.575623;
        var pos = new google.maps.LatLng(lat, lng);
        var mapOptions = new google.maps.Map($('#map')[0], {
          center: pos,
          zoom: 8,
          mapTypeId: google.maps.MapTypeId.ROAD
        });
        var marker = new google.maps.Marker({
	        position: pos,
	        map: mapOptions
	    });
	    var info = $('.map-info').html();
	    var infoWindow = new google.maps.InfoWindow({
	        content: info
	    });
	    google.maps.event.addListener(marker, 'click', function () {
	        infoWindow.open(mapOptions, marker);
	    });
        var map = new google.maps.Map(mapCanvas, mapOptions)
	}
	google.maps.event.addDomListener(window, 'load', initialize);
}
	/* Ajax Call */
	var link = $('#ajax').data('content-url');
	$.ajax({url: link, success: function(result){
        $("#ajax").html(result);
    }});
});