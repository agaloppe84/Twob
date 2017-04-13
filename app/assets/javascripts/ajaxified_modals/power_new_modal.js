$('#powerNewModal').on('show.bs.modal', function (event) {
    var $modal = $(this);
    var button = $(event.relatedTarget);
    var typeId = button.data('typeid');
    var productId = button.data('productid');
    $.ajax({
      url: "categories/" + typeId + "/products/" + productId + "/powers/new",
      success: function(data){
          $modal.find('.modal-content-custom').html(data)
      }
    });
})
