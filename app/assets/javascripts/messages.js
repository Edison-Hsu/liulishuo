// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/
// #

$(document).on('page:change', function(event) {
  // delete references to the nodes in event.originalEvent.data to prevent memory leaks
  $("#chat-messages").scrollTop($("#chat-messages")[0].scrollHeight);
});

