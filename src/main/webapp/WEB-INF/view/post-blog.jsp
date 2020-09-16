
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="ca">
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
    <link id="theme-style" rel="stylesheet" href="assets/css/theme-1.css" />
    <title>HobbyHub</title>

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
  </head>
  <body>

    <%@include  file="sidenav.jsp" %>
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
              method="POST"
            action="${pageContext.request.contextPath}/add"
            onclick="checkAll()"
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
                <label for="description">Blog Description</label>
                <input
                  type="text"
                  class="form-control"
                  name="description"
                  id="description"
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
              </div>

              <div class="form-group">
                <label for="imageUrl">image Url</label>
                <input
                  type="url"
                  class="form-control"
                  name="imageUrl"
                  id="imageUrl"
                  placeholder="your blog image Url"
                  required
                />
              </div>

              <div class="form-group">
                <label class="small mb-1" for="inputState"
                  >What is your blog about?</label
                >
                <select id="inputState" class="form-control" name="hoppy">
                  <option>Coding</option>
                  <option>Reading</option>
                  <option>Chess</option>
                  <option>Traveling</option>
                  <option>Cooking</option>
                  <option>Writing</option>
                </select>
              </div>

              <button type="submit" class="btn btn-primary">post</button>
            </form>
          </div>
        </div>
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
      <!-- Vendor JS Files -->
    </html>
