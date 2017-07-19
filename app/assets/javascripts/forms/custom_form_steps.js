
$('.ajax-dyna-quotation').click(function() {
  var productId = $(this).data("id");


  const checkButtons = function(activeStep, stepsCount) {
    const prevBtn = $("#wizard-prev-" + productId);
    const nextBtn = $("#wizard-next-" + productId);
    const submBtn = $("#wizard-subm-" + productId);

    switch (activeStep / stepsCount) {
      case 0:
        prevBtn.hide();
        submBtn.hide();
        nextBtn.show();
        break;
      case 1:
        nextBtn.hide();
        prevBtn.show();
        submBtn.show();
        break;
      default:
        submBtn.hide();
        prevBtn.show();
        nextBtn.show();
    }
  };


  $(function() {

    const wizardSteps = $("#wizard-header-" + productId + " .wizard-step");
    const steps = $("#wizard-body-" + productId +  " .step");
    const stepsCount = steps.length - 1;
    var activeStep = 0;
    checkButtons(activeStep, stepsCount);

    $("#wizard-prev-" + productId).click(function() {

      $(steps[activeStep]).removeClass("active");
      $(wizardSteps[activeStep]).removeClass("active");

      activeStep--;

      $(steps[activeStep]).removeClass("off").addClass("active");
      $(wizardSteps[activeStep]).addClass("active");
      checkButtons(activeStep, stepsCount);
    });

    $("#wizard-next-" + productId).click(function() {
      $(steps[activeStep]).removeClass("inital").addClass("off").removeClass("active");
      $(wizardSteps[activeStep]).removeClass("active");
      activeStep++;
      $(steps[activeStep]).addClass("active");
      $(wizardSteps[activeStep]).addClass("active");
      checkButtons(activeStep, stepsCount);
    });

  });




});



