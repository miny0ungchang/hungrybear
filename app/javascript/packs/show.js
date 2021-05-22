const quantityElement = document.querySelector('#quantity');
const amountElement = document.querySelector('#amount');
const itemQuantity = document.querySelector('.item-quantity');
const addButton = document.querySelector('.add');
const substractButton = document.querySelector('.subtract');

addButton.addEventListener("click", (event) => {
  console.log(itemQuantity)
  const item = parseInt(itemQuantity.innerHTML) + 1
  itemQuantity.innerHTML = item
})