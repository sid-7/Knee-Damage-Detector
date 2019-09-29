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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 	<style type="text/css">
.rating {
    float:left;
}

/* :not(:checked) is a filter, so that browsers that don’t support :checked don’t 
   follow these rules. Every browser that supports :checked also supports :not(), so
   it doesn’t make the test unnecessarily selective */
.rating:not(:checked) > input {
    position:absolute;
    top:-9999px;
    clip:rect(0,0,0,0);
}

.rating:not(:checked) > label {
    float:right;
    width:1em;
    padding:0 .1em;
    overflow:hidden;
    white-space:nowrap;
    cursor:pointer;
    font-size:200%;
    line-height:1.2;
    color:#ddd;
    text-shadow:1px 1px #bbb, 2px 2px #666, .1em .1em .2em rgba(0,0,0,.5);
}

.rating:not(:checked) > label:before {
    content: ' ';
}

.rating > input:checked ~ label {
    color: #f70;
    text-shadow:1px 1px #c60, 2px 2px #940, .1em .1em .2em rgba(0,0,0,.5);
}

.rating:not(:checked) > label:hover,
.rating:not(:checked) > label:hover ~ label {
    color: gold;
    text-shadow:1px 1px goldenrod, 2px 2px #B57340, .1em .1em .2em rgba(0,0,0,.5);
}

.rating > input:checked + label:hover,
.rating > input:checked + label:hover ~ label,
.rating > input:checked ~ label:hover,
.rating > input:checked ~ label:hover ~ label,
.rating > label:hover ~ input:checked ~ label {
    color: #ea0;
    text-shadow:1px 1px goldenrod, 2px 2px #B57340, .1em .1em .2em rgba(0,0,0,.5);
}

.rating > label:active {
    position:relative;
    top:2px;
    left:2px;
}


</style>

  </head>
  <body class="layout layout-header-fixed layout-left-sidebar-fixed">
  <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
  
    <div class="site-overlay"></div>
        
<!-- Header-start -->
	<jsp:include page="header.jsp"></jsp:include>
<!-- Header-end -->
	
    <div class="site-main">
      <div class="site-left-sidebar">
        <div class="sidebar-backdrop"></div>
        
<!-- Menu-start -->        
		<jsp:include page="doctorMenu.jsp"></jsp:include>
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
                  <h5>NotificatiÄÂ¾ns</h5>
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
            <h3 class="m-y-0">Post Feedback</h3>
          </div>
          <div class="panel-body">
            <div class="row">
              <div class="col-sm-8 col-sm-offset-2 col-md-6 col-md-offset-3">
              
              <!-- DOCTOR FORM -->
                <form:form data-toggle="validator" action="postRating" modelAttribute="feedbackpost" method="post">
                  
                  <div class="form-group">
                    <h5><span class="control-label">Feedback</span></h5>
                    <form:textarea path="feedback" id="form-control-2" class="form-control" rows="5" data-error="This field is required." required="required"/>
                    <form:hidden path="id"/>
                    <div class="help-block with-errors">Please Provide Your Feedback</div>
                  </div>
                  
                  <div class="rating">
					  <h5><span class="control-label">Rating</span></h5>
					  <form:radiobutton id="star5" path="rating" value="5" /><label for="star5" title="Rocks!"><span class="fa fa-star checked"></span></label>
					  <form:radiobutton id="star4" path="rating" value="4" /><label for="star4" title="Pretty good"><span class="fa fa-star checked"></span></label>
				      <form:radiobutton id="star3" path="rating" value="3" /><label for="star3" title="Meh"><span class="fa fa-star checked"></span></label>
				      <form:radiobutton id="star2" path="rating" value="2" /><label for="star2" title="Kinda bad"><span class="fa fa-star checked"></span></label>
				      <form:radiobutton id="star1" path="rating" value="1" /><label for="star1" title="Sucks big time"><span class="fa fa-star checked"></span></label>
				</div>                  
                                    
                  <button type="submit" class="btn btn-primary btn-block">Post</button>
                </form:form>
                <!-- DOCTOR FORM -->
                
              </div>
            </div>         
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
    <script type="text/javascript">
	    $('.rating input').change(function () {
	    	  var $radio = $(this);
	    	  $('.rating .selected').removeClass('selected');
	    	  $radio.closest('label').addClass('selected');
	    	});
        </script>
    
  </body>
</html>