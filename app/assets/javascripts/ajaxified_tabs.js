var allAjaxMethods = function(){
  cardLogic();
  rangeSlider();
};





$('.nsld-link').click(function() {
  var categoryId = $(this).data("id");
  var liActive = $('#active-link-ajax-' + categoryId);
  var iconActive = $("#icon-dynamic-" + categoryId);
  $(iconActive).removeClass('icon-circle-o');
  $(iconActive).addClass('icon-circle');
  $(liActive).addClass('active-link');
  $('.nsld-link').not(liActive).removeClass('active-link');
  $('.nsld-icon').not(iconActive).removeClass('icon-circle');
  $('.nsld-icon').not(iconActive).addClass('icon-circle-o');
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
  $(this).addClass('active-link');
  $('.custom-tablink-mobile').not(this).removeClass('active-link');
  $('.tab-pane').html("<div class='await-ajax-tabs'>loading<div class='fa fa-circle-o-notch fa-spin ajax-waiting'></div></div>");

  $.ajax({
      url: "categories/" + categoryId,
      complete: allAjaxMethods,
      success: function(data){
        $('.tab-pane').html(data);
      }
  });

});


