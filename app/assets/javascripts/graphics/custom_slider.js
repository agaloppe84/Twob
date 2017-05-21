var rangeSlider = function(){
  var slider = $('.range-slider'),
      range = $('.range-slider__range'),
      value = $('.range-slider__value');

  slider.each(function(){

    value.each(function(){
      var value = $(this).prev().attr('value');
      $(this).html(value + ' sur 10');
    });

    range.on('input', function(){
      $(this).next(value).html(this.value + ' sur 10');
    });
  });
};

rangeSlider();





