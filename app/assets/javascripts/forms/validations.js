var homeForm = $('.home_choice');
var homeFormSubmit = $('#home-search-form-submit');

$(homeFormSubmit).click(function() {
  $(homeForm).submit();
});
