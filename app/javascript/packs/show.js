const addCartBtn = document.getElementById('add-to-cart');
const count = document.getElementById('total-count');

add.addEventListener("click", (event) => {
  event.preventDefault();
  const quantity = parseInt(quantityElement.innerHTML) + 1
  quantityElement.innerHTML = quantity
})
