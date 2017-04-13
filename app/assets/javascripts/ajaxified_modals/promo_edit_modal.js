$('#promoEditModal').on('show.bs.modal', function (event) {
    var $modal = $(this);
    var button = $(event.relatedTarget);
    var resourceId = button.data('id');
    var typeId = button.data('typeid');
    $.ajax({
      url: "categories/" + typeId + "/promos/" + resourceId + "/edit",
      success: function(data){
          $modal.find('.modal-content-custom').html(data)
      }
    });
})
