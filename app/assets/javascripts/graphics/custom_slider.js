var rangeSlider = function(){
  var slider = $('.range-slider'),
      range = $('.range-slider__range'),
      value = $('.range-slider__value');

  slider.each(function(){

    value.each(function(){
      var value = $(this).prev().attr('value');
      $(this).html(value + '/10');
    });

    range.on('input', function(){
      $(this).next(value).html(this.value + '/10');
    });
  });
};

rangeSlider();





$('.custom-card').each(function() {
  var currentProduct = $(this);
  var currentLink = $(this).find('.score-form-trigger');
  var currentServices = $(this).find('.cct-guarantee');
  var currentServicesContainer = $(this).find('.cct-absolute-services-container');
  var currentForm = $(this).find('.score-form-absolute');
  var currentSubmitButton = $(currentForm).find('.score-form-button');
  var currentScore = $(this).find('.average-dyn-data');
  var scoreWidth = $(currentScore).attr('data-width');
  var scoreColor = $(currentScore).attr('data-color');
  $(currentScore).css( "width", scoreWidth );
  $(currentScore).css( "background-color", scoreColor );
  $(currentLink).click(function() {
    $(currentForm).toggle();
    $(currentProduct).toggleClass('dynamic-bottom-margin');
    $(this).toggleClass('red-score-btn');
  });
  $(currentServices).click(function() {
    $(currentServicesContainer).toggle('slow');
    $(currentProduct).toggleClass('dynamic-top-margin');
  });
  $(currentSubmitButton).click(function() {
    $(currentForm).toggle();
    $(currentProduct).toggleClass('dynamic-bottom-margin');
    $(currentLink).toggleClass('red-score-btn');
  });
});
