const addToCartBtns = document.querySelectorAll(".show-menu-modal");
const currentUser = document.getElementById("current-user-email");
// console.log(addToCartBtns);
// if (currentUser == null)
//  { console.log("currentUser is null") }
// else
//  { console.log(currentUser.innerText) };

const userCheckIn = () => {
  addToCartBtns.forEach((btn) => {
    btn.addEventListener("click", (event) => {
      if (currentUser == null) { window.location.assign("/users/sign_in") };
    });
  });
}

export { userCheckIn }
