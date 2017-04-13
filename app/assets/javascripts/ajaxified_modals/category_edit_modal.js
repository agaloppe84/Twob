
$('#typeEditModal').on('show.bs.modal', function (event) {
    var $modal = $(this);
    var button = $(event.relatedTarget);
    var typeId = button.data('id');

    $modal.find('.modal-content-custom').html("<div class='await-modal'><div class='fa fa-gear fa-spin'></div></div>");

      $.ajax({
      url: "categories/" + typeId + "/edit",
      success: function(data){
          $modal.find('.modal-content-custom').html(data)
      }
    });

})



