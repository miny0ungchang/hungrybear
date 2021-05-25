const addCartBtn = document.getElementById("add-to-cart");
const countElement = document.getElementById("total-count");
const totalPriceElement = document.getElementById("total-price");

$('.show-menu-modal').on("click", function (e) {
  console.log("show click-modal");
  const button = $(this)
  const menuName = button.data("menu-name");
  console.log(menuName);
  var menuPrice = button.data("menu-price");
  console.log(menuPrice);
  $('#click-modal').find(".modal-title").text("Order " + menuName);
  $('#click-modal').find(".modal-price").text(menuPrice + " SGD");
});

addCartBtn.addEventListener("click", (event) => {
  event.preventDefault();
  const amount = document.querySelector("#menu-amount");
  console.log(amount.value);
  const count = parseInt(countElement.innerHTML);
  console.log(count);
  if (amount.value === 1) {
    countElement.innerHTML = count + 1;
  } else {
    countElement.innerHTML = count + parseInt(amount.value)
  }
});

$(document).on("click", '#add-to-cart', function () {
  console.log("on click");
});
