var allAjaxMethods = function(){
  cardLogic();
  rangeSlider();
};





$('.custom-tablink').click(function() {
  var categoryId = $(this).data("id");
  var liActive = $('#active-link-ajax-' + categoryId);
  $(liActive).addClass('active');
  $('li').not(liActive).removeClass('active');
  $('.tab-pane').html("<div class='await-ajax-tabs'>loading<div class='fa fa-circle-o-notch fa-spin ajax-waiting'></div></div>");

  $.ajax({
      url: "categories/" + categoryId,
      complete: allAjaxMethods,
      success: function(data){
        $('.tab-pane').html(data);
      }
  });

});

$('.custom-tablink-mobile').click(function() {
  var categoryId = $(this).data("id");
  $(this).addClass('active');
  $('.custom-tablink-mobile').not(this).removeClass('active');
  $('.tab-pane').html("<div class='await-ajax-tabs'>loading<div class='fa fa-circle-o-notch fa-spin ajax-waiting'></div></div>");

  $.ajax({
      url: "categories/" + categoryId,
      complete: allAjaxMethods,
      success: function(data){
        $('.tab-pane').html(data);
      }
  });

});


