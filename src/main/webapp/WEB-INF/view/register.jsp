
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page isELIgnored="false"%>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>register</title>
    <link href="/assets/css/style2.css" rel="stylesheet" />
    <%
      if (session.getAttribute("user_username") != null) {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/about");
        requestDispatcher.forward(request, response);
      }
    %>
    <script
      src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/js/all.min.js"
      crossorigin="anonymous"
    ></script>
  </head>
  <body class="bg-primary">
    <div id="layoutAuthentication">
      <div id="layoutAuthentication_content">
        <main>
          <div class="container">
            <div class="row justify-content-center">
              <div class="col-lg-7">
                <div class="card shadow-lg border-0 rounded-lg mt-5">
                  <div class="card-header">
                    <h3 class="text-center font-weight-light my-4">
                      Create Account
                    </h3>
                  </div>
                  <div class="card-body">
                    <form method="POST" action="${pageContext.request.contextPath}/processRegister">
                      <div class="form-row">
                        <div class="col-md-6">
                          <div class="form-group">
                            <label class="small mb-1"
                              >First Name</label
                            >
                            <input
                              class="form-control py-4"
                              type="text"
                              placeholder="Enter first name"
                              name="firstName"
                              required
                            />
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="form-group">
                            <label class="small mb-1" for="inputLastName"
                              >Last Name</label
                            >
                            <input
                              class="form-control py-4"
                              id="inputLastName"
                              type="text"
                              placeholder="Enter last name"
                              name="lastName"
                              required
                            />
                          </div>
                        </div>
                          <div class="col-md-6">
                          <div class="form-group">
                            <label class="small mb-1"
                              >Username</label
                            >
                            <input
                              class="form-control py-4"
                              type="text"
                              placeholder="Enter Username(must be unique)"
                              name="username"
                              required
                            />
                          </div>
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="small mb-1" for="inputEmailAddress"
                          >Email</label
                        >
                        <input
                          class="form-control py-4"
                          id="inputEmailAddress"
                          type="email"
                          placeholder="Enter email address"
                          name="email"
                          required
                        />
                      </div>
                      <div class="form-row">
                        <div class="col-md-6">
                          <div class="form-group">
                            <label class="small mb-1" for="inputPassword"
                              >Password</label
                            >
                            <input
                              class="form-control py-4"
                              id="inputPassword"
                              type="password"
                              placeholder="Enter password"
                              name="password"
                              required
                            />
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="form-group">
                            <label class="small mb-1" for="inputConfirmPassword"
                              >Confirm Password</label
                            >
                            <input
                              class="form-control py-4"
                              id="inputConfirmPassword"
                              type="password"
                              placeholder="Confirm password"
                              name="confirmPassword"
                              required
                            />
                          </div>
                        </div>
                          
                          <div class="col-md-6">
                          <div class="form-group">
                            <label class="small mb-1" 
                              >
                              <%
                                if(request.getAttribute("registerError") == null)
                                  out.print("");
                                else
                                  out.print(request.getAttribute("registerError"));
                              %>
                              </label>
                          </div>
                        </div>
                      </div>
                      <div class="form-group mt-4 mb-0">
                        <input
                          type="submit"
                          class="btn btn-primary btn-block"
                          value="Create Account"
                        />
                      </div>
                    </form>
                  </div>
                  <div class="card-footer text-center">
                    <div class="small">
                      <a href="login.html">Have an account? Go to login</a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </main>
      </div>
    </div>
    <script
      src="https://code.jquery.com/jquery-3.5.1.min.js"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js"
      crossorigin="anonymous"
    ></script>
    <script src="/assets/js/scripts.js"></script>
  </body>
</html>
