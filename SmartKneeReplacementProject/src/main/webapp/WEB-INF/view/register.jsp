<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
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
            <a href="login" class="btn btn-outline-info">Login</a>
          </div>
        </div>
      </div>
      <f:form action="/insert" modelAttribute="registerVO" method="post">
      <div class="row">
        <div class="col-sm-6 col-sm-offset-3">
          <div class="authentication-content m-b-30">
            <h3 class="m-b-30">Create Your GhutKnee Account</h3>
              <div class="form-group">
                <label for="form-control-1">Email</label>
                <f:input path="loginVO.username" type="email" class="form-control" id="form-control-1" placeholder="email@example.com"/>
              </div>
              <div class="form-group">
                <label for="form-control-2">Password</label>
                <f:input path="loginVO.password" type="password" class="form-control" id="form-control-2" placeholder=" "/>
              </div>
              <div class="form-group">
                <label for="form-control-2">Name</label>
                <f:input path="name" type="text" class="form-control" id="form-control-2" placeholder="Jon Snow"/>
              </div>
              <!-- <div class="form-group">
                <label class="switch switch-info">
                  <input type="checkbox" name="newsletter" class="s-input" checked="checked">
                  <span class="s-content">
                    <span class="s-track"></span>
                    <span class="s-handle"></span>
                  </span>
                  <span class="s-desc text-muted">Get the hottest industry content straight to your inbox.</span>
                </label>
              </div> -->
          </div>
          <div class="authentication-content m-b-30">
            <h3 class="m-b-30">Personal Information</h3>
              <div class="form-group">
                    <label class="form-control-1">Gender</label>
                    <div class="custom-controls-stacked">
                      <label class="custom-control custom-control-primary custom-radio">
                        <f:radiobutton path="gender" class="custom-control-input" name="gender" value="Male" required="required" checked="checked"/>
                        <span class="custom-control-indicator"></span>
                        <span class="custom-control-label">Male</span>
                      </label>
                      <label class="custom-control custom-control-primary custom-radio">
                        <f:radiobutton path="gender" class="custom-control-input" name="gender" value="Female" required="required"/>
                        <span class="custom-control-indicator"></span>
                        <span class="custom-control-label">Female</span>
                      </label>
                      <label class="custom-control custom-control-primary custom-radio">
                        <f:radiobutton path="gender" class="custom-control-input" name="gender" value="Other" required="required"/>
                        <span class="custom-control-indicator"></span>
                        <span class="custom-control-label">Other</span>
                      </label>
                    </div>
               </div>
               <%-- <div class="form-group">
                    <label class="col-sm-3 control-label">Gender</label>
                    <div class="col-sm-9">
                      <div class="radio">
                        <label>
                          <f:radiobutton path="gender" name="gender" value="Male" required="required" checked="checked"/> Male
                        </label>
                        <label>
                          <f:radiobutton path="gender" name="gender" value="Female" required="required"/> Female
                        </label>
                        <label>
                          <f:radiobutton path="gender" name="gender" value="Other" required="required" /> Other
                        </label>
                      </div>
                    </div>
              </div>  --%>
              <div class="form-group">
                <label for="form-control-2">Contact Number</label>
                <f:input path="mobileNumber" type="String" class="form-control" id="form-control-2" placeholder="9191000000000"/>
              </div>
              <div class="form-group">
                <label for="form-control-8">Address</label>
                <f:textarea path="address" id="form-control-8" class="form-control" rows="2"/>
               </div>
          </div>
          <div class="authentication-content m-b-30">
            <h3 class="m-b-30">Professional Information</h3>
              <div class="form-group">
                <label for="form-control-1">Qualification</label>
                <f:input path="qualification" type="text" class="form-control" id="form-control-1" required="required"/>
              </div>
              <div class="form-group">
                <label for="form-control-2">Practice Number</label>
                <f:input path="practiceNumber" type="text" class="form-control" id="form-control-2" required="required"/>
              </div>
              <div class="form-group">
                <label for="form-control-2">Clinic Name</label>
                <f:input path="clinicName" type="text" class="form-control" id="form-control-2" placeholder="Jon Snow" required="required"/>
              </div>
              <div class="form-group">
                <label for="form-control-8">Clinic Address</label>
                <f:textarea path="clinicAddress" id="form-control-8" class="form-control" rows="2"/>
               </div>
              <div class="clearfix">
                <div class="pull-left">
                  By clicking "Next" you agree to GhutKnee's terms and conditions
                  <br><a href="#" class="text-info">Terms of Service</a> and <a href="#" class="text-info">Privacy Policy</a>
                </div>
                <div class="pull-right">
                  <button type="submit" class="btn btn-info btn-labeled">Submit
                    <span class="btn-label btn-label-right">
                      <i class="zmdi zmdi-chevron-right p-x-5"></i>
                    </span>
                  </button>
                </div>                
              </div>
          </div>
        </div>
      </div>
      </f:form>
      <div class="authentication-footer">
        <span class="text-muted">Need help? Contact us help@GhutKnee.com</span>
      </div>
    </div>
    <script src="<%=request.getContextPath()%>/adminResources/js/vendor.min.js"></script>
    <script src="<%=request.getContextPath()%>/adminResources/js/cosmos.min.js"></script>
    <script src="<%=request.getContextPath()%>/adminResources/js/application.min.js"></script>
  </body>
</html>