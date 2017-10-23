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

$('#dgl-true-link').click(function(event) {
    event.stopPropagation();
    $(this).toggleClass('dynamic-green-link');
    $('.nsld-abs').toggle();
    $('.nsld-container-abs').toggle();
});

$('.nsld-container-abs').on("click",function(e){e.stopPropagation()});

$('#dgl-true-link-mobile').click(function() {
    var container = $('.type-index-v2-header-mobile');
    $(container).toggle();
    $(this).toggleClass('dynamic-green-link');
    $(".custom-backdrop-v5").toggleClass('hidden');
});

$('#category-close-cross').click(function() {
    $('.type-index-v2-header-mobile').toggle();
    $(".custom-backdrop-v5").toggleClass('hidden');
    $('#dgl-true-link-mobile').toggleClass('dynamic-green-link');
});

