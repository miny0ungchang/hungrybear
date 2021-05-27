const addToCartBtns = document.querySelectorAll(".add-btn");
const currentUser = document.getElementById("current-user-email");
// console.log(addToCartBtns);
// if (currentUser == null)
//  { console.log("currentUser is null") }
// else
//  { console.log(currentUser.innerText) };

addToCartBtns.forEach((btn) => {
  btn.addEventListener("click", (event) => {
    if (currentUser == null)
      { window.location.assign("/users/sign_in") };
  });
}); 
