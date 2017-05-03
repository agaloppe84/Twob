
$('.dynamic-line').each(function() {
  var dynamicWidth = $(this).attr('data-width');
  var dynamicColor = $(this).attr('data-color');
  if (parseInt(dynamicWidth) > 100) {
    $(this).css( "width", "100%" );
  } else {
    $(this).css( "width", dynamicWidth );
  }
  $(this).css( "background-color", dynamicColor );
});
