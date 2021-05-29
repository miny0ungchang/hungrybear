import { fetchWithToken } from "../plugins/fetch_with_token";

const addCartBtn = document.getElementById("add-to-cart");
const countElement = document.getElementById("total-count");
const totalPriceElement = document.getElementById("total-price");
const addedMenuElement = document.getElementById("added-menu");
const line = document.createElement('br');
const checkOutButton = document.querySelector("#click-check-out");
const restaurantId = document.getElementById("restaurant-id").dataset.restaurantId;

const modal = document.querySelector(".show-menu-modal");
$('.show-menu-modal').on("click", function (e) {
  console.log("show click-modal");
  const button = $(this)
  const menuName = button.data("menu-name");
  console.log(menuName);
  var menuPrice = button.data("menu-price");
  var menuId = button.data("menu-id");
  console.log(menuPrice);
  $('#click-modal').find(".modal-title").text("Order " + menuName);
  $('#click-modal').find(".modal-price").text(menuPrice + " SGD");
  $('#click-modal').attr("data-menu-id", menuId);
  $('#click-modal').attr("data-menu-name", menuName);
  $('#click-modal').attr("data-menu-price", menuPrice);
});

addCartBtn.addEventListener("click", (event) => {
  event.preventDefault();
  const amount = document.querySelector("#menu-amount");
  console.log(amount.value);
  const count = parseInt(countElement.innerHTML);
  const addedMenu = toString(addedMenuElement.innerHTML);
  const menuName = document.querySelector("#click-modal").dataset.menuName;
  const totalPrice = parseFloat(totalPriceElement.innerHTML);
  const menuPrice = document.querySelector("#click-modal").dataset.menuPrice;
  let menuPriceAmend = parseFloat(menuPrice.replace('€', ''));

  const newOrderItem = {
    menuId: document.querySelector("#click-modal").dataset.menuId,
    menuName: document.querySelector("#click-modal").dataset.menuName,
    menuPrice: document.querySelector("#click-modal").dataset.menuPrice,
    amount: document.querySelector("#menu-amount").value
  }

  saveToLocalStorage(newOrderItem);

  console.log(count);
  if (parseInt(amount.value) === 1) {
    countElement.innerHTML = count + 1;
    totalPriceElement.innerHTML = totalPrice + menuPriceAmend;
  } else {
    countElement.innerHTML = count + parseInt(amount.value);
    totalPriceElement.innerHTML = totalPrice + (menuPriceAmend * parseInt(amount.value));
  }
  
  addedMenuElement.innerHTML += menuName;
  (addedMenuElement.innerHTML).appendChild(line);

});

const saveToLocalStorage = (newOrderItem) => {
  if (window.localStorage.orderItems) {
    const orderArray = JSON.parse(window.localStorage.orderItems)
    orderArray.push(newOrderItem);
    window.localStorage.orderItems = JSON.stringify(orderArray);
  } else {
    window.localStorage.orderItems = JSON.stringify([newOrderItem]);
  }
  console.log(window.localStorage.orderItems);
}

checkOutButton.addEventListener("click", () => {
  const url = "/orders"
  const requestBody = { restaurantId: restaurantId, orderItems: window.localStorage.orderItems }
  fetchWithToken(url, {
    method: "POST",
    headers: {
      "Content-Type": "application/json"
    },
    body: JSON.stringify(requestBody)
  }).then((data) => {
    window.location.href = data.url
  })
})



