(function($) {
  $.fn.counter = function(options) {
    var settings = $.extend({
      start: 0,
      end: 100,
      easing: 'swing',

      complete: ''
    }, options);

    var thisElement = $(this);

    $({
      count: settings.start
    }).animate({
      count: settings.end
    }, {
      duration: settings.duration,
      easing: settings.easing,
      step: function() {
        var mathCount = Math.ceil(this.count);
        thisElement.text(mathCount);
      },
      complete: settings.complete
    });
  };

}(jQuery));



 $('.month').each(function() {
   $(this).animate({
    height: $(this).attr('data-height')
   }, 4000);
   $(this).find('.number').counter({
      start: 0,
      end: $(this).find('.number').attr('data-count'),
      duration: 4000
    });
   var currentNumber = $(this).find('.number').attr('data-count');

   if (currentNumber <= 100 && currentNumber >= 90) {
      $(this).css( "background-color", "#FB5050" );
    } else if (currentNumber > 80 && currentNumber < 90) {
      $(this).css( "background-color", "#FB5050" );
    } else if (currentNumber > 70 && currentNumber <= 80) {
      $(this).css( "background-color", "#FB9550" );
    } else if (currentNumber > 60 && currentNumber <= 70) {
      $(this).css( "background-color", "#FBCB50" );
    } else if (currentNumber > 50 && currentNumber <= 60) {
      $(this).css( "background-color", "#EBE358" );
    } else if (currentNumber > 40 && currentNumber <= 50) {
      $(this).css( "background-color", "#C2EF68" );
    } else if (currentNumber > 30 && currentNumber <= 40) {
      $(this).css( "background-color", "#68EF9D" );
    } else if (currentNumber > 20 && currentNumber <= 30) {
      $(this).css( "background-color", "#68EFDC" );
    } else if (currentNumber > 10 && currentNumber <= 20) {
      $(this).css( "background-color", "#68CAEF" );
    } else if (currentNumber >= 0 && currentNumber <= 10) {
      $(this).css( "background-color", "#68ABEF" );
    }

 });

