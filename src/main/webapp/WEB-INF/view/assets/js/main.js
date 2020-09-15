/* Set the width of the side navigation to 250px and the left margin of the page content to 250px */
function openNav() {
    document.getElementById("mySidenav").style.width = "350px";
    document.getElementById("main").style.marginLeft = "350px";
}

/* Set the width of the side navigation to 0 and the left margin of the page content to 0 */
function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
    document.getElementById("main").style.marginLeft = "0";
}

/* Toggle between adding and removing the "responsive" class to topnav when the user clicks on the icon */
function myFunction() {
    let x = document.getElementById("mySidenav");
    if (x.className === "topnav") {
        x.className += " responsive";
    } else {
        x.className = "topnav";
    }
}
//<!--    <span onclick="openNav()">open</span>-->
if (/Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent)) {
    let sideNavBar = document.getElementById("mySidenav");
    let openAndCloseInside = document.createElement("a");
    openAndCloseInside.className = "closebtn";
    openAndCloseInside.setAttribute("href", "javascript:void(0)");
    openAndCloseInside.setAttribute("onclick", "closeNav()");
    openAndCloseInside.innerHTML = "&times;";
    sideNavBar.insertBefore(openAndCloseInside, sideNavBar.firstChild);
    /////////////////
    let mySidenav = document.getElementById('mySidenav');
    let openAndCloseOutside = document.createElement("span");
    openAndCloseOutside.setAttribute("onclick", "openNav()");
    openAndCloseOutside.innerHTML = "<i class='bx bx-menu bx-md'></i>";
    mySidenav.parentNode.insertBefore(openAndCloseOutside, mySidenav.nextElementSibling);

} else openNav()

