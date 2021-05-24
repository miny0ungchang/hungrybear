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

const initAddToCart = () => {
  const sendToCart = document.querySelector('.btn-modal');

  sendToCart.addEventListener('click', () => {
    const modal = document.querySelector('.modal.fade');
    const currentMenuId = modal.dataset.currentMenuId;
    const specialInstructions = document.querySelector('#special-instructions');
    const amount = document.querySelector('#dish-amount');
    let order;
    // If there is an order key
    if (window.localStorage.order) {
      order = JSON.parse(window.localStorage.order);
      const orderInCart = findInCart(order, currentMenuId)
      if (orderInCart) {
        orderInCart.amount = amount.value
        orderInCart.specialInstructions = specialInstructions.value
      } else {
        order.push(
          buildOrderItem(currentMenuId, amount.value, specialInstructions.value)
        )
      }
    } else {
      order = [
        buildOrderItem(currentDishId, amount.value, specialInstructions.value)
      ]
    }
    saveToLocalStorage(order);
  })
}

const fillInputs = (jqmodal, menuId) => {
  if (window.localStorage.order) {
    const order = JSON.parse(window.localStorage.order)
    const menuInCart = findInCart(order, menuId.toString())
    if (menuInCart) {
      jqmodal.find('#dish-amount').val(menuInCart.amount)
      jqmodal.find('#special-instructions').val(menuInCart.specialInstructions);
    } else {
      jqmodal.find('#dish-amount').val('')
      jqmodal.find('#special-instructions').val('')
    }
  }
}

const findInCart = (order, menuId) => {
  return order.find((item) => item.menuId === menuId)
}

const buildOrderItem = (menuId, amount, instructions) => {
  return {
    menuId: menuId,
    amount: amount,
    specialInstructions: instructions
  }
}

export { initDynamicModal }

