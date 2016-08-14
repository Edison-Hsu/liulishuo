// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).on('ready page:load', function() {
  var REFRESH_INTERVAL_IN_MILLIS = 3000;
  setTimeout(function() {
    // if ($("#contact_list") != null) {
    // disable page scrolling to top after loading page content
    Turbolinks.enableTransitionCache(true);

    // pass current page url to visit method
    Turbolinks.visit(location.toString());

    // enable page scroll reset in case user clicks other link
    Turbolinks.enableTransitionCache(false);
    // }
  }, REFRESH_INTERVAL_IN_MILLIS);
});
