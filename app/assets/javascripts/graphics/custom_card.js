var cardLogic = function() {

  $('.ajax-dyna-quotation').click(function() {
    var typeId = $(this).data("typeid");
    var productId = $(this).data("id");
    var currentFormQuot = $('#form-steps-' + productId );
    var currentCard = $('#custom-card-' + productId );
    $(currentFormQuot).toggle("slide",{direction:'up'},"fast");
    $(currentCard).toggleClass('dynamic-bottom-margin-big');
    $(this).toggleClass('red-score-btn');
    $(".custom-backdrop").removeClass('hidden');

    $.ajax({
        url: "categories/" + typeId + "/products/" + productId + "/quotations/new",
        complete: wizardLogic(),
        success: function(data){
          $(currentFormQuot).html(data);
        }
    });
  });

  $('.cct-guarantee').click(function() {
    var productId = $(this).data("id");
    var currentServices = $('#services-' + productId );
    var currentCard = $('#custom-card-' + productId );
    $(currentServices).toggle();
    $(currentCard).toggleClass('dynamic-top-margin');
    $(this).toggleClass('red-score-btn');
    console.log(currentServices);
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

};

cardLogic();









