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
      .inline {
        display: inline;
      }
      .inline input {
        float: right;
      }
    </style>
  </head>
  <body>
    <%@include  file="sidenav.jsp" %>
    <div id="main">
      <nav class="navbar navbar-expand-lg navbar-dark nav-bar-colors">
        <a class="navbar-brand nav-bar-colors" href="#">Chess</a>
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
        <article class="blog-post px-3 py-5 p-md-5">
          <div class="container">
            <header class="blog-post-header inline">
              <h2 class="title mb-2 inline">Chess</h2>
              <input type="button" value="Follow" class="btn btn-primary" />
              <div class="meta mb-3"></div>
            </header>
            <div class="blog-post-body">
              <figure class="blog-banner">
                <img
                  class="img-fluid"
                  src="/assets/img/chess_background.jpg"
                  alt="image"
                />
              </figure>
              <p>
                Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean
                commodo ligula eget dolor. Aenean massa. Cum sociis natoque
                penatibus et magnis dis parturient montes, nascetur ridiculus
                mus. Donec quam felis, ultricies nec, pellentesque eu, pretium
                quis, sem. Nulla consequat massa quis enim. Donec pede justo,
                fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo,
                rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum
                felis eu pede mollis pretium. Integer tincidunt. Cras dapibus.
                Vivamus elementum semper nisi. Aenean vulputate eleifend tellus.
                Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac,
                enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.
                Aenean commodo ligula eget dolor. Aenean massa. Cum sociis
                natoque penatibus et magnis dis parturient montes, nascetur
                ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu,
                pretium quis, sem. Nulla consequat massa quis enim. Donec pede
                justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim
                justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam
                dictum felis eu pede mollis pretium. Integer tincidunt. Cras
                dapibus. Vivamus elementum semper nisi. Aenean vulputate
                eleifend tellus. Aenean leo ligula, porttitor eu, consequat
                vitae, eleifend ac, enim.
              </p>
            </div>
          </div>
        </article>
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

    <script src="/assets/js/main.js"></script>
  </body>

</html>
