// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

function application_ready () {

	var isiPad = navigator.userAgent.match(/iPad/i) || navigator.userAgent.match(/iPhone/i) || navigator.userAgent.match(/iPod/i);

	if (!isiPad) {
		var stickyPanelOptions = {
			topPadding: 0,
			afterDetachCSSClass: "BoxGlow_Grey2",
			savePanelSpace: true
		};
		$("#panel").stickyPanel(stickyPanelOptions);
	}

  //Stops right click on images
	$(function() {
  	$('img').each(function() {
    $(this)[0].oncontextmenu = function() { return false }
  	});
	});
}

function hotels_index_ready () {
	$('.accordion .acc-head, #hotel-filter .advanced').click(function() {
		$(this).next().toggle('fast',	filter_space_buttons); 		// callback function to set the space at the bottom to ensure filter isn't off the page
		$(this).children('.icon').toggleClass('icon-plus');
		$(this).children('.icon').toggleClass('icon-minus');
		return false;
	}).next().hide();

	$('.hotel-area .scroll-up').click(function() {
		$('html, body').animate({
			scrollTop: $(this).parents('.hotel-area').prevAll('.hotel-area').first().offset().top - 65    // animate the jquery scrolltop method - scroll to hotel-area
		}, 1000);
	});

	$('.hotel-area .scroll-down').click(function() {
		$('html, body').animate({
			scrollTop: $(this).parents('.hotel-area').nextAll('.hotel-area').first().offset().top - 65    // animate the jquery scrolltop method - scroll to hotel-area
		}, 1000);
	});


	// Set areas when sojourn selection changes
	$('#hotel-filter #sojourn_sel').change(function() {
		show_hide_areas();
		$('#hotel-filter .filter-bottom .Area input:checked').removeAttr('checked');  // clear Areacheckboxes on change
	});
	show_hide_areas();   // set area on load

	// Keep accordion section open if elements are checked.
	open_section_if_checked('Area');
	open_section_if_checked('Genre');
	open_section_if_checked('Style');
	open_section_if_checked('Setting');
	open_section_if_checked('Interest');

	// Set the space at the bottom to ensure filter isn't off the page
	filter_space_buttons();


	// Modal dialog for selection policy button
	$('#hotel-policy-button').click(function () {
		$('#hotel-policy-modal').modal({
			opacity:70,
			containerCss: {
				height: "380px",
				width: "600px"
			},
			onOpen: function (dialog) {
				dialog.overlay.fadeIn('fast', function () {
					dialog.container.slideDown('fast', function () {
						dialog.data.fadeIn('fast');
					});
				});
			},
			onClose: function (dialog) {
				dialog.data.fadeOut('fast', function () {
					dialog.container.slideUp('fast', function () {
						dialog.overlay.fadeOut('fast', function () {
						$.modal.close();
						});
					});
				});
			}
		});
	return false;
	});

	// Modal dialog for hotel overview button
	$('#hotel-overview-button').click(function () {
		$('#hotel-overview-modal').modal({
			opacity:70,
			containerCss: {
				height: "470px",
				width: "710px"
			},
			onOpen: function (dialog) {
				dialog.overlay.fadeIn('fast', function () {
					dialog.container.slideDown('fast', function () {
						dialog.data.fadeIn('fast');
					});
				});
			},
			onClose: function (dialog) {
				dialog.data.fadeOut('fast', function () {
					dialog.container.slideUp('fast', function () {
						dialog.overlay.fadeOut('fast', function () {
						$.modal.close();
						});
					});
				});
			}
		});
	return false;
	});
}


function pages_home_ready () {
	// slideshow
 $(function(){
		$('#slides').slides({
			preload: false,
			// preloadImage: 'images/loading2.gif'
			play: 5000,
			slideSpeed: 900,
			hoverPause: false,
			slideEasing: "easeInOutExpo"
		});
	});
}

function hotels_show_ready (lat,lng,hotel_name,menu_item) {

	// slideshow
	$(function(){
		$('#detail-slides').slides({
			preload: false,
			// preloadImage: 'images/loading2.gif',
			play: 3000,
			pause: 3000,
			slideSpeed: 900,
			hoverPause: false,
			slideEasing: "easeInOutExpo"
		});
	});

	// buttons to switch between image and map
	var button = 'image';
	$('#hotel-show #images').click(function() {
		//map image
		$('#hotel-show #map-container').hide("fade", 1000);
		$('#hotel-show #detail-slides').show("fade", 1000);
		//button
		button = 'image';
		$(this).css('background-position','0 -426px');
		$('#hotel-show #map').css('background-position','-116px -380px');
	});

	$('#hotel-show #map').click(function() {
		// map image
		$('#hotel-show #detail-slides').hide("fade", 1000);
		$('#hotel-show #map-container').show("fade", 1000);
		initialize_map(lat, lng, hotel_name, menu_item);
		// button
		button = 'map';
		$(this).css('background-position','-116px -426px');
		$('#hotel-show #images').css('background-position','0 -380px');
	});

	$('#hotel-show #images').hover(
	function() {
	$(this).css('background-position','0 -426px');
	},
	function() {
		if (button != 'image') {
			$(this).css('background-position','0 -380px');
		}
	});

	$('#hotel-show #map').hover(
	function() {
	$(this).css('background-position','-116px -426px');
	},
	function() {
		if (button != 'map') {
			$(this).css('background-position','-116px -380px');
		}
	});

 	// Modal dialog for book button
	$('#book-button').click(function () {
		$('#book-modal').modal({
			opacity:70,
			closeHTML: "",    // no close icon in top right
			containerCss: {
				height: "250px",
				width: "425px"
			},
			onOpen: function (dialog) {
				dialog.overlay.fadeIn('fast', function () {
					dialog.container.slideDown('fast', function () {
						dialog.data.fadeIn('fast');
					});
				});
			},
			onClose: function (dialog) {
				dialog.data.fadeOut('fast', function () {
					dialog.container.slideUp('fast', function () {
						dialog.overlay.fadeOut('fast', function () {
						$.modal.close();
						});
					});
				});
			}
		});
	return false;
	});

	// Style buttons on booking dialog
	$( "#book-modal a" ).button({
            icons: {
                primary: "ui-icon-check"
            }
        }).next().button({
            icons: {
                primary: "ui-icon-close"
            }
			});

	$( "#book-modal a").click(function() {
		$.modal.close();
	});
}


//functions called from above

// Set the space at the bottom of hotel_index to ensure filter has space - but only make it bigger - not smaller (when menu is reduced)
// also show and hide the buttons on the rhs
function filter_space_buttons() {
	var a = ($('#hotel-filter .filter-bottom').height() - $('#hotel-list').height());
	if (a > $('#filter-spacer').height()) {
		$('#filter-spacer').height(a);
	}
	if ($('#hotel-filter .filter-bottom').height() > 200  && $('#hotel-filter .filter-bottom').is(":visible")) {
			$('#hotel-overview-button').addClass('hotel-button-clear');
	}
	else {
			$('#hotel-overview-button').removeClass('hotel-button-clear');
	}
	if ($('#hotel-filter .filter-bottom').height() > 400  && $('#hotel-filter .filter-bottom').is(":visible")) {
			$('#hotel-policy-button').addClass('hotel-button-clear');
	}
	else {
			$('#hotel-policy-button').removeClass('hotel-button-clear');
	}
}

// set the areas displayed in the menu based on the sojourn selection from the top menu
function show_hide_areas() {
		switch ($('#hotel-filter #sojourn_sel').val()) {
			case "1":
				$('#hotel-filter .filter-bottom .city1').show();
				$('#hotel-filter .filter-bottom .city2').hide();
				$('#hotel-filter .filter-bottom .city3').hide();
				break;
			case "2":
				$('#hotel-filter .filter-bottom .city1').hide();
				$('#hotel-filter .filter-bottom .city2').show();
				$('#hotel-filter .filter-bottom .city3').hide();
				break;
			case "3":
				$('#hotel-filter .filter-bottom .city1').hide();
				$('#hotel-filter .filter-bottom .city2').hide();
				$('#hotel-filter .filter-bottom .city3').show();
		}
}

//on load, show divs with any checkbox checked.
function open_section_if_checked(section) {
	if ($('#hotel-filter .filter-bottom .' + section + ' input').is(':checked')) {
		$('#hotel-filter .advanced .icon').addClass('icon-minus'); // set icon to minus
		$('#hotel-filter .advanced .icon').removeClass('icon-plus'); // remove plus icon
		$('#hotel-filter .filter-bottom').show(); // open the bottom part of the menu
		$('#hotel-filter .filter-bottom .' + section + ' .acc-body').show();    // show the menu section
		$('#hotel-filter .filter-bottom .' + section + ' .icon').addClass('icon-minus'); // need to set to minus, as menu is open
		$('#hotel-filter .filter-bottom .' + section + ' .icon').removeClass('icon-plus');  // and the default state is plus
	}
}

function initialize_map(lat,lng,hotel_name, menu_item) {
    var skipmarker = false;

		if (lat == 0) {
			lat = -33.868167;   // central sydney, if no lat/long
			lng = 151.207632;
			skipmarker = true; // only show marker is a lat long is passed
		}
		var latlng = new google.maps.LatLng(lat,lng);

		if (menu_item == "hotels") {
			var myOptions = {
				zoom: 15,
				center: latlng,
				mapTypeId: google.maps.MapTypeId.ROADMAP
			};
		}
		else {
			var myOptions = {
				zoom: 12,
				center: latlng,
				mapTypeId: google.maps.MapTypeId.ROADMAP
			};
		}


		var map = new google.maps.Map(document.getElementById("map-container"),
        myOptions);

		if (!skipmarker) {
			var marker = new google.maps.Marker({
				position: latlng,
				map: map,
				title: hotel_name
			});
		}

}



