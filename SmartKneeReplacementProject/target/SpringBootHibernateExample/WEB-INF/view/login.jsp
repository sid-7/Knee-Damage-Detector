<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <meta name="description" content="">
    <title>GhutKnee</title>
    <link rel="apple-touch-icon" sizes="180x180" href="apple-touch-icon.png">
    <link rel="icon" type="image/png" href="<%=request.getContextPath()%>/adminResources/images/favicon-32x32.png" sizes="32x32">
    <link rel="icon" type="image/png" href="<%=request.getContextPath()%>/adminResources/images/favicon-16x16.png" sizes="16x16">
    <link rel="manifest" href="manifest.json">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,400i,500,700" rel="stylesheet">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/vendor.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/cosmos.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/application.min.css">
  </head>
  <body class="authentication-body">
    <div class="container-fluid">
      <div class="authentication-header m-b-30">
        <div class="clearfix">
          <div class="pull-left">
            <a class="authentication-logo" href="index.html">
              <img src="<%=request.getContextPath()%>/adminResources/images/logo.png" alt="" height="25">
              <span>GhutKnee</span>
            </a>
          </div>
          <div class="pull-right">
            <a href="register" class="btn btn-outline-info">Sign up</a>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-sm-4 col-sm-offset-4">
          <div class="authentication-content m-b-30">
            <h3 class="m-t-0 m-b-30 text-center">You look great today!</h3>
            <form action="/j_spring_security_check" method="post">
              <div class="form-group">
                <label for="form-control-1">Username</label>
                <input type="email" name="username" class="form-control" id="form-control-1" placeholder="Email">
              </div>
              <div class="form-group">
                <label for="form-control-2">Password</label>
                <input type="password" name="password" class="form-control" id="form-control-2" placeholder="Password">
              </div>
              <div class="form-group">
                <label class="custom-control custom-control-info custom-checkbox active">
                  <input class="custom-control-input" type="checkbox" name="mode" checked="checked">
                  <span class="custom-control-indicator"></span>
                  <span class="custom-control-label">Keep me signed in</span>
                </label>
                <a href="/pages-reset-password.html" class="text-info pull-right">Forgot password?</a>
              </div>
              <button type="submit" class="btn btn-info btn-block">Submit</button>
            </form>
          </div>
        </div>
      </div>
      <div class="authentication-footer">
        <span class="text-muted">Need help? Contact us help@GhutKnee.com</span>
      </div>
    </div>
    <script src="<%=request.getContextPath()%>/adminResources/js/vendor.min.js"></script>
    <script src="<%=request.getContextPath()%>/adminResources/js/cosmos.min.js"></script>
    <script src="<%=request.getContextPath()%>/adminResources/js/application.min.js"></script>
  </body>
</html>