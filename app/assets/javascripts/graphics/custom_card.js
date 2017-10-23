var cardLogic = function() {


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









