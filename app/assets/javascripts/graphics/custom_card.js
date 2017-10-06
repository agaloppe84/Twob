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
  });

  $('.score-form-trigger').click(function() {
    var productId = $(this).data("id");
    var currentScoreForm = $('#score-form-' + productId );
    var currentCard = $('#custom-card-' + productId );
    $(currentScoreForm).toggle("slide",{direction:'up'},"fast");
    $(currentCard).toggleClass('dynamic-bottom-margin');
    $(this).toggleClass('red-score-btn');

    var value = $('#score-form-' + productId + ' #score_value');
    var realNumber = $(value).data('number');
    var number = realNumber;
    $('.text-form-step').text("5");

    $('.left-form-step').click(function() {
      if (number == 0) {
        number = 0;
        $(value).val(number);
        $('.text-form-step').text(number);
      } else {
        number -= 1;
        $(value).val(number);
        $('.text-form-step').text(number);
      }
    });

    $('.right-form-step').click(function() {
      if (number >= 10) {
        number = 10;
        $(value).val(number);
        $('.text-form-step').text(number);
      } else {
        number += 1;
        $(value).val(number);
        $('.text-form-step').text(number);
      }
    });
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









