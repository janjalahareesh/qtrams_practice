
const homeBtn = document.getElementById("home-btn");
const menuBtn = document.getElementById("menu-btn");
const contactBtn = document.getElementById("contact-btn");
const contactDetails = document.querySelector(".contact-details");
const menuContainer = document.getElementById("menu-container");
const contentSection = document.getElementById("content");



function hideAllSections() {
    contentSection.style.display = "none";
    menuContainer.style.display = "none";
    contactDetails.style.display = "none";
}


homeBtn.addEventListener("click", () => {
    hideAllSections();  
    contentSection.style.display = "block";  
});


menuBtn.addEventListener("click", () => {
    hideAllSections();  
    menuContainer.style.display = "block";  
});


contactBtn.addEventListener("click", () => {
    hideAllSections();  
    contactDetails.style.display = "block";  
});

document.addEventListener("DOMContentLoaded", function() {
    const nonVegButton = document.querySelector(".non-veg");
    const pureVegButton = document.querySelector(".pure-veg");



    pureVegButton.addEventListener("click", () => {
        pureVegButton.remove();
    });
    nonVegButton.addEventListener("click", () => {
        nonVegButton.remove();
    });
});
