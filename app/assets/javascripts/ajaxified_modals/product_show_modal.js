$('#productShowModal').on('show.bs.modal', function (event) {
    var $modal = $(this);
    var button = $(event.relatedTarget);
    var productId = button.data('productid');
    var typeId = button.data('typeid');
    $.ajax({
      url: "categories/" + typeId + "/products/" + productId,
      success: function(data){
          $modal.find('.modal-content-custom').html(data)
      }
    });
})

$('#productShowModalv2').on('show.bs.modal', function (event) {
    var $modal = $(this);
    var button = $(event.relatedTarget);
    var productId = button.data('productid');
    var typeId = button.data('typeid');
    $.ajax({
      url: "../../categories/" + typeId + "/products/" + productId,
      success: function(data){
          $modal.find('.modal-content-custom-v2').html(data)
      }
    });
})
