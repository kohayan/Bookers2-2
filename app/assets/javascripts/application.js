// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require jquery
//= require bootstrap-sprockets
//= require_tree .


$(document).ready(function(){
	$("#theTarget").skippr({
		transition : 'slide',
		speed : 1000,
		easing : 'easeOutQuart',
		navType : 'block',
		childrenElementType : 'div',
		arrows : true,
		autoPlay : true,
		autoPlayDuration : 3000,
		keyboardOnAlways : true,
		hidePrevious : false
	});
});

$(function() {
  $(document).on('turbolinks:load', () => {
    $('#user_postal_code').jpostal({
      postcode : [
        '#user_postal_code'
      ],
      address: {
        "#user_prefecture_code": "%3",
        "#user_city"           : "%4%5",
        "#user_street"         : "%6%7"
      }
    });
  });
});