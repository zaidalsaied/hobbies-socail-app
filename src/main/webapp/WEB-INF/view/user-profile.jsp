<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <link rel="stylesheet" type="text/css" href="view/assets/css/user-profile.css" />
    <link
      href="view/assets/vendor/bootstrap/css/bootstrap.min.css"
      rel="stylesheet"
    />

    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="Blog Template" />
    <meta name="author" content="Xiaoying Riley at 3rd Wave Media" />
    <link rel="shortcut icon" href="favicon.ico" />
    <link
      href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
      rel="stylesheet"
    />
    <!-- FontAwesome JS-->
    <script
      defer
      src="https://use.fontawesome.com/releases/v5.7.1/js/all.js"
      integrity="sha384-eVEQC9zshBn0rFj4+TU78eNA19HMNigMviK/PU/FFjLXqa/GKPgX58rvt5Z8PLs7"
      crossorigin="anonymous"
    ></script>

    <!-- Theme CSS -->
    <link id="theme-style" rel="stylesheet" href="view/assets/css/theme-1.css" />

    <title>HobbyHub</title>

    <!-- Google Fonts -->

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

    <!-- My Main CSS File -->
    <link href="view/assets/css/style.css" rel="stylesheet" />
    <style>
      .card {
        margin-top: 2rem;
        margin-bottom: 4rem;
        width: 60%;
        height: 100%;
        margin-left: 10rem;

        text-align: center;
      }
      .card img {
        margin-top: 1rem;
        margin-bottom: 0;
        width: 60%;
        height: 20%;

        align-self: center;
      }
      .card-title {
        margin-top: 0;
      }
      .inline {
        display: inline-block;
      }
    </style>
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
          <a href="#portfolio"><i class="bx bx-chat"></i>Chat</a>
        </li>
        <li>
          <a href="#services"><i class="bx bx-info-circle"></i>About</a>
        </li>
      </ul>
    </div>

    <!-- Add all page content inside this div if you want the side nav to push page content to the right (not used if you only want the sidenav to sit on top of the page -->
    <div id="main">
      <div class="container">
        <section class="section about-section gray-bg" id="about">
          <div class="container">
            <div class="row align-items-center flex-row-reverse">
              <div class="col-lg-6"></div>
              <div class="col-lg-6">
                <div class="about-avatar">
                  <img
                    class="profile-image mb-3 rounded-circle mx-auto"
                    src="view/assets/images/profile.png"
                    title=""
                    alt=""
                  />
                </div>
              </div>
            </div>
            <div class="counter">
              <div class="row">
                <div class="col-6 col-lg-3">
                  <div class="count-data text-center">
                    <h6 class="count h2" data-to="500" data-speed="500">500</h6>
                    <p class="m-0px font-w-600">Posts</p>
                  </div>
                </div>
                <div class="col-6 col-lg-3">
                  <div class="count-data text-center">
                    <h6 class="count h2" data-to="150" data-speed="150">150</h6>
                    <p class="m-0px font-w-600">Followers</p>
                  </div>
                </div>
                <div class="col-6 col-lg-3">
                  <div class="count-data text-center">
                    <h6 class="count h2" data-to="850" data-speed="850">850</h6>
                    <p class="m-0px font-w-600">Following</p>
                  </div>
                </div>
                <div class="col-6 col-lg-3">
                  <div class="count-data text-center">
                    <button class="btn btn-primary">Follow</button>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>
        <div class="container-fluid">
          <section class="blog-list">
            <div class="container">
              <div class="item mb-5">
                <div class="media">
                  <img
                    class="mr-3 img-fluid post-thumb d-none d-md-flex"
                    src="view/assets/images/blog/blog-post-thumb-1.jpg"
                    alt="image"
                  />
                  <div class="media-body">
                    <h3 class="title mb-1">
                      <a href="blog-post.html"
                        >Why Every Developer Should Have A Blog</a
                      >
                    </h3>
                    <div class="meta mb-1">
                      <span class="date">Published 2 days ago</span
                      ><span class="time">5 min read</span
                      ><span class="comment"><a href="#">8 comments</a></span>
                    </div>
                    <div class="intro">
                      Lorem ipsum dolor sit amet, consectetuer adipiscing elit.
                      Aenean commodo ligula eget dolor. Aenean massa. Cum sociis
                      natoque penatibus et magnis dis parturient montes,
                      nascetur ridiculus mus. Donec quam felis, ultricies...
                    </div>
                    <a class="more-link" href="blog-post.html"
                      >Read more &rarr;</a
                    >
                  </div>
                  <!--//media-body-->
                </div>
                <!--//media-->
              </div>
              <!--//item-->
              <div class="item mb-5">
                <div class="media">
                  <img
                    class="mr-3 img-fluid post-thumb d-none d-md-flex"
                    src="view/assets/images/blog/blog-post-thumb-2.jpg"
                    alt="image"
                  />
                  <div class="media-body">
                    <h3 class="title mb-1">
                      <a href="blog-post.html"
                        >A Guide to Becoming a Full-Stack Developer</a
                      >
                    </h3>
                    <div class="meta mb-1">
                      <span class="date">Published 3 months ago</span
                      ><span class="time">3 min read</span
                      ><span class="comment"><a href="#">26 comments</a></span>
                    </div>
                    <div class="intro">
                      Lorem ipsum dolor sit amet, consectetuer adipiscing elit.
                      Aenean commodo ligula eget dolor. Aenean massa. Cum sociis
                      natoque penatibus et magnis dis parturient montes,
                      nascetur ridiculus mus. Donec quam felis, ultricies...
                    </div>
                    <a class="more-link" href="blog-post.html"
                      >Read more &rarr;</a
                    >
                  </div>
                  <!--//media-body-->
                </div>
                <!--//media-->
              </div>
              <!--//item-->

              <div class="item mb-5">
                <div class="media">
                  <img
                    class="mr-3 img-fluid post-thumb d-none d-md-flex"
                    src="view/assets/images/blog/blog-post-thumb-3.jpg"
                    alt="image"
                  />
                  <div class="media-body">
                    <h3 class="title mb-1">
                      <a href="blog-post.html">High Performance JavaScript</a>
                    </h3>
                    <div class="meta mb-1">
                      <span class="date">Published 1 month ago</span
                      ><span class="time">8 min read</span
                      ><span class="comment"><a href="#">12 comments</a></span>
                    </div>
                    <div class="intro">
                      Lorem ipsum dolor sit amet, consectetuer adipiscing elit.
                      Aenean commodo ligula eget dolor. Aenean massa. Cum sociis
                      natoque penatibus et magnis dis parturient montes,
                      nascetur ridiculus mus. Donec quam felis, ultricies...
                    </div>
                    <a class="more-link" href="blog-post.html"
                      >Read more &rarr;</a
                    >
                  </div>
                  <!--//media-body-->
                </div>
                <!--//media-->
              </div>
              <!--//item-->
              <div class="item mb-5">
                <div class="media">
                  <img
                    class="mr-3 img-fluid post-thumb d-none d-md-flex"
                    src="view/assets/images/blog/blog-post-thumb-4.jpg"
                    alt="image"
                  />
                  <div class="media-body">
                    <h3 class="title mb-1">
                      <a href="blog-post.html">Top 5 JavaScript Frameworks</a>
                    </h3>
                    <div class="meta mb-1">
                      <span class="date">Published 2 months ago</span
                      ><span class="time">15 min read</span
                      ><span class="comment"><a href="#">3 comments</a></span>
                    </div>
                    <div class="intro">
                      Lorem ipsum dolor sit amet, consectetuer adipiscing elit.
                      Aenean commodo ligula eget dolor. Aenean massa. Cum sociis
                      natoque penatibus et magnis dis parturient montes,
                      nascetur ridiculus mus. Donec quam felis, ultricies...
                    </div>
                    <a class="more-link" href="blog-post.html"
                      >Read more &rarr;</a
                    >
                  </div>
                  <!--//media-body-->
                </div>
                <!--//media-->
              </div>
              <!--//item-->

              <div class="item mb-5">
                <div class="media">
                  <img
                    class="mr-3 img-fluid post-thumb d-none d-md-flex"
                    src="view/assets/images/blog/blog-post-thumb-5.jpg"
                    alt="image"
                  />
                  <div class="media-body">
                    <h3 class="title mb-1">
                      <a href="blog-post.html">Learn React in 24 Hours</a>
                    </h3>
                    <div class="meta mb-1">
                      <span class="date">Published 2 months ago</span
                      ><span class="time">10 min read</span
                      ><span class="comment"><a href="#">23 comments</a></span>
                    </div>
                    <div class="intro">
                      Lorem ipsum dolor sit amet, consectetuer adipiscing elit.
                      Aenean commodo ligula eget dolor. Aenean massa. Cum sociis
                      natoque penatibus et magnis dis parturient montes,
                      nascetur ridiculus mus. Donec quam felis, ultricies...
                    </div>
                    <a class="more-link" href="blog-post.html"
                      >Read more &rarr;</a
                    >
                  </div>
                  <!--//media-body-->
                </div>
                <!--//media-->
              </div>
              <!--//item-->

              <div class="item">
                <div class="media">
                  <img
                    class="mr-3 img-fluid post-thumb d-none d-md-flex"
                    src="view/assets/images/blog/blog-post-thumb-6.jpg"
                    alt="image"
                  />
                  <div class="media-body">
                    <h3 class="title mb-1">
                      <a href="blog-post.html">About Remote Working</a>
                    </h3>
                    <div class="meta mb-1">
                      <span class="date">Published 3 months ago</span
                      ><span class="time">2 min read</span
                      ><span class="comment"><a href="#">1 comment</a></span>
                    </div>
                    <div class="intro">
                      Lorem ipsum dolor sit amet, consectetuer adipiscing elit.
                      Aenean commodo ligula eget dolor. Aenean massa. Cum sociis
                      natoque penatibus et magnis dis parturient montes,
                      nascetur ridiculus mus. Donec quam felis, ultricies...
                    </div>
                    <a class="more-link" href="blog-post.html"
                      >Read more &rarr;</a
                    >
                  </div>
                  <!--//media-body-->
                </div>
                <!--//media-->
              </div>
              <!--//item-->

              <nav class="blog-nav nav nav-justified my-5">
                <a
                  class="nav-link-prev nav-item nav-link d-none rounded-left"
                  href="#"
                  >Previous<i class="arrow-prev fas fa-long-arrow-alt-left"></i
                ></a>
              </nav>
            </div>
          </section>
        </div>
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

    <!-- My Main JS File -->
    <script src="view/assets/js/main.js"></script>
  </body>

  <!-- Vendor JS Files -->
</html>
