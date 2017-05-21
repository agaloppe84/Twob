
$('.ajax-dyna-quotation').click(function() {
  var productId = $(this).data("id");


  const checkButtons = (activeStep, stepsCount) => {
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

  const scrollWindow = (activeStepHeight, viewHeight) => {
    if (viewHeight < activeStepHeight) {
      $(window).scrollTop($(steps[activeStep]).offset().top - viewHeight / 2);
    }
  };

  const setWizardHeight = activeStepHeight => {
    $(".wizard-body-" + productId).height(activeStepHeight);
  };

  $(function() {

    const wizardSteps = $("#wizard-header-" + productId + " .wizard-step");

    const steps = $("#wizard-body-" + productId +  " .step");

    const stepsCount = steps.length - 1;

    const viewHeight = $(window).height();

    let activeStep = 0;

    let activeStepHeight = $(steps[activeStep]).height();

    checkButtons(activeStep, stepsCount);
    setWizardHeight(activeStepHeight);


    $(window).resize(function() {
      setWizardHeight($(steps[activeStep]).height());
    });


    $("#wizard-prev-" + productId).click(() => {

      $(steps[activeStep]).removeClass("active");
      $(wizardSteps[activeStep]).removeClass("active");

      activeStep--;

      $(steps[activeStep]).removeClass("off").addClass("active");
      $(wizardSteps[activeStep]).addClass("active");

      activeStepHeight = $(steps[activeStep]).height();
      setWizardHeight(activeStepHeight);
      checkButtons(activeStep, stepsCount);
    });

    $("#wizard-next-" + productId).click(() => {

      $(steps[activeStep]).removeClass("inital").addClass("off").removeClass("active");
      $(wizardSteps[activeStep]).removeClass("active");

      activeStep++;

      $(steps[activeStep]).addClass("active");
      $(wizardSteps[activeStep]).addClass("active");

      activeStepHeight = $(steps[activeStep]).height();
      setWizardHeight(activeStepHeight);
      checkButtons(activeStep, stepsCount);
    });
  });




});



