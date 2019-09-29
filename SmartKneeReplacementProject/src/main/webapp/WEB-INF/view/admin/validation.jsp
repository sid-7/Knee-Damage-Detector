<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <meta name="description" content="">
    <title>Cosmos</title>
    <link rel="icon" type="image/png" href="<%=request.getContextPath()%>/adminResources/images/favicon-32x32.png" sizes="32x32">
    <link rel="icon" type="image/png" href="<%=request.getContextPath()%>/adminResources/images/favicon-16x16.png" sizes="16x16">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,400i,500,700" rel="stylesheet">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/vendor.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/cosmos.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/application.min.css">
  </head>
  <body class="layout layout-header-fixed layout-left-sidebar-fixed">
    <div class="site-overlay"></div>
        
<!-- Header-start -->
	<jsp:include page="header.jsp"></jsp:include>
<!-- Header-end -->
	
    <div class="site-main">
      <div class="site-left-sidebar">
        <div class="sidebar-backdrop"></div>
        
<!-- Menu-start -->        
		<jsp:include page="menu.jsp"></jsp:include>
<!-- Menu-end -->

      </div>
      <div class="site-right-sidebar">
        <div class="custom-scrollbar">
          <ul class="nav nav-tabs" role="tablist">
            <li class="active">
              <a href="#tab-chat" data-toggle="tab" role="tab">Chat</a>
            </li>
            <li class="nav-item">
              <a href="#tab-todo" data-toggle="tab" role="tab">Todo</a>
            </li>
            <li class="nav-item">
              <a href="#tab-settings" data-toggle="tab" role="tab">Settings</a>
            </li>
          </ul>
          <div class="tab-content">
            <div class="tab-pane active" id="tab-chat" role="tabpanel">
              <div class="sidebar-chat animated fadeIn">
                <ul class="media-list">
                  <li class="media">
                    <a href="#">
                      <div class="media-left">
                        <div class="avatar box-40">
                          <img class="img-circle" src="<%=request.getContextPath()%>/adminResources/images/2.jpg" alt="" width="40" height="40">
                          <span class="status top right bg-success"></span>
                        </div>
                      </div>
                      <div class="media-body">
                        <h5 class="media-heading">Jonathan Mel</h5>
                        <p class="text-muted m-b-0">How are you?</p>
                      </div>
                      <div class="media-right">
                        <span class="badge bg-danger">2</span>
                      </div>
                    </a>
                  </li>
                  <li class="media">
                    <a href="#">
                      <div class="media-left">
                        <div class="avatar box-40">
                          <img class="img-circle" src="<%=request.getContextPath()%>/adminResources/images/3.jpg" alt="" width="40" height="40">
                          <span class="status top right bg-warning"></span>
                        </div>
                      </div>
                      <div class="media-body">
                        <h5 class="media-heading">Landon Graham</h5>
                        <p class="text-muted m-b-0">Meeting at 16:00 in the conference room.</p>
                      </div>
                    </a>
                  </li>
                  <li class="media">
                    <a href="#">
                      <div class="media-left">
                        <div class="avatar box-40">
                          <img class="img-circle" src="<%=request.getContextPath()%>/adminResources/images/4.jpg" alt="" width="40" height="40">
                          <span class="status top right bg-success"></span>
                        </div>
                      </div>
                      <div class="media-body">
                        <h5 class="media-heading">Ron Carran</h5>
                        <p class="text-muted m-b-0">No problem. Thank's for reminder!</p>
                      </div>
                      <div class="media-right">
                        <span class="badge bg-danger">5</span>
                      </div>
                    </a>
                  </li>
                  <li class="media">
                    <a href="#">
                      <div class="media-left">
                        <div class="avatar box-40">
                          <img class="img-circle" src="<%=request.getContextPath()%>/adminResources/images/5.jpg" alt="" width="40" height="40">
                          <span class="status top right bg-success"></span>
                        </div>
                      </div>
                      <div class="media-body">
                        <h5 class="media-heading">Airi Satou</h5>
                        <p class="text-muted m-b-0">No problem. The only thing i need is time.</p>
                      </div>
                      <div class="media-right">
                        <span class="badge bg-danger">2</span>
                      </div>
                    </a>
                  </li>
                  <li class="media">
                    <a href="#">
                      <div class="media-left">
                        <div class="avatar box-40">
                          <img class="img-circle" src="<%=request.getContextPath()%>/adminResources/images/6.jpg" alt="" width="40" height="40">
                          <span class="status top right bg-warning"></span>
                        </div>
                      </div>
                      <div class="media-body">
                        <h5 class="media-heading">Angelica Ramos</h5>
                        <p class="text-muted m-b-0">Yep. We talked about it this morning.</p>
                      </div>
                    </a>
                  </li>
                  <li class="media">
                    <a href="#">
                      <div class="media-left">
                        <div class="avatar box-40">
                          <img class="img-circle" src="<%=request.getContextPath()%>/adminResources/images/7.jpg" alt="" width="40" height="40">
                          <span class="status top right bg-success"></span>
                        </div>
                      </div>
                      <div class="media-body">
                        <h5 class="media-heading">Ashton Cox</h5>
                        <p class="text-muted m-b-0">Can't wait for the public launch!</p>
                      </div>
                      <div class="media-right">
                        <span class="badge bg-danger">5</span>
                      </div>
                    </a>
                  </li>
                  <li class="media">
                    <a href="#">
                      <div class="media-left">
                        <div class="avatar box-40">
                          <img class="img-circle" src="<%=request.getContextPath()%>/adminResources/images/8.jpg" alt="" width="40" height="40">
                          <span class="status top right bg-success"></span>
                        </div>
                      </div>
                      <div class="media-body">
                        <h5 class="media-heading">Bradley Greer</h5>
                        <p class="text-muted m-b-0">Ok. Just let me know.</p>
                      </div>
                      <div class="media-right">
                        <span class="badge bg-danger">2</span>
                      </div>
                    </a>
                  </li>
                  <li class="media">
                    <a href="#">
                      <div class="media-left">
                        <div class="avatar box-40">
                          <img class="img-circle" src="<%=request.getContextPath()%>/adminResources/images/9.jpg" alt="" width="40" height="40">
                          <span class="status top right bg-warning"></span>
                        </div>
                      </div>
                      <div class="media-body">
                        <h5 class="media-heading">Brenden Wagner</h5>
                        <p class="text-muted m-b-0">Fantastic...</p>
                      </div>
                    </a>
                  </li>
                  <li class="media">
                    <a href="#">
                      <div class="media-left">
                        <div class="avatar box-40">
                          <img class="img-circle" src="<%=request.getContextPath()%>/adminResources/images/10.jpg" alt="" width="40" height="40">
                          <span class="status top right bg-success"></span>
                        </div>
                      </div>
                      <div class="media-body">
                        <h5 class="media-heading">Wolfe Stevie</h5>
                        <p class="text-muted m-b-0">I know. Fingers crossed!</p>
                      </div>
                      <div class="media-right">
                        <span class="badge bg-danger">5</span>
                      </div>
                    </a>
                  </li>
                </ul>
              </div>
              <div class="sidebar-chat-window animated fadeIn">
                <div class="clearfix m-b-30">
                  <div class="pull-left">
                    <a class="text-primary" href="#">
                      <i class="zmdi zmdi-chevron-left m-r-5"></i>Chat list</a>
                  </div>
                  <div class="pull-right">
                    <strong>Jonathan Mel</strong>
                  </div>
                </div>
                <div class="scw-item">
                  <span>No problem. The only thing i need is time.</span>
                </div>
                <div class="scw-item self">
                  <span>Fantastic...</span>
                </div>
                <div class="scw-item">
                  <span>I know. Fingers crossed!</span>
                </div>
                <div class="scw-item self">
                  <span>Meeting at 16:00 in the conference room.</span>
                </div>
                <div class="scw-item">
                  <span>Can't wait for the public launch!</span>
                </div>
                <div class="scw-form">
                  <form>
                    <input class="form-control" type="text" placeholder="Message...">
                    <button class="btn btn-default" type="button">
                      <i class="zmdi zmdi-chevron-right"></i>
                    </button>
                  </form>
                </div>
              </div>
            </div>
            <div class="tab-pane" id="tab-todo" role="tabpanel">
              <div class="sidebar-todo animated fadeIn">
                <div class="t-group">
                  <h5>Important</h5>
                  <div class="t-item">
                    <label class="custom-control custom-control-primary custom-checkbox">
                      <input class="custom-control-input" type="checkbox" name="mode" checked="checked">
                      <span class="custom-control-indicator"></span>
                      <span class="custom-control-label">Meet graphic designer</span>
                    </label>
                  </div>
                  <div class="t-item">
                    <label class="custom-control custom-control-primary custom-checkbox">
                      <input class="custom-control-input" type="checkbox" name="mode">
                      <span class="custom-control-indicator"></span>
                      <span class="custom-control-label">Interview</span>
                    </label>
                  </div>
                  <div class="t-item">
                    <label class="custom-control custom-control-primary custom-checkbox">
                      <input class="custom-control-input" type="checkbox" name="mode">
                      <span class="custom-control-indicator"></span>
                      <span class="custom-control-label">Press release</span>
                    </label>
                  </div>
                  <div class="t-item">
                    <label class="custom-control custom-control-primary custom-checkbox">
                      <input class="custom-control-input" type="checkbox" name="mode" checked="checked">
                      <span class="custom-control-indicator"></span>
                      <span class="custom-control-label">Call Bob</span>
                    </label>
                  </div>
                </div>
                <div class="t-group">
                  <h5>Secondary</h5>
                  <div class="t-item">
                    <label class="custom-control custom-control-primary custom-checkbox">
                      <input class="custom-control-input" type="checkbox" name="mode">
                      <span class="custom-control-indicator"></span>
                      <span class="custom-control-label">Design mock-up</span>
                    </label>
                  </div>
                  <div class="t-item">
                    <label class="custom-control custom-control-primary custom-checkbox">
                      <input class="custom-control-input" type="checkbox" name="mode">
                      <span class="custom-control-indicator"></span>
                      <span class="custom-control-label">Lunch with Marie</span>
                    </label>
                  </div>
                  <div class="t-item">
                    <label class="custom-control custom-control-primary custom-checkbox">
                      <input class="custom-control-input" type="checkbox" name="mode" checked="checked">
                      <span class="custom-control-indicator"></span>
                      <span class="custom-control-label">Copywriting</span>
                    </label>
                  </div>
                </div>
              </div>
            </div>
            <div class="tab-pane" id="tab-settings" role="tabpanel">
              <div class="sidebar-settings animated fadeIn">
                <div class="s-group">
                  <h5>Main</h5>
                  <div class="s-item">
                    <div class="text-truncate">Allow commenting</div>
                    <div class="si-checkbox">
                      <label class="switch switch-primary">
                        <input type="checkbox" name="switches" class="s-input" checked="checked">
                        <span class="s-content">
                          <span class="s-track"></span>
                          <span class="s-handle"></span>
                        </span>
                      </label>
                    </div>
                  </div>
                  <div class="s-item">
                    <div class="text-truncate">Allow editing</div>
                    <div class="si-checkbox">
                      <label class="switch switch-primary">
                        <input type="checkbox" name="switches" class="s-input">
                        <span class="s-content">
                          <span class="s-track"></span>
                          <span class="s-handle"></span>
                        </span>
                      </label>
                    </div>
                  </div>
                  <div class="s-item">
                    <div class="text-truncate">Allow copying</div>
                    <div class="si-checkbox">
                      <label class="switch switch-primary">
                        <input type="checkbox" name="switches" class="s-input">
                        <span class="s-content">
                          <span class="s-track"></span>
                          <span class="s-handle"></span>
                        </span>
                      </label>
                    </div>
                  </div>
                </div>
                <div class="s-group">
                  <h5>NotificatiĞ¾ns</h5>
                  <div class="s-item">
                    <div class="text-truncate">Comments</div>
                    <div class="si-checkbox">
                      <label class="switch switch-primary">
                        <input type="checkbox" name="switches" class="s-input">
                        <span class="s-content">
                          <span class="s-track"></span>
                          <span class="s-handle"></span>
                        </span>
                      </label>
                    </div>
                  </div>
                  <div class="s-item">
                    <div class="text-truncate">Tasks</div>
                    <div class="si-checkbox">
                      <label class="switch switch-primary">
                        <input type="checkbox" name="switches" class="s-input" checked="checked">
                        <span class="s-content">
                          <span class="s-track"></span>
                          <span class="s-handle"></span>
                        </span>
                      </label>
                    </div>
                  </div>
                </div>
                <div class="s-group">
                  <h5>Security</h5>
                  <div class="s-item">
                    <div class="text-truncate">API Access</div>
                    <div class="si-checkbox">
                      <label class="switch switch-primary">
                        <input type="checkbox" name="switches" class="s-input" checked="checked">
                        <span class="s-content">
                          <span class="s-track"></span>
                          <span class="s-handle"></span>
                        </span>
                      </label>
                    </div>
                  </div>
                  <div class="s-item">
                    <div class="text-truncate">Unlimited workspace</div>
                    <div class="si-checkbox">
                      <label class="switch switch-primary">
                        <input type="checkbox" name="switches" class="s-input">
                        <span class="s-content">
                          <span class="s-track"></span>
                          <span class="s-handle"></span>
                        </span>
                      </label>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="site-content">
        <div class="panel panel-default">
          <div class="panel-heading">
            <h3 class="m-y-0">Form validation</h3>
          </div>
          <div class="panel-body">
            <p class="text-muted m-b-15">Form validation can be enabled in markup via the data-api or via JavaScript. Automatically enable form validation by adding <code>data-toggle="validator"</code> to your form element. Features:
              <u>validation via AJAX</u>,
              <u>customizable error messages</u>,
              <u>custom validator functions</u>.</p>
            <div class="row">
              <div class="col-sm-8 col-sm-offset-2 col-md-6 col-md-offset-3">
                <form data-toggle="validator">
                  <div class="form-group">
                    <label for="form-control-1" class="control-label">Username</label>
                    <div class="input-group">
                      <span class="input-group-addon">@</span>
                      <input type="text" pattern="^[_A-z0-9]{1,}$" maxlength="15" class="form-control" id="form-control-1" placeholder="Username" data-error="This field is required." required>
                    </div>
                    <div class="help-block with-errors"></div>
                  </div>
                  <div class="form-group">
                    <label for="form-control-2" class="control-label">Email</label>
                    <input type="email" class="form-control" id="form-control-2" placeholder="Email" data-error="Please enter a valid email address." required>
                    <div class="help-block with-errors"></div>
                  </div>
                  <div class="form-group">
                    <label for="form-control-3" class="control-label">Choose counrty</label>
                    <select id="form-control-3" class="custom-select" data-error="This field is required." required>
                      <option value="" selected="selected">Choose counrty</option>
                      <option value="1">Denmark</option>
                      <option value="2">Iceland</option>
                      <option value="3">Republic of Macedonia</option>
                      <option value="4">Saint Kitts and Nevis</option>
                      <option value="5">Vanuatu</option>
                      <option value="6">Yemen</option>
                      <option value="7">Zimbabwe</option>
                    </select>
                    <div class="help-block with-errors"></div>
                  </div>
                  <div class="form-group">
                    <label for="form-control-4" class="control-label">About You</label>
                    <textarea id="form-control-4" class="form-control" rows="3" data-error="This field is required." required></textarea>
                    <div class="help-block with-errors">Write some details about yourself.</div>
                  </div>
                  <div class="form-group">
                    <label for="form-control-5" class="control-label">Password</label>
                    <div class="row">
                      <div class="col-sm-6">
                        <input type="password" class="form-control" id="form-control-5" placeholder="Password" data-minlength="6" required>
                        <div class="help-block with-errors m-b-0">Minimum of 6 characters</div>
                      </div>
                      <div class="col-sm-6">
                        <input type="password" class="form-control" id="form-control-6" data-match="#form-control-5" data-match-error="Whoops, these don't match" data-error="This field is required." placeholder="Confirm" required>
                        <div class="help-block with-errors m-b-0"></div>
                      </div>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="control-label">Choose period</label>
                    <div class="custom-controls-stacked">
                      <label class="custom-control custom-control-primary custom-radio">
                        <input class="custom-control-input" type="radio" name="period" value="day" required>
                        <span class="custom-control-indicator"></span>
                        <span class="custom-control-label">Day</span>
                      </label>
                      <label class="custom-control custom-control-primary custom-radio">
                        <input class="custom-control-input" type="radio" name="period" value="week" required>
                        <span class="custom-control-indicator"></span>
                        <span class="custom-control-label">Week</span>
                      </label>
                      <label class="custom-control custom-control-primary custom-radio">
                        <input class="custom-control-input" type="radio" name="period" value="month" required>
                        <span class="custom-control-indicator"></span>
                        <span class="custom-control-label">Month</span>
                      </label>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="control-label"></label>
                    <label class="custom-control custom-control-primary custom-checkbox active">
                      <input class="custom-control-input" type="checkbox" name="check" required>
                      <span class="custom-control-indicator"></span>
                      <span class="custom-control-label">I'm not robot</span>
                    </label>
                  </div>
                  <button type="submit" class="btn btn-primary btn-block">Submit</button>
                </form>
              </div>
            </div>
            <hr>
            <form class="form-horizontal" data-toggle="validator">
              <div class="form-group">
                <label for="form-control-7" class="col-sm-2 col-md-3 control-label">Email</label>
                <div class="col-sm-8 col-md-6">
                  <input type="email" class="form-control" id="form-control-7" placeholder="Email" required>
                </div>
              </div>
              <div class="form-group">
                <label for="form-control-8" class="col-sm-2 col-md-3 control-label">Password</label>
                <div class="col-sm-8 col-md-6">
                  <input type="password" class="form-control" id="form-control-8" placeholder="Password" required>
                </div>
              </div>
              <div class="form-group">
                <div class="col-sm-offset-2 col-sm-8 col-md-offset-3 col-md-6">
                  <label class="custom-control custom-control-primary custom-checkbox active">
                    <input class="custom-control-input" type="checkbox" name="mode" checked="checked" required>
                    <span class="custom-control-indicator"></span>
                    <span class="custom-control-label">Keep me signed in</span>
                  </label>
                </div>
              </div>
              <div class="form-group">
                <div class="col-sm-offset-2 col-sm-8 col-md-offset-3 col-md-6">
                  <button type="submit" class="btn btn-primary">Sign in</button>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
           
<!-- Footer-start -->
	  <jsp:include page="footer.jsp"></jsp:include>
<!-- Footer-end -->
 
    </div>
    <script src="<%=request.getContextPath()%>/adminResources/js/vendor.min.js"></script>
    <script src="<%=request.getContextPath()%>/adminResources/js/cosmos.min.js"></script>
    <script src="<%=request.getContextPath()%>/adminResources/js/application.min.js"></script>
  </body>
</html>