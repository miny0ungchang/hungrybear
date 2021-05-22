const add = document.querySelectorAll('.add-to-cart');
const quantityElement = document.querySelector('#quantity');

add.addEventListener("click", (event) => {
  event.preventDefault();
  const quantity = parseInt(quantityElement.innerHTML) + 1
  quantityElement.innerHTML = quantity
}