<%@ page import="com.hobbyHub.user.User" %>
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
  <%@include  file="sidenav.jsp" %>
    <div id="main">
      <nav class="navbar navbar-expand-lg navbar-dark nav-bar-colors mb-5">
        <a class="navbar-brand nav-bar-colors">Hobbies</a>
      </nav>
      <div class="container-fluid">
        <div class="card ml-3">
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
            <input name="Chess" type="button" onclick="window.location.assign(<%= "'" + request.getContextPath() + "/followingHobby/Chess" + "'"%>);" value="Follow" class="btn btn-primary input" />
          </div>
        </div>
        <div class="card ml-3">
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
            <input name="Reading" type="button" onclick="window.location.assign(<%= "'" + request.getContextPath() + "/followingHobby/Reading" + "'"%>);" value="Follow" class="btn btn-primary input" />
          </div>
        </div>
        <div class="card ml-3">
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
            <input name="Cooking" type="button" onclick="window.location.assign(<%= "'" + request.getContextPath() + "/followingHobby/Cooking" + "'"%>);" value="Follow" class="btn btn-primary input" />
          </div>
        </div>
        <div class="card ml-3">
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
            <input name="Writing" type="button" onclick="window.location.assign(<%= "'" + request.getContextPath() + "/followingHobby/Writing" + "'"%>);" value="Follow" class="btn btn-primary input" />
          </div>
        </div>
        <div class="card ml-3">
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
            <input name="Coding" type="button" onclick="window.location.assign(<%= "'" + request.getContextPath() + "/followingHobby/Coding" + "'"%>);" value="Follow" class="btn btn-primary input" />
          </div>
        </div>
        <div class="card ml-3">
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
            <input name="Traveling" type="button" onclick="window.location.assign(<%= "'" + request.getContextPath() + "/followingHobby/Traveling" + "'"%>);" value="Follow" class="btn btn-primary input" />
          </div>
        </div>
      </div>
    </div>

  <%!
    String getHobbyArray(User user){
      String []items = (user.getHobbies().toArray(new String[1]));
      String result = "[";
      for(int i = 0; i < items.length; i++) {
        result += "\"" + items[i] + "\"";
        if(i < items.length - 1) {
          result += ", ";
        }
      }
      result += "]";
      return result;
    }
  %>

  <%! String hobbyArray = "[]"; %>
  <script>

    var elem = document.getElementsByClassName("input");
    for (var i = 0; i < elem.length; i++) {
      elem[i].value = "Follow";
    }
    <%
        if (request.getSession().getAttribute("user_object") != null) {
            hobbyArray = getHobbyArray((User)request.getSession().getAttribute("user_object"));
            }
        else {
          System.out.println("NULL SESSION " + (request.getSession() == null));
        }
    %>


    var hobbyArray = <%=hobbyArray%>

    for (var i = 0; i < elem.length; i++) {
      if (hobbyArray.includes(elem[i].name)) {
          elem[i].classList.remove('btn-primary');
          elem[i].classList.add('btn-secondary');
          elem[i].value = "Unfollow";
      }
    }
    <% hobbyArray = "[]";%>
    hobbyArray = [];
    </script>
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
