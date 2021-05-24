const addCartBtn = document.getElementById('add-to-cart');
const countElement = document.getElementById('total-count');
const totalPriceElement = document.getElementById('total-amount');

addCartBtn.addEventListener("click", (event) => {
  event.preventDefault();
  const count = parseInt(countElement.innerHTML) + 1;
  console.log(count)
  countElement.innerHTML = count;
})
