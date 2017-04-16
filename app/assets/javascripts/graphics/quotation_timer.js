
$('.dynamic-line').each(function() {
  var dynamicWidth = $(this).attr('data-width');
  var dynamicColor = $(this).attr('data-color');
  $(this).css( "width", dynamicWidth );
  $(this).css( "background-color", dynamicColor );
});
