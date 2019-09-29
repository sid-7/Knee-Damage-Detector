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
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700%7CRoboto:400,500" rel="stylesheet"> 
    
    <%-- <link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/plugins.css"> --%>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/style.css"> 
    <link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/vendor.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/cosmos.min.css">
     <link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/application.min.css"> 
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
      
      <div class="site-content">
        <div class="panel panel-default">
          <div class="panel-heading">
            <h3 class="m-y-0">Buy Subscription</h3>
          </div>
          <div class="panel-body">
            <div class="row">
              <div class="col-sm-8 col-sm-offset-2 col-md-6 col-md-offset-3">
              		
              		
              <div class="row grid pricing-grid">
    			<div class="col-md-12  grid-item monthly">
    				<div class="row">
                        <div class="col-sm-6 m-mb-20 col-xl-3">
                            <div class="position-relative no-overflows text-center bg-white radius-5 s-dp-1-3 single-table type-1">
                                <div class="position-absolute"></div>
                                <div class="text-center position-relative pricing-table-top">
                                    <h2 class="text-active pt-3 font-weight-bold mb-0 bold">$25/-</h2>
                                    <p>
                                 		ONLY
                                    </p>
                                    <h4 class="m-text-2 pb-3 pt-30 semi-bold">Silver</h4>
                                </div>
                                <ul class="no-list-style pl-0 mt-4 mb-4 text-left">
                                    <li>
                                        <i class="icofont-verification-check"></i>
                                         <span>
                                             3 Months Validity
                                         </span>
                                    </li>
                                    <li>
                                        <i class="icofont-verification-check"></i>
                                         <span>
                                            2 out of 10 Suggestions
                                         </span>
                                    </li>
                                    <li>
                                        <i class="icofont-verification-check"></i>
                                         <span>
                                             5 Appointments 
                                         </span>
                                    </li>
                                    
                                </ul>
                                <button class="btn bordered-blue fadeInDown-slide animated  medim-btn btn-bordered mt-2 text-medium radius-pill bg-transparent text-active text-uppercase ">
                                    Buy
                                </button>
                            </div>
                        </div> <!-- content -->
                        <div class="col-sm-6 m-mb-20 col-xl-3">
                            <div class="position-relative  text-center no-overflows bg-white radius-5 s-dp-1-3 single-table type-1">
                                <div class="position-absolute"></div>
                                <div class="text-center position-relative pricing-table-top">
                                    <h2 class="text-active pt-3 font-weight-bold mb-0 bold">$50/-</h2>
                                    <p>
                                   ONLY
                                    </p>
                                    <h4 class="m-text-2 pb-3 pt-30 semi-bold">Gold</h4>
                                </div>
                                <ul class="no-list-style pl-0 mt-4 mb-4 text-left">
                                    <li>
                                        <i class="icofont-verification-check"></i>
                                         <span>
                                             6 Months Validity
                                         </span>
                                    </li>
                                    <li>
                                        <i class="icofont-verification-check"></i>
                                         <span>
                                            4 out of 10 Suggestions
                                         </span>
                                    </li>
                                    <li>
                                        <i class="icofont-verification-check"></i>
                                         <span>
                                             10 Appointments
                                         </span>
                                    </li>
                                    
                                </ul>
                                <button class="btn bordered-blue fadeInDown-slide animated  medim-btn btn-bordered mt-2 text-medium radius-pill bg-transparent text-active text-uppercase ">
                                    Buy
                                </button>
                            </div>
                        </div> <!-- content -->
                          
                        <div class="col-sm-6 m-mb-20 col-xl-3">
                            <div class="position-relative no-overflows text-center bg-white radius-5 s-dp-1-3 single-table type-1">
                                <div class="position-absolute"></div>
                                <div class="text-center position-relative pricing-table-top">
                                    <h2 class="text-active pt-3 font-weight-bold mb-0 bold">$75/-</h2>
                                    <p>
                                   ONLY
                                    </p>
                                    <h4 class="m-text-2 pb-3 pt-30 semi-bold">Platinum</h4>
                                </div>
                                <ul class="no-list-style pl-0 mt-4 mb-4 text-left">
                                    <li>
                                        <i class="icofont-verification-check"></i>
                                         <span>
                                             9 Months Validity
                                         </span>
                                    </li>
                                    <li>
                                        <i class="icofont-verification-check"></i>
                                         <span>
                                            6 out of 10 suggestions
                                         </span>
                                    </li>
                                    <li>
                                        <i class="icofont-verification-check"></i>
                                         <span>
                                             20 Appointments
                                         </span>
                                    </li>
                                    
                                </ul>
                                <button class="btn bordered-blue fadeInDown-slide animated  medim-btn btn-bordered mt-2 text-medium radius-pill bg-transparent text-active text-uppercase ">
                                    buy
                                </button>
                            </div>
                        </div> <!-- content -->  
                        
                        <div class="col-sm-6 m-mb-20 col-xl-3">
                            <div class="position-relative no-overflows text-center  bg-white  single-table ">
                                <div class="position-absolute"></div>
                                <div class="text-center position-relative pricing-table-top">
                                    <h2 class="text-active pt-3 font-weight-bold mb-0 bold">$100/-</h2>
                                    <p>
                                   ONLY
                                    </p>
                                    <h4 class="m-text-2 pb-3 pt-30 semi-bold">Diamond</h4>
                                </div>
                                <ul class="no-list-style pl-0 mt-4 mb-4 text-left">
                                    <li>
                                        <i class="icofont-verification-check"></i>
                                         <span>
                                             12 Months Validity
                                         </span>
                                    </li>
                                    <li>
                                        <i class="icofont-verification-check"></i>
                                         <span>
                                            8 out of 10 Suggestions
                                         </span>
                                    </li>
                                    <li>
                                        <i class="icofont-verification-check"></i>
                                         <span>
                                             35 Appointments
                                         </span>
                                    </li>
                                    
                                </ul>
                                <button class="btn bordered-blue fadeInDown-slide animated  medim-btn btn-bordered mt-2 text-medium radius-pill bg-transparent text-active text-uppercase ">
                                    Buy
                                </button>
                            </div>
                        </div> <!-- content -->
                        
                        
					</div>
				</div>              
                              
              </div>
            </div>         
          </div>
        </div>
      </div>
      </div>     
<!-- Footer-start -->
	  <jsp:include page="footer.jsp"></jsp:include>
<!-- Footer-end -->
 		</div>
    
    
    <script src="<%=request.getContextPath()%>/userResources/js/jquery-2.2.4.min.js"></script>
    <script src="<%=request.getContextPath()%>/userResources/js/plugins.js"></script>
    <script src="<%=request.getContextPath()%>/userResources/js/main.js"></script>
    <script src="<%=request.getContextPath()%>/adminResources/js/vendor.min.js"></script>
    <script src="<%=request.getContextPath()%>/adminResources/js/cosmos.min.js"></script>
    <script src="<%=request.getContextPath()%>/adminResources/js/application.min.js"></script>
  </body>
</html>