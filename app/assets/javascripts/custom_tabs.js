$( ".qad-untreated-button" ).click(function() {
  $(this).addClass('activelink');
  $('.qad-all-button').removeClass('activelink');
  $('.qad-treated-button').removeClass('activelink');
  $( ".quot-admin-all-container" ).hide();
  $( ".quot-admin-treated-container" ).hide();
  $( ".quot-admin-untreated-container" ).show();
});

$( ".qad-all-button" ).click(function() {
  $(this).addClass('activelink');
  $('.qad-untreated-button').removeClass('activelink');
  $('.qad-treated-button').removeClass('activelink');
  $( ".quot-admin-untreated-container" ).hide();
  $( ".quot-admin-treated-container" ).hide();
  $( ".quot-admin-all-container" ).show();
});

$( ".qad-treated-button" ).click(function() {
  $(this).addClass('activelink');
  $('.qad-all-button').removeClass('activelink');
  $('.qad-untreated-button').removeClass('activelink');
  $( ".quot-admin-all-container" ).hide();
  $( ".quot-admin-untreated-container" ).hide();
  $( ".quot-admin-treated-container" ).show();
});

$('#dgl-true-link').click(function() {
    $('.type-index-v2-header').toggle();
    $(this).toggleClass('dynamic-green-link');
});
