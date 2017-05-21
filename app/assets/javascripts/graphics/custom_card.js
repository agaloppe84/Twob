
// $('.custom-card').each(function() {
//   var currentProduct = $(this);
//   var currentLink = $(this).find('.score-form-trigger');
//   var currentServices = $(this).find('.cct-guarantee');
//   var currentServicesContainer = $(this).find('.cct-absolute-services-container');
//   var currentQuotationContainer = $(this).find('.cct-absolute-quotation-container');
//   var currentQuotationLink = $(this).find('.ajax-dyna-quotation');
//   var currentLinkInForm = $(this).find('.ajax-quotation-btn-close-trigger');
//   var currentForm = $(this).find('.score-form-absolute');
//   var currentSubmitButton = $(currentForm).find('.score-form-button');
//   var currentScore = $(this).find('.average-dyn-data');
//   var scoreWidth = $(currentScore).attr('data-width');
//   var scoreColor = $(currentScore).attr('data-color');
//   $(currentScore).css( "width", scoreWidth );
//   $(currentScore).css( "background-color", scoreColor );
//   $(currentLink).click(function() {
//     $(currentForm).toggle("slide",{direction:'up'},"fast");
//     $(currentProduct).toggleClass('dynamic-bottom-margin');
//     $(this).toggleClass('red-score-btn');
//   });
//   $(currentServices).click(function() {
//     $(currentServicesContainer).slideToggle('fast');
//     $(currentProduct).toggleClass('dynamic-top-margin');
//     $(this).toggleClass('red-score-btn');
//   });
//   $(currentQuotationLink).click(function() {
//     $(currentQuotationContainer).toggle("slide",{direction:'up'},"fast");
//     $(currentProduct).toggleClass('dynamic-bottom-margin-big');
//     $(this).toggleClass('red-score-btn');
//   });
//   $(currentLinkInForm).click(function() {
//     $(currentQuotationContainer).toggle("slide",{direction:'up'},"fast");
//     $(currentProduct).toggleClass('dynamic-bottom-margin-big');
//     $(currentQuotationLink).toggleClass('red-score-btn');
//   });
//   $(currentSubmitButton).click(function() {
//     $(currentForm).toggle();
//     $(currentProduct).toggleClass('dynamic-bottom-margin');
//     $(currentLink).toggleClass('red-score-btn');
//   });
// });





$('.ajax-dyna-quotation').click(function() {
  var productId = $(this).data("id");
  var currentFormQuot = $('#form-steps-' + productId );
  var currentCard = $('#custom-card-' + productId );
  $(currentFormQuot).toggle("slide",{direction:'up'},"fast");
  $(currentCard).toggleClass('dynamic-bottom-margin-big');
  $(this).toggleClass('red-score-btn');
});

$('.cct-guarantee').click(function() {
  var productId = $(this).data("id");
  var currentServices = $('#services-' + productId );
  var currentCard = $('#custom-card-' + productId );
  $(currentServices).toggle("slide",{direction:'down'},"fast");
  $(currentCard).toggleClass('dynamic-top-margin');
  $(this).toggleClass('red-score-btn');
});

$('.score-form-trigger').click(function() {
  var productId = $(this).data("id");
  var currentScoreForm = $('#score-form-' + productId );
  var currentCard = $('#custom-card-' + productId );
  $(currentScoreForm).toggle("slide",{direction:'up'},"fast");
  $(currentCard).toggleClass('dynamic-bottom-margin');
  $(this).toggleClass('red-score-btn');
});

$('.score-form-validate-button').click(function() {
  var productId = $(this).data("id");
  var currentScoreForm = $('#score-form-' + productId );
  var currentCard = $('#custom-card-' + productId );
  var currentScoreTrigger = $('#score-form-trigger-' + productId );
  $(currentScoreForm).toggle("slide",{direction:'up'},"fast");
  $(currentCard).toggleClass('dynamic-bottom-margin');
  $(currentScoreTrigger).toggleClass('red-score-btn');
});


$('.score-form-cancel-button').click(function() {
  var productId = $(this).data("id");
  var currentScoreForm = $('#score-form-' + productId );
  var currentCard = $('#custom-card-' + productId );
  var currentScoreTrigger = $('#score-form-trigger-' + productId );
  $(currentScoreForm).toggle("slide",{direction:'up'},"fast");
  $(currentCard).toggleClass('dynamic-bottom-margin');
  $(currentScoreTrigger).toggleClass('red-score-btn');
});




