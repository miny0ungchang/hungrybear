const initDynamicModal = () => {
  const modalElement = document.querySelector("#exampleModal")

  if (modalElement) {
    initAddToCart();

    $('#exampleModal').on('show.bs.modal', function (event) {
      var button = $(event.relatedTarget) // Button that triggered the modal
      var menuName = button.data('menu-name')
      var menuPrice = button.data('menu-price')
      var menuId = button.data('menu-id')
      var modal = $(this)
      modal.attr('data-current-menu-id', menuId);
      modal.find('.modal-title').text('Order ' + menuName)
      modal.find('.modal-price').text(menuPrice + "SGD")

      fillInputs(modal, menuId);
    })
  }
}

const addCartBtn = document.getElementById('add-to-cart');
const count = document.getElementById('total-count');

addCartBtn.addEventListener("click", (event) => {
  event.preventDefault();
  const quantity = parseInt(quantityElement.innerHTML) + 1
  quantityElement.innerHTML = quantity
})
