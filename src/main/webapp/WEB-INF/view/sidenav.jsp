<div id="mySidenav" class="sidenav inherit">
    <ul>
        <li>
            <%

                if(session.getAttribute("user_username")!= null) {
                    out.print(String.format("<img\n" +
                            "        class=\"profile-image mb-3 rounded-circle mx-auto\"\n" +
                            "        src=\"%s\"\n" +
                            "        alt=\"profile-image\"\n" +
                            "        style=\"height: 150px\"\n" +
                            "/>" + "\n" +
                            "<a href=\"%s\">@%s</a>", session.getAttribute("user_imageUrl"),
                            request.getContextPath() + "/profile/" + session.getAttribute("user_username"), session.getAttribute("user_username")));

                } else {
                    out.print(String.format("\"<form action='%s' style='display: inline;'><button type=\"submit\" style=\"margin:1em\" class=\"btn btn-dark color3\">Login</button></form>" +
                            "<form action='%s' style='display: inline;'><button type=\"submit\" style=\"margin:1em\" class=\"btn color2\">Register</button></form>", request.getContextPath() + "/loginForm", request.getContextPath() + "/registerForm"));
                }

            %>


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

        <%
        if(session.getAttribute("user_username")!= null) {
          out.print(String.format("<li>\n" +
                  "                 <a href=\"%s\"><i class='bx bx-log-out'></i>Logout</a>\n" +
                  "               </li>", request.getContextPath() + "/logout"));
        }
        %>
        }
    </ul>
</div>