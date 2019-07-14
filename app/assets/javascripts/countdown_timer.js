var countdown = function() {
  $('#clock').countdown({
    until: $('#remaining_time').val(),
    format: 'HMS',
    onExpiry: function() {
      $('.submit-time-out').click();
    }
  });
}
document.addEventListener('turbolinks:load', countdown);
$(document).on('page:update', countdown);
