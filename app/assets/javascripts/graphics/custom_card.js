
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
//   $(currentScore).animate( { width: scoreWidth }, 400);
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




$( ".score-form-trigger" ).click(function() {
  $(".card-tooltips-backdrop").toggle('fast');
  var currentId = $( this ).data("id");
  var currentScoreForm = $( "#score-form-" + currentId );
  var currentCard = $("#card-" + currentId );
  var scoreSubmit = $("#score-form-submit-" + currentId );
  $(currentScoreForm).toggle("slide",{direction:'up'},"fast");
  $(this).toggleClass('red-score-btn');
  $(currentCard).toggleClass('dynamic-bottom-margin');
});


$( ".score-form-button" ).click(function() {
  $(".card-tooltips-backdrop").toggle('fast');
  var currentId = $( this ).data("id");
  var currentScoreForm = $( "#score-form-" + currentId );
  var currentFormTrigger = $( "#score-form-trigger-" + currentId );
  $(currentFormTrigger).toggleClass('red-score-btn');
  $(currentScoreForm).toggle("slide",{direction:'up'},"fast");
  var currentCard = $("#card-" + currentId );
  $(currentCard).toggleClass('dynamic-bottom-margin');
});


$(".card-tooltips-backdrop").click(function() {
  $(".score-form-absolute").hide();
  $(".custom-card").removeClass('dynamic-bottom-margin');
  $(".score-form-trigger").removeClass('red-score-btn');
  $(this).hide();
});
