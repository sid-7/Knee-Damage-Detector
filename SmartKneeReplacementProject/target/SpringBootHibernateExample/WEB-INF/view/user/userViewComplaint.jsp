<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Medim - Responsive Medical & Health Template</title>
    <!-- Favicons-->
    <link rel="shortcut icon" type="image/x-icon" href="<%=request.getContextPath()%>/userResources/images/apple-touch-icon-32x32.png">
    <link rel="shortcut icon" type="image/x-icon" sizes="72x72" href="<%=request.getContextPath()%>/userResources/images/apple-touch-icon-72x72.png">

    <!-- web fonts -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700%7CRoboto:400,500" rel="stylesheet"> 
    
    <!-- plugins css -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/userResources/css/plugins.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/application.min.css">
    <!-- style css -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/userResources/css/style.css">
</head>

<body>
          <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
        
    <!-- Start Preloader -->
    <div class="preloader">
        <div class="preloader-inner">
            <div class="loader-content">
                <span class="icon-section-wave d-inline-block text-active  mt-3 "></span>
            </div>
        </div>
    </div>

    <!-- Start Header -->
    <jsp:include page="header.jsp"></jsp:include>
    <!-- End Header -->

    <!-- Start Section -->
    <section class="pt-100 pb-100 position-relative set-bg breadcrumb-container" data-bg="<%=request.getContextPath()%>/userResources/images/breadcrumb-img1.jpg">
        <div class="overlay op-P9"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h3 class="semi-bold text-uppercase text-white">APPOINTMENT</h3>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb bg-transparent mb-0 pl-0 p-0">
                            <li class="breadcrumb-item active"><a href="index.html">Home</a></li>
                            <li class="breadcrumb-item " aria-current="page"><a href="#">APPOINTMENT</a></li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </section>
    <!-- Start Section -->

	<!-- Start Section -->
	<section class="m-bg-1 m-pt-140 m-pb-140 time-table-container">
	<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
     <%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
		<div class="container">            
  <table class="table table-hover">
    <thead>
	      <tr>
        			<th>ComplaintId</th>
                    <th>ComplaintTitle</th>
                    <th>ComplaintDescription</th>
                    <th>ComplaintReplyDescription</th>
                    <th>ComplaintDate</th>
                    <th>ComplaintTime</th>
    		  </tr>
    </thead>
    <tbody>
       <c:forEach items="${key}" var="x">
                
                  <tr>
                     <td>${x.complaintId}</td>
                    <td>${x.complaintTitle}</td>
                    <td>${x.complaintDescription}</td>
                    <td>${x.complaintReplyDescription}</td>
                    <td>${x.complaintDate}</td>
                    <td>${x.complaintTime}</td>
                  </tr>
                  
                  </c:forEach>

    </tbody>
  </table>
</div>
</section>
	<!-- End Section -->


    <!-- Start footer -->
    <jsp:include page="footer.jsp"></jsp:include>
    <!-- End footer -->
    
    <!-- Start scroll-top  Section -->
    <div class="scroll-top">
        <i class="icofont-rounded-up"></i>
    </div>
    <!-- End  scroll-top Section -->

    <!-- js file -->
    <script src="<%=request.getContextPath()%>/userResources/js/jquery-2.2.4.min.js"></script>
    <!-- plugins js -->
    <script src="<%=request.getContextPath()%>/userResources/js/plugins.js"></script>
    <!-- main js -->
    <script src="<%=request.getContextPath()%>/userResources/js/main.js"></script>
    <script src="<%=request.getContextPath()%>/adminResources/js/vendor.min.js"></script>
    <script src="<%=request.getContextPath()%>/adminResources/js/cosmos.min.js"></script>
    <script src="<%=request.getContextPath()%>/adminResources/js/application.min.js"></script>
    <script src="<%=request.getContextPath()%>/adminResources/js/tables-datatables.min.js"></script>
 </body>
 
 </html>