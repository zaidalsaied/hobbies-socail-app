
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
    <!-- Design fonts -->
    <link
      href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700"
      rel="stylesheet"
    />

    <!-- Bootstrap core CSS -->
    <link href="/assets/css-2/bootstrap.css" rel="stylesheet" />

    <!-- FontAwesome Icons core CSS -->
    <link href="/assets/css-2/font-awesome.min.css" rel="stylesheet" />

    <!-- Custom styles for this template -->
    <link href="/assets/css-2/style-comment.css" rel="stylesheet" />

    <!-- Responsive styles for this template -->
    <link href="/assets/css-2/responsive.css" rel="stylesheet" />

    <!-- Colors for this template -->
    <link href="/assets/css-2/colors.css" rel="stylesheet" />

    <!-- Version Tech CSS for this template -->
    <link href="/assets/css-2/version/tech.css" rel="stylesheet" />

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
    <script>
      function check() {
        var comment = document.getElementById("comment").value;
        if (comment.trim().length < 1) {
          alert("comment can't be empty.");
          document
            .getElementById("userform")
            .addEventListener("click", preventDef());
        }
      }
      function preventDef() {
        event.preventDefault();
      }
    </script>
  </head>
  <body>
    <%@include  file="sidenav.jsp" %>
    <div id="main">
      <nav class="navbar navbar-expand-lg navbar-dark nav-bar-colors">
        <a class="navbar-brand nav-bar-colors" href="#">coding</a>
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
            <header class="blog-post-header">
              <h2 class="title mb-2">Why Every Developer Should Have A Blog</h2>
              <div class="meta mb-3">
                <span class="date">Published 3 months ago</span>
              </div>
            </header>
            <div class="blog-post-body">
              <figure class="blog-banner">
                <a href=""
                  ><img
                    class="img-fluid"
                    src="/assets/images/blog/blog-post-banner.jpg"
                    alt="image"
                /></a>
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
                enim.
              </p>
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
                enim.
              </p>
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
                enim.
              </p>
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
                enim.
              </p>
            </div>
            <div class="custombox clearfix" style="margin-top: 6em">
              <h4 class="small-title">1 Comment</h4>
              <div class="row">
                <div class="col-lg-12">
                  <div class="comments-list">
                    <div class="media">
                      <a class="media-left" href="#">
                        <img
                          src="/assets/img/coding.jpg"
                          alt=""
                          class="rounded-circle"
                        />
                      </a>
                      <div class="media-body">
                        <h4 class="media-heading user_name">
                          Amanda Martines <small>5 days ago</small>
                        </h4>
                        <p>
                          Exercitation photo booth stumptown tote bag Banksy,
                          elit small batch freegan sed. Craft beer elit seitan
                          exercitation, photo booth et 8-bit kale chips proident
                          chillwave deep v laborum. Aliquip veniam delectus,
                          Marfa eiusmod Pinterest in do umami readymade swag.
                          Selfies iPhone Kickstarter, drinking vinegar jean.
                        </p>
                      </div>
                    </div>
                  </div>
                </div>
                <!-- end col -->
              </div>
              <!-- end row -->
            </div>
            <!-- end custom-box -->
          </div>
          <form
            method="post"
            onsubmit="check()"
            id="userform"
            style="margin-top: 2em; margin-left: 1rem"
          >
            <div class="form-group">
              <label for="comment">Add comment</label>
              <textarea
                placeholder="your commnet"
                class="form-control"
                id="comment"
                name="body"
                rows="3"
                required
              ></textarea>
            </div>

            <button type="submit" class="btn btn-primary">Comment</button>
          </form>
        </article>
      </div>
    </div>
    <script src="/assets/vendor/jquery/jquery.min.js"></script>
    <script src="//vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
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
    <script src="assets/js/main.js"></script>
  </body>
  <!-- Vendor JS Files -->
</html>
