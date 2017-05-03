$( ".qad-untreated-button" ).click(function() {
  $(this).addClass('activelink');
  $('.qad-all-button').removeClass('activelink');
  $( ".quot-admin-all-container" ).hide();
  $( ".quot-admin-untreated-container" ).show();
});

$( ".qad-all-button" ).click(function() {
  $(this).addClass('activelink');
  $('.qad-untreated-button').removeClass('activelink');
  $( ".quot-admin-untreated-container" ).hide();
  $( ".quot-admin-all-container" ).show();
});
