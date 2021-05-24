const addCartBtn = document.getElementById('add-to-cart');
const countElement = document.getElementById('total-count');

addCartBtn.addEventListener("click", (event) => {
  event.preventDefault();
  const count = parseInt(countElement.innerHTML) + 1
  countElement = count.innerHTML
})
