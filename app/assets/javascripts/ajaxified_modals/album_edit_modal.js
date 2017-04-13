$('#albumEditModal').on('show.bs.modal', function (event) {
    var $modal = $(this);
    var button = $(event.relatedTarget);
    var albumId = button.data('albumid');
    var typeId = button.data('typeid');
    $.ajax({
      url: "categories/" + typeId + "/albums/" + albumId + "/edit",
      success: function(data){
          $modal.find('.modal-content-custom').html(data)
      }
    });
})
