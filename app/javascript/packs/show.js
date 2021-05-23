const addCartBtn = document.getElementById('add-to-cart');
const count = document.getElementById('total-count');


addCartBtn.addEventListener("click", addItem)
function addItem (){
  count.innerHTML = parseInt(count.innerHTML) + 1;
  count;
};