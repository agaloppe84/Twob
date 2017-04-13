$('#albumNewModal').on('show.bs.modal', function (event) {
    var $modal = $(this);
    var button = $(event.relatedTarget);
    var typeId = button.data('typeid');
    $.ajax({
      url: "categories/" + typeId + "/albums/new",
      success: function(data){
          $modal.find('.modal-content-custom').html(data)
      }
    });
})
