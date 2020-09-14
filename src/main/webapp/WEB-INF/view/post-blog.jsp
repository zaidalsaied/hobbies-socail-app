
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="ca">
  <head>
    <meta charset="utf-8" />
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <link
      href="view/assets/vendor/bootstrap/css/bootstrap.min.css"
      rel="stylesheet"
    />

    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="post blog" />
    <meta name="author" content="zaid & samer" />
  

    <script
      defer
      src="https://use.fontawesome.com/releases/v5.7.1/js/all.js"
      integrity="sha384-eVEQC9zshBn0rFj4+TU78eNA19HMNigMviK/PU/FFjLXqa/GKPgX58rvt5Z8PLs7"
      crossorigin="anonymous"
    ></script>
    <script>
      function checkAll() {
        var countErr = 0;
        var errMsgs = "";
        var title = document.getElementById("title").value;
        var descreption = document.getElementById("descreption").value;
        var body = document.getElementById("body").value;
        if (title.length < 10) {
          errMsgs += "\nTitle length should be more than 9 characters.";
          countErr++;
        }
        if (title.length > 40) {
          errMsgs += "\nTitle max length should be less than 40 characters.";
          countErr++;
        }
        if (descreption.length < 25) {
          errMsgs += "\nDescreption length should be more than 24 characters.";
          countErr++;
        }
        if (body.length < 75) {
          errMsgs += "\nBody length should be more than 75 characters\n.";
          countErr++;
        }
        if (countErr >= 1) {
          alert(
            "Please correct the following " + countErr + " fields" + errMsgs
          );
          document
            .getElementById("userform")
            .addEventListener("click", preventDef());
        }
      }
      function preventDef() {
        event.preventDefault();
      }
    </script>
    <!-- Theme CSS -->
    <link id="theme-style" rel="stylesheet" href="view/assets/css/theme-1.css" />
    <title>HobbyHub</title>

    <!-- Vendor CSS Files -->
    <link
      href="view/assets/vendor/bootstrap/css/bootstrap.min.css"
      rel="stylesheet"
    />
    <link href="view/assets/vendor/icofont/icofont.min.css" rel="stylesheet" />
    <link href="view/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet" />
    <link href="view/assets/vendor/venobox/venobox.css" rel="stylesheet" />
    <link
      href="view/assets/vendor/owl.carousel/assets/owl.carousel.min.css"
      rel="stylesheet"
    />
    <link href="view/assets/vendor/aos/aos.css" rel="stylesheet" />

    <link href="view/assets/css/style.css" rel="stylesheet" />
  </head>
  <body>
    <div id="mySidenav" class="sidenav inherit">
      <ul>
        <li>
          <img
            class="profile-image mb-3 rounded-circle mx-auto"
            src="view/assets/images/profile.png"
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
          <a href="#services"><i class="bx bx-info-circle"></i>About</a>
        </li>
      </ul>
    </div>

    <div id="main">
      <nav class="navbar navbar-expand-lg navbar-dark nav-bar-colors">
        <a class="navbar-brand nav-bar-colors" href="#"></a>
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
        <form
          method="post"
          onsubmit="checkAll()"
          id="userform"
          style="margin-top: 2em"
        >
          <div class="form-group">
            <label for="title">Blog Title</label>
            <input
              type="text"
              class="form-control"
              id="title"
              name="title"
              placeholder="your blog title"
              required
            />
          </div>
          <div class="form-group">
            <label for="description">Blog Descreption</label>
            <input
              type="text"
              class="form-control"
              name="descreption"
              id="descreption"
              placeholder="your blog descreption"
              required
            />
          </div>
          <div class="form-group">
            <label for="body">Blog Body</label>
            <textarea
              placeholder="your blog Body"
              class="form-control"
              id="body"
              name="body"
              rows="8"
              required
            ></textarea>
            <label for="img">Select image:</label>
            <input type="file" id="img" name="image" accept="image/*" />
            <br />

            <div><h6>What is your blog about?</h6></div>
            <div class="form-check form-check-inline">
              <input
                class="form-check-input"
                type="checkbox"
                id="inlineCheckbox1"
                name="hobbie"
                value="option1"
              />
              <label class="form-check-label" for="inlineCheckbox1"
                >Reading</label
              >
            </div>
            <div class="form-check form-check-inline">
              <input
                class="form-check-input"
                type="checkbox"
                id="inlineCheckbox2"
                value="option2"
              />
              <label class="form-check-label" for="inlineCheckbox2"
                >Cooking</label
              >
            </div>
          </div>

          <button type="submit" class="btn btn-primary">post</button>
        </form>
      </div>
    </div>
    <script src="view/assets/vendor/jquery/jquery.min.js"></script>
    <script src="view/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="view/assets/vendor/jquery.easing/jquery.easing.min.js"></script>
    <script src="view/assets/vendor/php-email-form/validate.js"></script>
    <script src="view/assets/vendor/waypoints/jquery.waypoints.min.js"></script>
    <script src="view/assets/vendor/counterup/counterup.min.js"></script>
    <script src="view/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
    <script src="view/assets/vendor/venobox/venobox.min.js"></script>
    <script src="view/assets/vendor/owl.carousel/owl.carousel.min.js"></script>
    <script src="view/assets/vendor/typed.js/typed.min.js"></script>
    <script src="view/assets/vendor/aos/aos.js"></script>
    <script src="view/assets/js/main.js"></script>
  </body>

</html>
