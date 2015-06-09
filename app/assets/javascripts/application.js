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

  // Message Board Animations
  $('#new_message').submit(function(event) {
    event.preventDefault();
    $.ajax({
      url: '/messages',
      method: 'POST',
      dataType: 'json',
      data: { message: { email: $('#message_email').val(), text: $('#message_text').val() } },
      success: function(data) {
        if(data.id % 4 === 0) {
          $(".messages").append($("<div class='col-md-3 blank_message'></div><div class='col-md-3 message'><p>" + data.text + '</p><p>' + data.email + '</p></div>').hide().fadeIn(2000));
        }
        else { $(".messages").append($("<div class='col-md-3 message'><p>" + data.text + '</p><p>' + data.email + '</p></div>').hide().fadeIn(2000)); }
      }
    });
  });

  // Homepage Animations

  $('#sign_up').hover(
    function() {
      $('#sign_up_text').fadeOut(500);
    }, function() {
      $('#keyboard').show();
    }
  );
});
