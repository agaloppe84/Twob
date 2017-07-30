
var allFormStepLogic = function() {

    $('.custom-backdrop').click(function() {
      $(".cct-absolute-quotation-container").hide("slide",{direction:'up'},"fast");
      $(".custom-card").removeClass('dynamic-bottom-margin-big');
      $(this).addClass('hidden');
    });

};

    var wizardLogic = function() {

        var step1 = $(".wizard-header" + " #ws-01");
        var step2 = $(".wizard-header" + " #ws-02");
        var step3 = $(".wizard-header" + " #ws-03");

        var realStep1 = $(".wizard-body" + " #step-1");
        var realStep2 = $(".wizard-body" + " #step-2");
        var realStep3 = $(".wizard-body" + " #step-3");

        var step1Next = $("#wizard-step1-next");
        var step2Next = $("#wizard-step2-next");
        var step2Prev = $("#wizard-step2-prev");
        var step3Prev = $("#wizard-step3-prev");


          $(step1Next).click(function() {
            $(realStep1).removeClass("active");
            $(step1).removeClass("active");
            $(realStep2).addClass("active");
            $(step2).addClass("active");
            console.log("coucou");
          });

          $(step2Prev).click(function() {
            $(realStep2).removeClass("active");
            $(step2).removeClass("active");
            $(realStep1).addClass("active");
            $(step1).addClass("active");
          });

          $(step2Next).click(function() {
            $(realStep2).removeClass("active");
            $(step2).removeClass("active");
            $(realStep3).addClass("active");
            $(step3).addClass("active");
          });

          $(step3Prev).click(function() {
            $(realStep3).removeClass("active");
            $(step3).removeClass("active");
            $(realStep2).addClass("active");
            $(step2).addClass("active");
          });

    };



allFormStepLogic();
