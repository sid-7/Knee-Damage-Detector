<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>GhutKnee</title>
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
    <section class=" position-relative set-bg breadcrumb-container" data-bg="userResources/images/breadcrumb-img1.png">
        <div class="overlay op-P9"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                   <div class="breadcrumb-inner align-items-start flex-column justify-content-center   d-flex ">
						<h3 class="semi-bold text-uppercase text-white">contact</h3>
						<nav aria-label="breadcrumb">
						    <ol class="breadcrumb bg-transparent mb-0 pl-0 p-0">
						        <li class="breadcrumb-item active"><a href="index.html">Home</a></li>
						        <li class="breadcrumb-item " aria-current="page"><a href="#">contact</a></li>
						    </ol>
						</nav>
                   </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Start Section -->

	<!-- Start Section -->
	<section class="m-bg-1 m-pt-140 m-pb-140">
		<div class="container">
			<div class="row m-mb-60">
				<div class="col-md-12">
					<div class="contact-inner bg-white radius-5">
						<h3 class="m-text-2 m-mb-30">Drop a line</h3>
						<form action="#">
							<div class="row">
								<div class="col-md-6">
									<input type="text" placeholder="First name:" class="form-control medim-field fz-poppins m-mb-20">
								</div>
								<div class="col-md-6">
									<input type="text" placeholder="Last name:" class="form-control medim-field fz-poppins m-mb-20">
								</div>
								<div class="col-md-6">
									<input type="text" placeholder="Your Mail:" class="form-control medim-field fz-poppins m-mb-20">
								</div>
								<div class="col-md-6">
									<input type="text" placeholder="Website:" class="form-control medim-field fz-poppins m-mb-20">
								</div>
							</div>
							<div class="row">
								<div class="col-md-12">
									<input type="text" placeholder="Subject:" class="form-control fz-poppins m-mb-20 medim-field">
								</div>
							</div>
							<div class="row">
								<div class="col-md-12">
									<textarea name="message" class="form-control fz-poppins medim-field" data-box-name="contact-message" placeholder="Your message here:"></textarea>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12 text-right">
									<button  class="btn fadeInDown-slide animated no-border bg-transparent medim-btn grad-bg--3 solid-btn mt-4 text-medium radius-pill text-active text-uppercase text-white">send message</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4">
					<div class="bg-white pt-4 pl-4 pb-4 pr-4 m-mtb-20 radius-5 info-box">
						<h5 class="m-text-2 mb-3">Arizona</h5>
							<div class="media ">
							    <i class="icofont-location-pin mr-2 mt-2 "></i>
							    <div class="media-body">
							        <p class="m-0  fz-poppins">198 West 21th Street, Suite 721
        Tempe AZ 10010</p>
							    </div>
							</div>
							<div class="media ">
							    <i class="icofont-location-pin mr-2 mt-2 "></i>
							    <div class="media-body">
							        <p class="m-0  fz-poppins">siddharth@ghutknee.com</p>
							    </div>
							</div>
							<div class="media ">
							    <i class="icofont-location-pin mr-2 mt-2 "></i>
							    <div class="media-body">
							        <p class="m-0  fz-poppins">+123 4567 890 000</p>
							    </div>
							</div>
					</div> <!-- col-->
				</div> <!-- col-->
				<div class="col-md-4">
					<div class="bg-white pt-4 pl-4 pb-4 pr-4 info-box m-mtb-20  radius-5">
						<h5 class="m-text-2 mb-3">Indiana</h5>
							<div class="media ">
							    <i class="icofont-location-pin mr-2 mt-2 "></i>
							    <div class="media-body">
							        <p class="m-0  fz-poppins">15 East Street, Bloomington 1050</p>
							    </div>
							</div>
							<div class="media ">
							    <i class="icofont-location-pin mr-2 mt-2 "></i>
							    <div class="media-body">
							        <p class="m-0  fz-poppins">viral@ghutknee.com</p>
							    </div>
							</div>
							<div class="media ">
							    <i class="icofont-location-pin mr-2 mt-2 "></i>
							    <div class="media-body">
							        <p class="m-0  fz-poppins">+125 3247 780 024</p>
							    </div>
							</div>
					</div> <!-- col-->
				</div> <!-- col-->
				<div class="col-md-4">
					<div class="bg-white pt-4 pl-4 pb-4 pr-4 info-box m-mtb-20 radius-5">
						<h5 class="m-text-2 mb-3">VGEC</h5>
							<div class="media text-light-dark">
							    <i class="icofont-location-pin mr-2 mt-2 text-light-dark"></i>
							    <div class="media-body">
							        <p class="m-0  fz-poppins">80/1 south Street,Bloomington IN</p>
							    </div>
							</div>
							<div class="media text-light-dark">
							    <i class="icofont-location-pin mr-2 mt-2 text-light-dark"></i>
							    <div class="media-body">
							        <p class="m-0  fz-poppins">anshul@ghutknee.com</p>
							    </div>
							</div>
							<div class="media text-light-dark">
							    <i class="icofont-location-pin mr-2 mt-2 text-light-dark"></i>
							    <div class="media-body">
							        <p class="m-0  fz-poppins">+44 20 2854 890 854</p>
							    </div>
							</div>
					</div> <!-- col-->
				</div> <!-- col-->
			</div>
<!-- 			<div class="row"> -->
<!-- 				<div class="col-md-12 m-mt-50 text-center"> -->
<!-- 					<button class="btn bordered-blue fadeInDown-slide animated  medim-btn btn-bordered mt-0 text-medium radius-pill bg-transparent text-active text-uppercase "> -->
<!--                         load more location -->
<!--                     </button> -->
<!-- 				</div> -->
<!-- 			</div> -->
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
</body>

</html>