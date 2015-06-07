// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require_tree .

$(function() {
  // $('#post-message').on('click', function(event) {
  //   event.preventDefault();
  //   var email: $("#message_email").val();
  //   var text: $("#message_text").val();
  //   $.ajax({
  //     url: "/messages",
  //     dataType: 'json',
  //     method: 'POST',
  //     data: {message:{email: email, text: text }},
  //     success: function() {
  //       console.log("test");
  //     }
  //   });
  // });
  $('#new_message').submit(function(event) {
    event.preventDefault();
    $.ajax({
      url: '/messages',
      method: 'POST',
      dataType: 'json',
      data: { message: { email: $('#message_email').val(), text: $('#message_text').val() } },
      success: function() {
        console.log('hello');
      }
    });
  });
  $('#new_saying').submit(function(event) {
    event.preventDefault();
    $.ajax({
      url: '/sayings',
      method: 'POST',
      dataType: 'json',
      data: { saying: { text: $('#saying_text').val() }},
      success: function(data) {
        console.log(data);
      }
    });
  });
});
