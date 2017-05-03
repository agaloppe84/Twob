$('#quotationShowModal').on('show.bs.modal', function (event) {
    var $modal = $(this);
    var button = $(event.relatedTarget);
    var quotationId = button.data('quotationid');
    $.ajax({
      url: "quotations/" + quotationId,
      success: function(data){
          $modal.find('.modal-content-custom').html(data)
      }
    });
})
