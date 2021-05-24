const initDynamicModal = () => {
  const modalElement = document.querySelector('#clickModal');

  if (modalElement) {
    $('#clickModal').on('show.bs.modal', function (event) {
      console.log('show clickModal')
      var button = $(event.relatedTarget) // Button that triggered the modal
      var menuName = button.data('menu-name')
      console.log(menuName)
      var menuPrice = button.data('menu-price')
      console.log(menuPrice)
      var menuId = button.data('menu-id')
      var modal = $(this)
      modal.find('.modal-title').text('Order ' + menuName)
      modal.find('.modal-price').text(menuPrice + " SGD")
    })
  }
}
