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
    <section class=" position-relative set-bg breadcrumb-container" data-bg="<%=request.getContextPath()%>/userResources/images/breadcrumb-img1.png">
        <div class="overlay op-P9"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                   <div class="breadcrumb-inner align-items-start flex-column justify-content-center   d-flex ">
                        <h3 class="semi-bold text-uppercase text-white">About Us</h3>
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb bg-transparent mb-0 pl-0 p-0">
                                <li class="breadcrumb-item active"><a href="index.html">Home</a></li>
                                <li class="breadcrumb-item " aria-current="page"><a href="#">About Us</a></li>
                            </ol>
                        </nav>
                   </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Start Section -->

    <section class="about-area m-pb-140 m-pt-140 type-3 m-bg-1">
    	<div class="container">
    		<div class="row flex-column-reverse flex-sm-row">
    			<div class="col-lg-6 col-xl-5  col-sm-6 col-md-7 ">
                    <h2 class="text-dark pb-40 mb-0 ">Welcome
                            <br>
                            To GhutKnee</h2>
                    <p class="text-medium text-dark2">A smart model that detects the level of damage to the knee by just analyzing a plain radiograph.</p>
                    <p class="mt-20">
                       Made by four students of VGEC under their final year project 
                    </p>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="media align-items-center">
                                <i class="icofont-check-circled mr-3 text-active"></i>
                                <div class="media-body">
                                    <p class="mb-0 text-medium">Healthy Lifestyles</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="media align-items-center">
                                <i class="icofont-check-circled mr-3 text-active"></i>
                                <div class="media-body">
                                    <p class="mb-0 text-medium">A fit body</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="media align-items-center">
                                <i class="icofont-check-circled mr-3 text-active"></i>
                                <div class="media-body">
                                    <p class="mb-0 text-medium">Youthful Energy</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="media align-items-center">
                                <i class="icofont-check-circled mr-3 text-active"></i>
                                <div class="media-body">
                                    <p class="mb-0 text-medium">A Happy Life</p>
                                </div>
                            </div>
                        </div>
                    </div>
<!--                     <h5 class="text-dark2 m-mt-40 mb-0 "> -->
<!--                     Check Our   -->
<!--                     <a href="timetable.html" class="text-active text-Underline">Time Table</a></h5> -->
                </div>
                <div class="col-lg-6 col-xl-5 offset-xl-2  col-sm-6 col-md-5 ">
                	<div class="department-imag position-relative radius-5 s-dp-1-3 bg-white">
                		<div class="overlay"></div>
                		<a class="banner-circle position-absolute venobox" data-vbtype="youtube" data-autoplay="true"  href="https://youtu.be/vncIBREXCwU">
                            <img src="<%=request.getContextPath()%>/userResources/icon/play.svg" class="svg" alt="">
                        </a>
                        <img src="<%=request.getContextPath()%>/userResources/images/about-image3.png" alt="">
                    </div>
                </div>
    		</div>
    	</div>
    </section>
    
	<!-- Start Doctors Section -->
    <section class="m-pb-140 m-pt-135">
        <div class="container">
            <div class="row">
                <div class="col-md-6 offset-md-3">
                   <div class="text-center pb-75">
                        <p class="m-0  text-uppercase text-light-dark lt-space">Here are GhutKnee specialist doctors</p>
                        <h2 class="m-0  text-dark">Doctors</h2>
                        <span class="icon-section-wave d-inline-block text-active section-wave mt-3"></span>
                   </div>
                </div>
            </div>
            <div class="row flex-column-reverse flex-md-row  ">
                <div class="col-lg-7 offset-lg-1 col-md-6 offset-md-1">
                    <div class="tab-content  doctors-tab" id="pills-tabContent">
                          <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
                            <div class="doctrs-info-card grad-bg--5 position-relative type-1  radius-10">
                                <img src="<%=request.getContextPath()%>/userResources/images/doctors-tab-img-1.png" class="position-absolute" alt="">
                                <h4 class="text-white">Dr. Sheetal Amte</h4>
                                <p class="text-white designation text-uppercase">Cardiology</p>
                                <p class="text-white">
                                    Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. 
                                </p>
                                <h6 class="text-white pt-2">
                                    <i class="icofont-stopwatch"></i>
                                    Sat - Wed ( 4pm - 9pm )
                                </h6>
                               <a href="appointment.html" class="btn medim-btn solid-btn mt-4 text-medium radius-pill text-active text-uppercase white-btn bg-transparent position-relative">
                                    Appointment
                                </a>
                            </div>
                          </div>
                          <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
                            <div class="doctrs-info-card grad-bg--5 position-relative type-1  radius-10">
                                <img src="userResources/images/doctors-tab-img-2.png" class="position-absolute" alt="">
                                <h4 class="text-white">Dr. Jon Doe</h4>
                                <p class="text-white designation text-uppercase">Cardiology</p>
                                <p class="text-white">
                                    Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. 
                                </p>
                                <h6 class="text-white pt-2">
                                    <i class="icofont-stopwatch"></i>
                                    Sat - Wed ( 4pm - 9pm )
                                </h6>
                                <a href="appointment.html" class="btn medim-btn solid-btn mt-4 text-medium radius-pill text-active text-uppercase white-btn bg-transparent position-relative">
                                    Appointment
                                </a>
                            </div>
                          </div>
                          <div class="tab-pane fade" id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab">
                            <div class="doctrs-info-card grad-bg--5 position-relative type-1 radius-10">
                                <img src="<%=request.getContextPath()%>/userResources/images/doctors-tab-img-3.png" class="position-absolute" alt="">
                                <h4 class="text-white">Dr. Elizabeth</h4>
                                <p class="text-white designation text-uppercase">Cardiology</p>
                                <p class="text-white">
                                    Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. 
                                </p>
                                <h6 class="text-white pt-2">
                                    <i class="icofont-stopwatch"></i>
                                    Sat - Wed ( 4pm - 9pm )
                                </h6>
                               <a href="appointment.html" class="btn medim-btn solid-btn mt-4 text-medium radius-pill text-active text-uppercase white-btn bg-transparent position-relative">
                                    Appointment
                                </a>
                            </div>
                          </div>
                           <div class="tab-pane fade" id="pills-contact2" role="tabpanel" aria-labelledby="pills-contact-tab">
                            <div class="doctrs-info-card grad-bg--5 position-relative type-1 radius-10">
                                <img src="<%=request.getContextPath()%>/userResources/images/doctors-tab-img-4.png" class="position-absolute" alt="">
                                <h4 class="text-white">Dr. Mae Jemison</h4>
                                <p class="text-white designation text-uppercase">Cardiology</p>
                                <p class="text-white">
                                    Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. 
                                </p>
                                <h6 class="text-white pt-2">
                                    <i class="icofont-stopwatch"></i>
                                    Sat - Wed ( 4pm - 9pm )
                                </h6>
                                <a href="appointment.html" class="btn medim-btn solid-btn mt-4 text-medium radius-pill text-active text-uppercase white-btn bg-transparent position-relative">
                                    Appointment
                                </a>
                            </div>
                           </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-5">
                    <ul class="nav doctors-tab-triger flex-wrap d-flex   mb-0" id="pills-tab" role="tablist">
                      <li class="nav-item ">
                            <a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab" aria-controls="pills-home" aria-selected="true">
                                <img src="<%=request.getContextPath()%>/userResources/images/doctrs-tab-1.png" alt="">
                            <div >
                                Dr. Sheetal
                            </div>
                        </a>
                      </li>
                      <li class="nav-item ">
                        <a class="nav-link" id="pills-profile-tab" data-toggle="pill" href="#pills-profile" role="tab" aria-controls="pills-profile" aria-selected="false">
                            <img src="<%=request.getContextPath()%>/userResources/images/doctrs-tab-2.png" alt="">
                        <div>
                            Dr. Jon Doe
                        </div>
                        </a>
                      </li>
                      <li class="nav-item ">
                        <a class="nav-link" id="pills-contact-tab" data-toggle="pill" href="#pills-contact" role="tab" aria-controls="pills-contact" aria-selected="false">
                            <img src="<%=request.getContextPath()%>/userResources/images/doctrs-tab-3.png" alt="">
                        <div>
                            Dr. Elizabeth
                        </div>
                        </a>
                      </li>
                       <li class="nav-item ">
                        <a class="nav-link"  data-toggle="pill" href="#pills-contact2" role="tab" aria-controls="pills-contact" aria-selected="false">
                            <img src="<%=request.getContextPath()%>/userResources/images/doctrs-tab-4.png" alt="">
                        <div>
                            Dr. Mae Jemison
                        </div>
                        </a>
                      </li>
                    </ul>
                </div>
            </div>
            <div class="row">
<!--                 <div class="col-md-12 text-center m-mt-50"> -->
<!--                     <a href="doctors.html" class="btn bordered-blue fadeInDown-slide animated  medim-btn btn-bordered mt-0 text-medium radius-pill bg-transparent text-active text-uppercase "> -->
<!--                         view all -->
<!--                     </a> -->
<!--                 </div> -->
            </div>
        </div>
    </section>
    <!-- Start Doctors Section -->

    <section class="position-relative parallax-window statistics-container  m-pt-140  m-pb-140" data-bg='<%=request.getContextPath()%>/userResources/images/bg-img1.png'> 
    	<div class="overlay"></div>
    	<div class="container">
    		<div class="row">
    			<div class="col-sm-4">
					<div class="media statistics-wrapper type-1 text-white">
                        <span class="icon-doctors-instruments-1 mr-4 d-inline-block text-white"></span>
						<div class="media-body">
							<h1 class="mt-0">
								<span class="counter">219</span>
								<span>+</span>
							</h1>
							<p>Medical Experts</p>
						</div>
					</div> <!-- counter -->
    			</div> <!-- col-md-4 -->
    			<div class="col-sm-4">
					<div class="media statistics-wrapper type-1 text-white">
						<span class="icon-doctors-instruments-2 mr-4 d-inline-block text-white"></span>
						<div class="media-body">
							<h1 class="mt-0">
								<span class="counter">7990</span>
								<span>+</span>
							</h1>
							<p>Happy patients</p>
						</div>
					</div> <!-- counter -->
    			</div> <!-- col-md-4 -->
    			<div class="col-sm-4">
					<div class="media statistics-wrapper type-1 text-white">
						<span class="icon-doctors-instruments-3 mr-4 d-inline-block text-white"></span>
						<div class="media-body"> 
							<h1 class="mt-0">
								<span class="counter">101</span>
								<span>+</span>
							</h1>
							<p>medical services</p>
						</div>
					</div> <!-- counter -->
    			</div> <!-- col-md-4 -->
    		</div>
    	</div>
    </section><!-- col-md-4 -->

    <!-- Start Section -->
    <div class="m-bg-5 m-pt-140  m-pb-140">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="partner-slider">
                        <div class="single-item">
                            <img src="<%=request.getContextPath()%>/userResources/images/testimonial-img1.png" alt="">
                        </div> <!-- single-item -->
                         <div class="single-item">
                            <img src="<%=request.getContextPath()%>/userResources/images/testimonial-img2.png" alt="">
                        </div> <!-- single-item -->
                         <div class="single-item">
                            <img src="<%=request.getContextPath()%>/userResources/images/testimonial-img3.png" alt="">
                        </div> <!-- single-item -->
                         <div class="single-item">
                            <img src="<%=request.getContextPath()%>/userResources/images/testimonial-img4.png" alt="">
                        </div> <!-- single-item -->
                         <div class="single-item">
                            <img src="<%=request.getContextPath()%>/userResources/images/testimonial-img5.png" alt="">
                        </div> <!-- single-item -->
                         <div class="single-item">
                            <img src="<%=request.getContextPath()%>/userResources/images/testimonial-img2.png" alt="">
                        </div> <!-- single-item -->
                         <div class="single-item">
                            <img src="<%=request.getContextPath()%>/userResources/images/testimonial-img3.png" alt="">
                        </div> <!-- single-item -->
                         <div class="single-item">
                            <img src="<%=request.getContextPath()%>/userResources/images/testimonial-img4.png" alt="">
                        </div> <!-- single-item -->
                    </div>
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