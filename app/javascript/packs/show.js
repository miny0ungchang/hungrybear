const addCartBtn = document.getElementById("add-to-cart");
const countElement = document.getElementById("total-count");

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
  const count = parseInt(countElement.innerHTML) + 1;
  countElement.innerHTML = count;
});

$(document).on("click", '#add-to-cart', function () {
  console.log("on click");
});
