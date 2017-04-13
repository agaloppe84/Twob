$('#productNewModal').on('show.bs.modal', function (event) {
    var $modal = $(this);
    var button = $(event.relatedTarget);
    var typeId = button.data('typeid');
    $.ajax({
      url: "categories/" + typeId + "/products/new",
      success: function(data){
          $modal.find('.modal-content-custom').html(data)
      }
    });
})
