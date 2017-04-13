$('#promoNewModal').on('show.bs.modal', function (event) {
    var $modal = $(this);
    var button = $(event.relatedTarget);
    var typeId = button.data('id');
    $.ajax({
      url: "categories/" + typeId + "/promos/new",
      success: function(data){
          $modal.find('.modal-content-custom').html(data)
      }
    });
})
