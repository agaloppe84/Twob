
$('.ajax-dyna-quotation').click(function() {
  var productId = $(this).data("id");


  const checkButtons = (activeStep, stepsCount) => {
    const prevBtn = $("#wizard-prev-" + productId);
    const nextBtn = $("#wizard-next-" + productId);
    const submBtn = $("#wizard-subm-" + productId);

    switch (activeStep / stepsCount) {
      case 0: // First Step
        prevBtn.hide();
        submBtn.hide();
        nextBtn.show();
        break;
      case 1: // Last Step
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

  // Scrolling the form to the middle of the screen if the form
  // is taller than the viewHeight
  const scrollWindow = (activeStepHeight, viewHeight) => {
    if (viewHeight < activeStepHeight) {
      $(window).scrollTop($(steps[activeStep]).offset().top - viewHeight / 2);
    }
  };

  // Setting the wizard body height, this is needed because
  // the steps inside of the body have position: absolute
  const setWizardHeight = activeStepHeight => {
    $(".wizard-body-" + productId).height(activeStepHeight);
  };

  $(function() {
    // Form step counter (little cirecles at the top of the form)
    const wizardSteps = $("#wizard-header-" + productId + " .wizard-step");
    // Form steps (actual steps)
    const steps = $("#wizard-body-" + productId +  " .step");
    // Number of steps (counting from 0)
    const stepsCount = steps.length - 1;
    // Screen Height
    const viewHeight = $(window).height();
    // Current step being shown (counting from 0)
    let activeStep = 0;
    // Height of the current step
    let activeStepHeight = $(steps[activeStep]).height();

    checkButtons(activeStep, stepsCount);
    setWizardHeight(activeStepHeight);

    // Resizing wizard body when the viewport changes
    $(window).resize(function() {
      setWizardHeight($(steps[activeStep]).height());
    });

    // Previous button handler
    $("#wizard-prev-" + productId).click(() => {
      // Sliding out current step
      $(steps[activeStep]).removeClass("active");
      $(wizardSteps[activeStep]).removeClass("active");

      activeStep--;

      // Sliding in previous Step
      $(steps[activeStep]).removeClass("off").addClass("active");
      $(wizardSteps[activeStep]).addClass("active");

      activeStepHeight = $(steps[activeStep]).height();
      setWizardHeight(activeStepHeight);
      checkButtons(activeStep, stepsCount);
    });

    // Next button handler
    $("#wizard-next-" + productId).click(() => {
      // Sliding out current step
      $(steps[activeStep]).removeClass("inital").addClass("off").removeClass("active");
      $(wizardSteps[activeStep]).removeClass("active");

      // Next step
      activeStep++;

      // Sliding in next step
      $(steps[activeStep]).addClass("active");
      $(wizardSteps[activeStep]).addClass("active");

      activeStepHeight = $(steps[activeStep]).height();
      setWizardHeight(activeStepHeight);
      checkButtons(activeStep, stepsCount);
    });
  });




});



