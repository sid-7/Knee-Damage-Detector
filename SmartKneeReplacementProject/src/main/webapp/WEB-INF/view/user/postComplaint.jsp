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
	<div class="m-bg-1 m-pt-140 m-pb-120">
		<div class="container">
			<div class="row">
				<div class="col-md-8">
					<div class="appoint-card border-light type-3 radius-20 bg-white  position-relative m-pt-50 m-pb-50 ">
						<div class="row">
							<div class="col-md-12">
								<h3 class="m-text-2 pb-35 mb-0">Post Complaint</h3>
							</div>
						</div>
					<form:form action="/user/userInsertComplaint" method="post" modelAttribute="complaintadd" enctype="multipart/form-data">	
                        <div class="row">
                            <div class="col-md-12">
                                <div class="row">
                                    <div class="col-md-6">
                                        <form:input type="text" path="phoneNumber" class="form-control fz-poppins m-mb-20" placeholder="Your Mobile Number:"/>
                                    </div>
                                    <div class="col-md-6">
                                        <form:input type="text" path="complaintTitle" class="form-control fz-poppins m-mb-20" placeholder="Complaint Title:"/>
                                    </div>
                                    <div class="col-md-6">
                                        <form:textarea row="5" path="complaintDescription" class="form-control fz-poppins m-mb-20" placeholder="Complaint Description:"/>
                                    </div>
                                    <div class="col-md-6">
                                        <input type="file" name="file">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12 text-right">
	                                        <button  class="btn fadeInDown-slide animated no-border bg-transparent medim-btn grad-bg--3 solid-btn mt-2 text-medium radius-pill text-active text-uppercase text-white">
		                                Submit
		                            </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form:form>    
                    </div> <!-- appoint-card -->
				</div>
				<div class="col-md-4">
					<div class="bg-white pt-4 pl-4 pb-4 pr-4 info-box m-mb-30  radius-5">
						<h5 class="m-text-2 mb-3">San Francisco</h5>
							<div class="media ">
							    <div class="media-body">
							        <p class="m-0  fz-poppins">Free Call 24/7</p>
							        <p class="m-0  fz-poppins">Phone: +123 4567 890 000</p>
							    </div>
							</div>
					</div> <!-- col-->
					<div class="bg-white pt-4 pl-4 pb-4 pr-4 info-box m-mb-30  radius-5">
						<h5 class="m-text-2 mb-3">Our  Address</h5>
							<div class="media ">
							    <div class="media-body">
							        <p class="m-0  fz-poppins">1234 North Luke Lane, South 
Bend, IN 360001</p>
							    </div>
							</div>
					</div> <!-- col-->
					<div class="bg-white pt-4 pl-4 pb-4 pr-4 info-box m-mtb-20  radius-5">
						<h5 class="m-text-2 mb-3">E-mail & Fax</h5>
							<div class="media ">
							    <div class="media-body">
							        <p class="m-0  fz-poppins">E-mail: name@medim.com</p>
							        <p class="m-0  fz-poppins">Fax: +123 755 755</p>
							    </div>
							</div>
					</div> <!-- col-->
				</div>
			</div>
		</div>
	</div>
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
 </body>
 
 </html>