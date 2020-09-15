<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <link
      href="/assets/vendor/bootstrap/css/bootstrap.min.css"
      rel="stylesheet"
    />

    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="Blog Template" />
    <meta name="author" content="Xiaoying Riley at 3rd Wave Media" />
    <link rel="shortcut icon" href="favicon.ico" />

    <!-- FontAwesome JS-->
    <script
      defer
      src="https://use.fontawesome.com/releases/v5.7.1/js/all.js"
      integrity="sha384-eVEQC9zshBn0rFj4+TU78eNA19HMNigMviK/PU/FFjLXqa/GKPgX58rvt5Z8PLs7"
      crossorigin="anonymous"
    ></script>

    <!-- Theme CSS -->
    <link id="theme-style" rel="stylesheet" href="/assets/css/theme-1.css" />

    <title>HobbyHub</title>

    <!-- Google Fonts -->

    <!-- Vendor CSS Files -->
    <link
      href="/assets/vendor/bootstrap/css/bootstrap.min.css"
      rel="stylesheet"
    />
    <link href="/assets/vendor/icofont/icofont.min.css" rel="stylesheet" />
    <link href="/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet" />
    <link href="/assets/vendor/venobox/venobox.css" rel="stylesheet" />
    <link
      href="/assets/vendor/owl.carousel/assets/owl.carousel.min.css"
      rel="stylesheet"
    />
    <link href="/assets/vendor/aos/aos.css" rel="stylesheet" />

    <!-- My Main CSS File -->
    <link href="/assets/css/style.css" rel="stylesheet" />
    <style>
      .card {
        display: inline-block;
        width: 17rem;
        height: auto;
        margin-top: 0.5rem;
      }
      .card img {
        max-height: 8rem;
      }
    </style>
  </head>

  <body>
    <div id="mySidenav" class="sidenav inherit">
      <ul>
        <li>
          <img
            class="profile-image mb-3 rounded-circle mx-auto"
            src="assets/images/profile.png"
            alt="profile-image"
            style="width: 150px; height: 150px"
          />
          <a href="">@zaidalsaid</a>
        </li>
        <li>
          <a href="#about"><i class="bx bx-search-alt"></i>Browse</a>
        </li>
        <li>
          <a href="#about"><i class="bx bx-trending-up"></i>Top Blogs</a>
        </li>
        <li>
          <a href="#resume"><i class="bx bx-user-check"></i>Following</a>
        </li>
        <li>
          <a href="#portfolio"><i class="bx bx-chat"></i>Chat</a>
        </li>
        <li>
          <a href="#services"><i class="bx bx-info-circle"></i>About</a>
        </li>
      </ul>
    </div>

    <!-- Add all page content inside this div if you want the side nav to push page content to the right (not used if you only want the sidenav to sit on top of the page -->
    <div id="main">
      <nav class="navbar navbar-expand-lg navbar-dark nav-bar-colors">
        <a class="navbar-brand nav-bar-colors">Hobbies</a>
        <button
          class="navbar-toggler"
          type="button"
          data-toggle="collapse"
          data-target="#navbarNav"
          aria-controls="navbarNav"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
          <ul class="nav navbar-nav navbar-center">
            <li class="nav-item">
              <a class="nav-link nav-bar-colors" href="#">Feed</a>
            </li>
            <li class="nav-item active">
              <a class="nav-link nav-bar-colors" href="#">Blogs</a>
            </li>
            <li class="nav-item">
              <a class="nav-link nav-bar-colors" href="#">Courses</a>
            </li>
            <li class="nav-item">
              <a class="nav-link nav-bar-colors" href="#">Videos</a>
            </li>
            <li class="nav-item">
              <a class="nav-link nav-bar-colors" href="#">About</a>
            </li>
          </ul>
        </div>
      </nav>
      <div class="container-fluid">
        <div class="card">
          <a href="">
            <img
              class="card-img-top"
              src="/assets/img/chess_background.jpg"
              alt="Card image cap"
            />
          </a>
          <div class="card-body">
            <h5 class="card-title">Chess</h5>
            <p class="card-text">
              Some quick example text to build on the card title and make up the
              bulk of the card's content.
            </p>
            <input type="button" value="Follow" class="btn btn-primary" />
          </div>
        </div>
        <div class="card">
          <a href="">
            <img
              class="card-img-top"
              src="/assets/img/reading.jpg"
              alt="Card image cap"
            />
          </a>
          <div class="card-body">
            <h5 class="card-title">Reading</h5>
            <p class="card-text">
              Some quick example text to build on the card title and make up the
              bulk of the card's content.
            </p>
            <input type="button" value="Follow" class="btn btn-primary" />
          </div>
        </div>
        <div class="card">
          <a href="">
            <img
              class="card-img-top"
              src="/assets/img/cooking.jpg"
              alt="Card image cap"
            />
          </a>
          <div class="card-body">
            <h5 class="card-title">Cooking</h5>
            <p class="card-text">
              Some quick example text to build on the card title and make up the
              bulk of the card's content.
            </p>
            <input type="button" value="Follow" class="btn btn-primary" />
          </div>
        </div>
        <div class="card">
          <a href="">
            <img
              class="card-img-top"
              src="/assets/img/writing.jpg"
              alt="Card image cap"
            />
          </a>
          <div class="card-body">
            <h5 class="card-title">Writing</h5>
            <p class="card-text">
              Some quick example text to build on the card title and make up the
              bulk of the card's content.
            </p>
            <input type="button" value="Follow" class="btn btn-primary" />
          </div>
        </div>
        <div class="card">
          <a href="">
            <img
              class="card-img-top"
              src="/assets/img/coding.jpg"
              alt="Card image cap"
            />
          </a>
          <div class="card-body">
            <h5 class="card-title">Coding</h5>
            <p class="card-text">
              Some quick example text to build on the card title and make up the
              bulk of the card's content.
            </p>
            <input type="button" value="Follow" class="btn btn-primary" />
          </div>
        </div>
        <div class="card">
          <a href="">
            <img
              class="card-img-top"
              src="/assets/img/traveling.jpg"
              alt="Card image cap"
            />
          </a>
          <div class="card-body">
            <h5 class="card-title">Traveling</h5>
            <p class="card-text">
              Some quick example text to build on the card title and make up the
              bulk of the card's content.
            </p>
            <input type="button" value="Follow" class="btn btn-primary" />
          </div>
        </div>
      </div>
    </div>
    <!-- Vendor JS Files -->
    <script src="/assets/vendor/jquery/jquery.min.js"></script>
    <script src="/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="/assets/vendor/jquery.easing/jquery.easing.min.js"></script>
    <script src="/assets/vendor/php-email-form/validate.js"></script>
    <script src="/assets/vendor/waypoints/jquery.waypoints.min.js"></script>
    <script src="/assets/vendor/counterup/counterup.min.js"></script>
    <script src="/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
    <script src="/assets/vendor/venobox/venobox.min.js"></script>
    <script src="/assets/vendor/owl.carousel/owl.carousel.min.js"></script>
    <script src="/assets/vendor/typed.js/typed.min.js"></script>
    <script src="/assets/vendor/aos/aos.js"></script>

    <!-- My Main JS File -->
    <script src="/assets/js/main.js"></script>
  </body>
</html>
