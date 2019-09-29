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
        
         
        <!-- menu-start -->
         <jsp:include page="menu.jsp"></jsp:include>
        <!-- menu-end -->
        
        
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
                  <h5>Notifications</h5>
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
        <div class="row">
          <div class="col-sm-6">
            <div class="widget-infoblock wi-large m-b-30" style="background-image: url(<%=request.getContextPath()%>/adminResources/images/RocGraph.png)">
              <div class="wi-bg bg-success"></div>
              <a href="<%=request.getContextPath()%>/adminResources/images/RocGraph.png">
              	<div class="wi-content-bottom p-a-30">
                  <div class="wi-title m-b-30">Multiclass ROC Curve</div>
                  <div class="wi-text">Performance of a classification model at all classification thresholds.</div>
                </div>
              </a>
            </div>
          </div>
          <div class="col-sm-6">
            <div class="row">
              <div class="col-sm-6">
                <div class="widget-infoblock wi-small m-b-30" style="background-image: url(<%=request.getContextPath()%>/adminResources/images/RocClass1.png)">
                  <div class="wi-bg"></div>
                  <a href="<%=request.getContextPath()%>/adminResources/images/RocClass1.png">
                  <div class="wi-content-bottom p-a-30">
                    <div class="wi-title">KL Grade 1</div>
                    <div class="wi-stat">
                  </div>
                </div>
                </a>
               </div>
              </div>
              <div class="col-sm-6">
                <div class="widget-infoblock wi-small m-b-30" style="background-image: url(<%=request.getContextPath()%>/adminResources/images/RocClass2.png)">
                  <div class="wi-bg"></div>
                  <a href="<%=request.getContextPath()%>/adminResources/images/RocClass2.png">
                  <div class="wi-content-bottom p-a-30">
                    <div class="wi-title">KL Grade 2</div>
                    <div class="wi-stat">
                  </div>
                </div>
                </a>
               </div>
              </div>
              <div class="col-sm-6">
                <div class="widget-infoblock wi-small m-b-30" style="background-image: url(<%=request.getContextPath()%>/adminResources/images/RocClass3.png)">
                  <div class="wi-bg"></div>
                  <a href="<%=request.getContextPath()%>/adminResources/images/RocClass3.png">
                  <div class="wi-content-bottom p-a-30">
                    <div class="wi-title">KL Grade 3</div>
                    <div class="wi-stat">
                  </div>
                </div>
                </a>
               </div>
              </div>
              <div class="col-sm-6">
                <div class="widget-infoblock wi-small m-b-30" style="background-image: url(<%=request.getContextPath()%>/adminResources/images/RocClass4.png)">
                  <div class="wi-bg"></div>
                  <a href="<%=request.getContextPath()%>/adminResources/images/RocClass4.png">
                  <div class="wi-content-bottom p-a-30">
                    <div class="wi-title">KL Grade 4</div>
                    <div class="wi-stat">
                  </div>
                </div>
                </a>
               </div>
              </div>
              <%-- <div class="col-sm-6">
                <div class="widget-infoblock wi-small m-b-30" style="background-image: url(<%=request.getContextPath()%>/adminResources/images/RocClass2.png)">
                  <div class="wi-bg"></div>
                  <div class="wi-content-top p-a-15">
                    <div class="wi-icon">
                      <i class="zmdi zmdi-cloud-outline-alt text-danger"></i>
                    </div>
                    <div class="wi-number">47%</div>
                    <div class="wi-text">Memory usage</div>
                  </div>
                  <div class="wi-content-bottom">
                    <canvas id="infoblock-chart-1"></canvas>
                  </div>
                </div>
              </div>  --%>
            </div>
            <%-- <div class="row">
              <div class="col-sm-6">
                <div class="widget-infoblock wi-small m-b-30" style="background-image: url(<%=request.getContextPath()%>/adminResources/images/RocClass3.png)">
                  <div class="wi-bg bg-info"></div>
                  <div class="wi-content-top p-a-15">
                    <div class="wi-tools pull-right">
                      <a href="#">
                        <i class="zmdi zmdi-refresh"></i>
                      </a>
                      <a href="#">
                        <i class="zmdi zmdi-close"></i>
                      </a>
                    </div>
                    <div class="wi-icon">
                      <i class="zmdi zmdi-swap-alt text-info"></i>
                    </div>
                    <div class="wi-number">$ 47,855</div>
                    <div class="wi-text">Revenue</div>
                  </div>
                  <div class="wi-content-bottom">
                    <canvas id="infoblock-chart-2"></canvas>
                  </div>
                </div>
              </div>
              <div class="col-sm-6">
                <div class="widget-infoblock wi-small m-b-30" style="background-image: url(<%=request.getContextPath()%>/adminResources/images/RocClass4.png)">
                  <div class="wi-bg"></div>
                  <div class="wi-content-bottom p-a-30">
                    <div class="wi-title">Bounce rate</div>
                    <div class="wi-stat">
                      <span class="m-r-10">
                        <i class="zmdi zmdi-caret-down text-danger"></i>
                      </span> -85%</div>
                    <div class="wi-text">Updated: 09:26 AM</div>
                  </div>
                </div>
              </div>
            </div> --%>
          </div>
        </div>
        <div class="panel panel-default panel-table">
<!--           <div class="panel-heading"> -->
<!--             <div class="panel-tools"> -->
<!--               <a href="#" class="tools-icon"> -->
<!--                 <i class="zmdi zmdi-refresh"></i> -->
<!--               </a> -->
<!--               <a href="#" class="tools-icon"> -->
<!--                 <i class="zmdi zmdi-close"></i> -->
<!--               </a> -->
<!--             </div> -->
<!--             <h3 class="panel-title">Conversions map</h3> -->
<!--             <div class="panel-subtitle">1 Feb 2019 - 17 Jul 2019</div> -->
<!--           </div> -->
<!--           <div class="panel-body"> -->
<!--             <div class="row"> -->
<!--               <div class="col-sm-8"> -->
<!--                 <div id="vector-map" style="height: 350px; width: 100%"></div> -->
<!--               </div> -->
<!--               <div class="col-sm-4"> -->
<!--                 <div class="switches-stacked m-b-30"> -->
<!--                   <label class="switch switch-primary m-b-15"> -->
<!--                     <input type="checkbox" name="newsletter" class="s-input" checked="checked"> -->
<!--                     <span class="s-content"> -->
<!--                       <span class="s-track"></span> -->
<!--                       <span class="s-handle"></span> -->
<!--                     </span> -->
<!--                     <span class="s-desc text-muted">Mobiles</span> -->
<!--                   </label> -->
<!--                   <label class="switch switch-primary"> -->
<!--                     <input type="checkbox" name="newsletter" class="s-input"> -->
<!--                     <span class="s-content"> -->
<!--                       <span class="s-track"></span> -->
<!--                       <span class="s-handle"></span> -->
<!--                     </span> -->
<!--                     <span class="s-desc text-muted">Desktop</span> -->
<!--                   </label> -->
<!--                 </div> -->
<!--                 <p>Google AdWords -->
<!--                   <span class="pull-right text-muted">80%</span> -->
<!--                 </p> -->
<!--                 <div class="progress progress-xs m-b-20"> -->
<!--                   <div class="progress-bar" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%"> -->
<!--                     <span class="sr-only">80% Complete (success)</span> -->
<!--                   </div> -->
<!--                 </div> -->
<!--                 <p>Facebook -->
<!--                   <span class="pull-right text-muted">57%</span> -->
<!--                 </p> -->
<!--                 <div class="progress progress-xs m-b-20"> -->
<!--                   <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="57" aria-valuemin="0" aria-valuemax="100" style="width: 57%"> -->
<!--                     <span class="sr-only">57% Complete (success)</span> -->
<!--                   </div> -->
<!--                 </div> -->
<!--                 <p>SEO -->
<!--                   <span class="pull-right text-muted">60%</span> -->
<!--                 </p> -->
<!--                 <div class="progress progress-xs m-b-20"> -->
<!--                   <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%"> -->
<!--                     <span class="sr-only">60% Complete (success)</span> -->
<!--                   </div> -->
<!--                 </div> -->
<!--                 <p>Instagram -->
<!--                   <span class="pull-right text-muted">23%</span> -->
<!--                 </p> -->
<!--                 <div class="progress progress-xs m-b-20"> -->
<!--                   <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="23" aria-valuemin="0" aria-valuemax="100" style="width: 23%"> -->
<!--                     <span class="sr-only">23% Complete (success)</span> -->
<!--                   </div> -->
<!--                 </div> -->
<!--                 <button type="button" class="btn btn-outline-primary btn-block">Details</button> -->
<!--               </div> -->
<!--             </div> -->
<!--           </div> -->
        </div>
        <%-- <div class="row">
          <div class="col-md-4">
            <div class="panel panel-default panel-table">
              <div class="panel-heading">
                <div class="panel-tools">
                  <a href="#" class="tools-icon">
                    <i class="zmdi zmdi-refresh"></i>
                  </a>
                  <a href="#" class="tools-icon">
                    <i class="zmdi zmdi-close"></i>
                  </a>
                </div>
                <h3 class="panel-title">Top doctors</h3>
                <div class="panel-subtitle">30 Jan 2019 - 17 Feb 2019</div>
              </div>
              <div class="table-responsive">
                <table class="table table-borderless">
                  <tbody>
                    <tr>
                      <td>
                        <img class="img-circle" src="<%=request.getContextPath()%>/adminResources/images/1.jpg" alt="" width="32" height="32">
                      </td>
                      <td>
                        Jonathan Mel
                        <br>
                        <small class="text-muted">
                          <span class="flag-icon flag-icon-us"></span> USA</small>
                      </td>
                      <td>
                        <div class="text-warning">
                          <i class="zmdi zmdi-star"></i>
                          <i class="zmdi zmdi-star"></i>
                          <i class="zmdi zmdi-star"></i>
                          <i class="zmdi zmdi-star"></i>
                          <i class="zmdi zmdi-star"></i>
                        </div>
                      </td>
                      <td class="actions text-center">
                        <a href="#">
                          <i class="zmdi zmdi-more"></i>
                        </a>
                      </td>
                    </tr>
                    <tr>
                      <td>
                        <img class="img-circle" src="<%=request.getContextPath()%>/adminResources/images/2.jpg" alt="" width="32" height="32">
                      </td>
                      <td>
                        Landon Graham
                        <br>
                        <small class="text-muted">
                          <span class="flag-icon flag-icon-no"></span> Norway</small>
                      </td>
                      <td>
                        <div class="text-warning">
                          <i class="zmdi zmdi-star"></i>
                          <i class="zmdi zmdi-star"></i>
                          <i class="zmdi zmdi-star"></i>
                          <i class="zmdi zmdi-star"></i>
                          <i class="zmdi zmdi-star"></i>
                        </div>
                      </td>
                      <td class="actions text-center">
                        <a href="#">
                          <i class="zmdi zmdi-more"></i>
                        </a>
                      </td>
                    </tr>
                    <tr>
                      <td>
                        <img class="img-circle" src="<%=request.getContextPath()%>/adminResources/images/3.jpg" alt="" width="32" height="32">
                      </td>
                      <td>
                        Ron Carran
                        <br>
                        <small class="text-muted">
                          <span class="flag-icon flag-icon-fr"></span> France</small>
                      </td>
                      <td>
                        <div class="text-warning">
                          <i class="zmdi zmdi-star"></i>
                          <i class="zmdi zmdi-star"></i>
                          <i class="zmdi zmdi-star"></i>
                          <i class="zmdi zmdi-star"></i>
                          <i class="zmdi zmdi-star-outline"></i>
                        </div>
                      </td>
                      <td class="actions text-center">
                        <a href="#">
                          <i class="zmdi zmdi-more"></i>
                        </a>
                      </td>
                    </tr>
                    <tr>
                      <td>
                        <img class="img-circle" src="<%=request.getContextPath()%>/adminResources/images/4.jpg" alt="" width="32" height="32">
                      </td>
                      <td>
                        Lucius Skyler
                        <br>
                        <small class="text-muted">
                          <span class="flag-icon flag-icon-de"></span> Germany</small>
                      </td>
                      <td>
                        <div class="text-warning">
                          <i class="zmdi zmdi-star"></i>
                          <i class="zmdi zmdi-star"></i>
                          <i class="zmdi zmdi-star"></i>
                          <i class="zmdi zmdi-star-outline"></i>
                          <i class="zmdi zmdi-star-outline"></i>
                        </div>
                      </td>
                      <td class="actions text-center">
                        <a href="#">
                          <i class="zmdi zmdi-more"></i>
                        </a>
                      </td>
                    </tr>
                    <tr>
                      <td>
                        <img class="img-circle" src="<%=request.getContextPath()%>/adminResources/images/5.jpg" alt="" width="32" height="32">
                      </td>
                      <td>
                        Vance Osborn
                        <br>
                        <small class="text-muted">
                          <span class="flag-icon flag-icon-pl"></span> Poland</small>
                      </td>
                      <td>
                        <div class="text-warning">
                          <i class="zmdi zmdi-star"></i>
                          <i class="zmdi zmdi-star"></i>
                          <i class="zmdi zmdi-star"></i>
                          <i class="zmdi zmdi-star-outline"></i>
                          <i class="zmdi zmdi-star-outline"></i>
                        </div>
                      </td>
                      <td class="actions text-center">
                        <a href="#">
                          <i class="zmdi zmdi-more"></i>
                        </a>
                      </td>
                    </tr>
                    <tr>
                      <td>
                        <img class="img-circle" src="<%=request.getContextPath()%>/adminResources/images/6.jpg" alt="" width="32" height="32">
                      </td>
                      <td>
                        Angelica Ramos
                        <br>
                        <small class="text-muted">
                          <span class="flag-icon flag-icon-ru"></span> Russia</small>
                      </td>
                      <td>
                        <div class="text-warning">
                          <i class="zmdi zmdi-star"></i>
                          <i class="zmdi zmdi-star"></i>
                          <i class="zmdi zmdi-star"></i>
                          <i class="zmdi zmdi-star-outline"></i>
                          <i class="zmdi zmdi-star-outline"></i>
                        </div>
                      </td>
                      <td class="actions text-center">
                        <a href="#">
                          <i class="zmdi zmdi-more"></i>
                        </a>
                      </td>
                    </tr>
                    <tr>
                      <td>
                        <img class="img-circle" src="<%=request.getContextPath()%>/adminResources/images/7.jpg" alt="" width="32" height="32">
                      </td>
                      <td>
                        Brenden Wagner
                        <br>
                        <small class="text-muted">
                          <span class="flag-icon flag-icon-au"></span> Australia</small>
                      </td>
                      <td>
                        <div class="text-warning">
                          <i class="zmdi zmdi-star"></i>
                          <i class="zmdi zmdi-star"></i>
                          <i class="zmdi zmdi-star"></i>
                          <i class="zmdi zmdi-star-outline"></i>
                          <i class="zmdi zmdi-star-outline"></i>
                        </div>
                      </td>
                      <td class="actions text-center">
                        <a href="#">
                          <i class="zmdi zmdi-more"></i>
                        </a>
                      </td>
                    </tr>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
          <div class="col-md-4">
            <div class="panel panel-default">
              <div class="panel-heading">
                <div class="panel-tools">
                  <a href="#" class="tools-icon">
                    <i class="zmdi zmdi-refresh"></i>
                  </a>
                  <a href="#" class="tools-icon">
                    <i class="zmdi zmdi-close"></i>
                  </a>
                </div>
                <h3 class="panel-title">Top Activity</h3>
<!--                 <div class="panel-subtitle">Lorem ipsum dolor sit amet</div> -->
              </div>
              <div class="panel-body">
                <div id="donut" style="height: 215px"></div>
              </div>
              <table class="table">
                <tbody>
                  <tr>
                    <td>
                      <i class="zmdi zmdi-circle text-primary"></i>
                    </td>
                    <td>Android</td>
                    <td>34</td>
                    <td class="text-center">
                      <i class="zmdi zmdi-arrow-left-bottom"></i>
                    </td>
                    <td class="text-right">
                      <div class="btn-group">
                        <button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          Action
                          <span class="caret"></span>
                        </button>
                        <ul class="dropdown-menu dropdown-menu-right">
                          <li><a href="#">Action</a></li>
                          <li><a href="#">Another action</a></li>
                          <li><a href="#">Something else here</a></li>
                          <li role="separator" class="divider"></li>
                          <li><a href="#">Separated link</a></li>
                        </ul>
                      </div>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <i class="zmdi zmdi-circle text-warning"></i>
                    </td>
                    <td>iOS</td>
                    <td>67</td>
                    <td class="text-center">
                      <i class="zmdi zmdi-arrow-right-top"></i>
                    </td>
                    <td class="text-right">
                      <div class="btn-group">
                        <button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          Action
                          <span class="caret"></span>
                        </button>
                        <ul class="dropdown-menu dropdown-menu-right">
                          <li><a href="#">Action</a></li>
                          <li><a href="#">Another action</a></li>
                          <li><a href="#">Something else here</a></li>
                          <li role="separator" class="divider"></li>
                          <li><a href="#">Separated link</a></li>
                        </ul>
                      </div>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <i class="zmdi zmdi-circle text-danger"></i>
                    </td>
                    <td>Windows</td>
                    <td>45</td>
                    <td class="text-center">
                      <i class="zmdi zmdi-arrow-left-bottom"></i>
                    </td>
                    <td class="text-right">
                      <div class="btn-group">
                        <button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          Action
                          <span class="caret"></span>
                        </button>
                        <ul class="dropdown-menu dropdown-menu-right">
                          <li><a href="#">Action</a></li>
                          <li><a href="#">Another action</a></li>
                          <li><a href="#">Something else here</a></li>
                          <li role="separator" class="divider"></li>
                          <li><a href="#">Separated link</a></li>
                        </ul>
                      </div>
                    </td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
          <div class="col-md-4">
            <div class="panel panel-default panel-table">
              <div class="panel-heading">
                <div class="panel-tools">
                  <a href="#" class="tools-icon">
                    <i class="zmdi zmdi-refresh"></i>
                  </a>
                  <a href="#" class="tools-icon">
                    <i class="zmdi zmdi-close"></i>
                  </a>
                </div>
                <h3 class="panel-title">Downloads</h3>
                <div class="panel-subtitle">+17 today</div>
              </div>
              <div class="panel-body">
                <div class="text-center m-b-30">
                  <div class="btn-group btn-group-sm" data-toggle="buttons">
                    <label class="btn btn-default active">
                      <input type="radio" name="buttonRadios" id="buttonRadios1" autocomplete="off" checked="checked"> Plugins
                    </label>
                    <label class="btn btn-default">
                      <input type="radio" name="buttonRadios" id="buttonRadios2" autocomplete="off"> Modules
                    </label>
                  </div>
                </div>
                <div id="chart-bar" style="height: 290px"></div>
              </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-8">
            <div class="panel panel-default panel-table">
              <div class="panel-heading">
                <div class="panel-tools">
                  <a href="#" class="tools-icon">
                    <i class="zmdi zmdi-refresh"></i>
                  </a>
                  <a href="#" class="tools-icon">
                    <i class="zmdi zmdi-close"></i>
                  </a>
                </div>
                <h3 class="panel-title">Activity statistics</h3>
                <div class="panel-subtitle">30 Jan 2019 - 17 Feb 2019</div>
              </div>
              <div class="table-responsive">
                <table class="table table-hover">
                  <thead>
                    <tr>
                      <th style="width: 32px"></th>
                      <th>Name</th>
                      <th>Date</th>
                      <th>Country</th>
                      <th>Sales</th>
                      <th style="width: 15%">Progress</th>
                      <th>Status</th>
                      <th style="width: 32px">Access</th>
                      <th style="width: 5%"></th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td>
                        <img class="img-circle" src="<%=request.getContextPath()%>/adminResources/images/1.jpg" alt="" width="32" height="32">
                      </td>
                      <td>Jonathan Mel</td>
                      <td>
                        April 6, 2019
                        <br>
                        <small class="text-muted">8:30</small>
                      </td>
                      <td>
                        <span class="flag-icon flag-icon-us"></span>
                      </td>
                      <td>98</td>
                      <td>
                        <small class="text-muted">5/10</small>
                        <div class="progress progress-xs m-b-0">
                          <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                            <span class="sr-only">60% Complete (success)</span>
                          </div>
                        </div>
                      </td>
                      <td>
                        <span class="label label-outline-success">Active</span>
                      </td>
                      <td>
                        <label class="switch switch-primary m-t-10">
                          <input type="checkbox" name="newsletter" class="s-input">
                          <span class="s-content">
                            <span class="s-track"></span>
                            <span class="s-handle"></span>
                          </span>
                        </label>
                      </td>
                      <td>
                        <div class="btn-group">
                          <button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Action
                            <span class="caret"></span>
                          </button>
                          <ul class="dropdown-menu dropdown-menu-right">
                            <li><a href="#">Action</a></li>
                            <li><a href="#">Another action</a></li>
                            <li><a href="#">Something else here</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="#">Separated link</a></li>
                          </ul>
                        </div>
                      </td>
                    </tr>
                    <tr>
                      <td>
                        <img class="img-circle" src="<%=request.getContextPath()%>/adminResources/images/2.jpg" alt="" width="32" height="32">
                      </td>
                      <td>Landon Graham</td>
                      <td>
                        March 31, 2019
                        <br>
                        <small class="text-muted">2:25</small>
                      </td>
                      <td>
                        <span class="flag-icon flag-icon-gb"></span>
                      </td>
                      <td>105</td>
                      <td>
                        <small class="text-muted">8/10</small>
                        <div class="progress progress-xs m-b-0">
                          <div class="progress-bar" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                            <span class="sr-only">80% Complete (success)</span>
                          </div>
                        </div>
                      </td>
                      <td>
                        <span class="label label-outline-info">In process</span>
                      </td>
                      <td>
                        <label class="switch switch-primary m-t-10">
                          <input type="checkbox" name="newsletter" class="s-input" checked="checked">
                          <span class="s-content">
                            <span class="s-track"></span>
                            <span class="s-handle"></span>
                          </span>
                        </label>
                      </td>
                      <td>
                        <div class="btn-group">
                          <button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Action
                            <span class="caret"></span>
                          </button>
                          <ul class="dropdown-menu dropdown-menu-right">
                            <li><a href="#">Action</a></li>
                            <li><a href="#">Another action</a></li>
                            <li><a href="#">Something else here</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="#">Separated link</a></li>
                          </ul>
                        </div>
                      </td>
                    </tr>
                    <tr>
                      <td>
                        <img class="img-circle" src="<%=request.getContextPath()%>/adminResources/images/3.jpg" alt="" width="32" height="32">
                      </td>
                      <td>Ron Carran</td>
                      <td>
                        February 14, 2019
                        <br>
                        <small class="text-muted">5:40</small>
                      </td>
                      <td>
                        <span class="flag-icon flag-icon-us"></span>
                      </td>
                      <td>87</td>
                      <td>
                        <small class="text-muted">4/10</small>
                        <div class="progress progress-xs m-b-0">
                          <div class="progress-bar" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                            <span class="sr-only">40% Complete (success)</span>
                          </div>
                        </div>
                      </td>
                      <td>
                        <span class="label label-outline-success">Active</span>
                      </td>
                      <td>
                        <label class="switch switch-primary m-t-10">
                          <input type="checkbox" name="newsletter" class="s-input">
                          <span class="s-content">
                            <span class="s-track"></span>
                            <span class="s-handle"></span>
                          </span>
                        </label>
                      </td>
                      <td>
                        <div class="btn-group">
                          <button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Action
                            <span class="caret"></span>
                          </button>
                          <ul class="dropdown-menu dropdown-menu-right">
                            <li><a href="#">Action</a></li>
                            <li><a href="#">Another action</a></li>
                            <li><a href="#">Something else here</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="#">Separated link</a></li>
                          </ul>
                        </div>
                      </td>
                    </tr>
                    <tr>
                      <td>
                        <img class="img-circle" src="<%=request.getContextPath()%>/adminResources/images/4.jpg" alt="" width="32" height="32">
                      </td>
                      <td>Lucius Skyle</td>
                      <td>
                        January 12, 2019
                        <br>
                        <small class="text-muted">4:50</small>
                      </td>
                      <td>
                        <span class="flag-icon flag-icon-fr"></span>
                      </td>
                      <td>145</td>
                      <td>
                        <small class="text-muted">7/10</small>
                        <div class="progress progress-xs m-b-0">
                          <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width: 70%">
                            <span class="sr-only">70% Complete (success)</span>
                          </div>
                        </div>
                      </td>
                      <td>
                        <span class="label label-outline-warning">Expired</span>
                      </td>
                      <td>
                        <label class="switch switch-primary m-t-10">
                          <input type="checkbox" name="newsletter" class="s-input" checked="checked">
                          <span class="s-content">
                            <span class="s-track"></span>
                            <span class="s-handle"></span>
                          </span>
                        </label>
                      </td>
                      <td>
                        <div class="btn-group">
                          <button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Action
                            <span class="caret"></span>
                          </button>
                          <ul class="dropdown-menu dropdown-menu-right">
                            <li><a href="#">Action</a></li>
                            <li><a href="#">Another action</a></li>
                            <li><a href="#">Something else here</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="#">Separated link</a></li>
                          </ul>
                        </div>
                      </td>
                    </tr>
                  </tbody>
                </table>
              </div>
            </div>
          </div> --%>
<!--           <div class="col-md-4"> -->
<!--             <div class="panel panel-default panel-table"> -->
<!--               <div class="panel-heading"> -->
<!--                 <div class="panel-tools"> -->
<!--                   <a href="#" class="tools-icon"> -->
<!--                     <i class="zmdi zmdi-refresh"></i> -->
<!--                   </a> -->
<!--                   <a href="#" class="tools-icon"> -->
<!--                     <i class="zmdi zmdi-close"></i> -->
<!--                   </a> -->
<!--                 </div> -->
<!--                 <h3 class="panel-title">CPU load</h3> -->
<!--                 <div class="panel-subtitle">4 core processor</div> -->
<!--               </div> -->
<!--               <div class="panel-body"> -->
<!--                 <div id="realtime" style="height: 285px"></div> -->
<!--               </div> -->
<!--             </div> -->
<!--           </div> -->
        </div>
      </div>
     
     <!-- Footer-start -->
     <jsp:include page="footer.jsp"></jsp:include>
     <!-- Footer-end -->
     
    </div>
    <script src="<%=request.getContextPath()%>/adminResources/js/vendor.min.js"></script>
    <script src="<%=request.getContextPath()%>/adminResources/js/cosmos.min.js"></script>
    <script src="<%=request.getContextPath()%>/adminResources/js/application.min.js"></script>
    <script src="<%=request.getContextPath()%>/adminResources/js/index.min.js"></script>
  </body>
</html>