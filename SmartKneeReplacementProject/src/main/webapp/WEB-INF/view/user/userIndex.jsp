<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>GhutKnee- A Smart Knee Replacement Advisor</title>
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
    
    <!-- header start -->
    <jsp:include page="header.jsp"></jsp:include>
    <!-- header end -->
    
    
    <!-- End Section -->
    <section class="banenr no-overflows type-2 d-flex align-items-center position-relative justify-content-center"><span class="ripple rippleEffect"></span>
        <div class="banenr-shape">
            <div class="banner-shape-inner">
                <img class="inner-image" id="rotate-image" src="<%=request.getContextPath()%>/userResources/images/banner-image2.png" alt="banner image">
                <a class="banner-circle position-absolute venobox" data-vbtype="youtube" data-autoplay="true"  href="https://youtu.be/rrT6v5sOwJg">
                    <img src="<%=request.getContextPath()%>/userResources/images/play.svg" class="svg" alt="">
                </a>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-md-5">
                    <div class="">
                        <h1 class="m-text-4 semi-bold mb-0 m-pb-70 pr-5">
                            GhutKnee Is 
                            All About 
                            Health &amp; Care
                        </h1>
                    </div>
                    <div class="d-flex">
                         <a href="about-2.html" class="btn fadeInDown-slide animated  medim-btn btn-bordered mt-0 text-medium radius-pill bg-transparent text-active text-uppercase ">
                        About Us
                    </a>
                    <a href="appointment.html" class="btn fadeInDown-slide animated no-border bg-transparent medim-btn grad-bg--3 solid-btn mt-0 text-medium radius-pill text-active text-uppercase text-white">
                        Appointment
                    </a>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-9">
<!--                     <div class="input-group banenr-seach bg-white m-mt-70 mb-0"> -->
<!--                       <input type="text" class="form-control" placeholder="Type Doctor’s Name" aria-label="Recipient's username" aria-describedby="button-addon2"> -->
<!--                       <div class="input-group-append"> -->
<!--                         <button class="btn" type="button" id="button-addon2">Search</button> -->
<!--                       </div> -->
<!--                     </div> -->
                </div>
            </div>
        </div>
    </section>
    <!-- End Section -->
    
    <!-- End Section -->
    <section class="medim-into position-relative mt-90 type-1">
        <img src="<%=request.getContextPath()%>/userResources/images/Shape-3.png" class="position-absolute" alt="">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-5  doctor-image d-flex align-items-end d-none  justify-content-center">
                    <img src="<%=request.getContextPath()%>/userResources/images/doctor-img2.png"  alt="">
                </div>
                <div class="col-lg-5 offset-lg-1 col-md-7 m-pb-140">
                    <h2 class="text-dark pb-40 mb-0 ">Welcome
                            <br>
                            To GhutKnee</h2>
                    <p class="text-medium text-dark2">We at GhutKnee, are concerned about your health.</p>
                    <p class="m-mt-40">
                        Knee replacement, also known as knee arthroplasty, is a surgical procedure to replace the weight-bearing surfaces of the knee joint to relieve pain and disability. It is most commonly performed for osteoarthritis,[1] and also for other knee diseases such as rheumatoid arthritis and psoriatic arthritis. In patients with severe deformity from advanced rheumatoid arthritis, trauma, or long-standing osteoarthritis, the surgery may be more complicated and carry higher risk. Osteoporosis does not typically cause knee pain, deformity, or inflammation and is not a reason to perform knee replacement                    </p>
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
                                    <p class="mb-0 text-medium">Good Lifestyles</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="media align-items-center">
                                <i class="icofont-check-circled mr-3 text-active"></i>
                                <div class="media-body">
                                    <p class="mb-0 text-medium">Better Lifestyles</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="media align-items-center">
                                <i class="icofont-check-circled mr-3 text-active"></i>
                                <div class="media-body">
                                    <p class="mb-0 text-medium">Best Lifestyles</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <h5 class="text-dark2 m-mt-40 mb-0 ">
                    Check Our  
                    <a href="timetable.html" class="text-active text-Underline">Time Table</a></h5>
                </div>
            </div>
        </div>
    </section>
    <!-- End Section -->

    <!-- Start  Section -->
    <section class="set-bg pt-100 pb-100 position-relative appointment-wrapper type-1" data-bg="<%=request.getContextPath()%>/userResources/images/bg-img1.png">
     	<div class="overlay op-P9"></div>
     	<div class="container">
     		<div class="row">
     			<div class="col-xl-3 col-md-4  offset-md-0 col-sm-12 text-white">
     				<h4 class="pb-1">Get an Appointment</h4>
     				<a href="contact.html" class="btn medim-btn solid-btn mt-4 text-medium radius-pill text-active text-uppercase white-btn bg-transparent position-relative">
                        Contact us
                    </a>
     			</div> <!-- col -->
     			<div class="col-xl-3 col-md-4 offset-md-0  col-sm-12 offset-xl-1 text-white">
     				<h4 class="pb-4">Call Our Number</h4>
					<div class="media align-items-center">
					    <i class="icofont-phone mr-4"></i>
					    <div class="media-body">
					       <p class="mb-0"> +91 9409105994</p>
					       <p class="mb-0"> +01234 567 890</p>
					    </div>
					</div>
     			</div> <!-- col -->
     			<div class="col-xl-3 col-md-4 offset-md-0  col-sm-12 offset-xl-1 text-white">
     				<h4 class="pb-4">Opening Hours</h4>
					<div class="media align-items-center">
                        <i class="icofont-clock-time mr-3"></i>
					    <div class="media-body">
					       <p class="mb-0">Mon - Fri: &nbsp;&nbsp;&nbsp;    <span>08:00 - 17:00</span></p>
					       <p class="mb-0">Mon - Fri:  &nbsp; &nbsp;&nbsp;   <span>08:00 - 17:00</span></p>
					    </div>
					</div>
     			</div> <!-- col -->
     		</div>
     	</div>
     </section>
    <!-- End Section -->

    <!-- Start service Section -->
    <section class="m-pt-135 m-pb-90 m-bg-1">
    	<div class="container">
            <div class="row">
                <div class="col-md-6 offset-md-3">
                   <div class="text-center pb-75">
                        <p class="m-0  text-uppercase text-light-dark lt-space">Here is medim specialist doctors</p>
                        <h2 class="m-0  text-dark">Our Services</h2>
                       <span class="icon-section-wave d-inline-block text-active section-wave mt-3"></span>
                   </div>
                </div>
            </div>
    		<div class="row">
    			<div class="col-md-4">
                    <div class="single-service type-1 radius-10 position-relative service-wrapper s-dp-10-60 m-mb-50">
                        <div class="service-circle position-relative mb-4 text-active m-bg-4 rounded-circle d-flex align-items-center justify-content-center">
                            <span class="icon-heart-beat text-grad-1"></span>
                        </div>
                        <h4 class="text-dark2 mb-3 position-relative pt-2">Checking KL grade</h4>
                        <p>
                            KL scale is a medical term by Kellgren and Lawry, which is used to indicate the level of damage on the knee
                        </p>
                        <a href="service-single.html" class="text-default fz-poppins text-Underline">
                            Read More
                        </a>
                    </div>
                </div>
    			<div class="col-md-4">
                    <div class="single-service type-1 radius-10 position-relative service-wrapper s-dp-10-60 m-mb-50">
                        <div class="service-circle position-relative mb-4 text-active m-bg-4 rounded-circle d-flex align-items-center justify-content-center">
                             <span class="icon-test-tube text-grad-1"></span>
                        </div>
<!--                         <h4 class="text-dark2 mb-3 position-relative pt-2">Blood Testing</h4> -->
<!--                         <p> -->
<!--                             Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.  -->
<!--                         </p> -->
<!--                         <a href="service-single.html" class="text-default fz-poppins text-Underline"> -->
<!--                             Read More -->
<!--                         </a> -->
<!--                     </div> -->
<!--                 </div> -->
<!--                 <div class="col-md-4"> -->
<!--                     <div class="single-service type-1 radius-10 position-relative service-wrapper s-dp-10-60 m-mb-50"> -->
<!--                         <div class="service-circle position-relative mb-4 text-active m-bg-4 rounded-circle d-flex align-items-center justify-content-center"> -->
<!--                            <span class="icon-dna text-grad-1"> </span> -->
<!--                         </div> -->
<!--                         <h4 class="text-dark2 mb-3 position-relative pt-2">DNA Testing</h4> -->
<!--                         <p> -->
<!--                             Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.  -->
<!--                         </p> -->
<!--                         <a href="service-single.html" class="text-default fz-poppins text-Underline"> -->
<!--                             Read More -->
<!--                         </a> -->
<!--                     </div> -->
<!--                 </div> -->
<!--                 <div class="col-md-4"> -->
<!--                     <div class="single-service type-1 radius-10 position-relative service-wrapper s-dp-10-60 m-mb-50"> -->
<!--                         <div class="service-circle position-relative mb-4 text-active m-bg-4 rounded-circle d-flex align-items-center justify-content-center"> -->
<!--                             <span class="icon-eye text-grad-1"> </span> -->
<!--                         </div> -->
                        <h4 class="text-dark2 mb-3 position-relative pt-2">Appointment</h4> 
                        <p>
                        	We can help you with providing contact information of reputed doctors and help in booking appointments with them
                        </p>
                        <a href="service-single.html" class="text-default fz-poppins text-Underline">
                            Read More
                        </a>
                    </div>
                </div>
<!--                 <div class="col-md-4"> -->
<!--                     <div class="single-service type-1 radius-10 position-relative service-wrapper s-dp-10-60 m-mb-50"> -->
<!--                         <div class="service-circle position-relative mb-4 text-active m-bg-4 rounded-circle d-flex align-items-center justify-content-center"> -->
<!--                              <span class="icon-teeth text-grad-1"> </span> -->
<!--                         </div> -->
<!--                         <h4 class="text-dark2 mb-3 position-relative pt-2">Dental Care</h4> -->
<!--                         <p> -->
<!--                             Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.  -->
<!--                         </p> -->
<!--                         <a href="service-single.html" class="text-default fz-poppins text-Underline"> -->
<!--                             Read More -->
<!--                         </a> -->
<!--                     </div> -->
<!--                 </div> -->
<!--                 <div class="col-md-4"> -->
<!--                     <div class="single-service type-1 radius-10 position-relative service-wrapper s-dp-10-60 m-mb-50"> -->
<!--                         <div class="service-circle position-relative mb-4 text-active m-bg-4 rounded-circle d-flex align-items-center justify-content-center"> -->
<!--                             <span class="icon-ambulance text-grad-1"> </span> -->
<!--                         </div> -->
<!--                         <h4 class="text-dark2 mb-3 position-relative pt-2">Emergency Service</h4> -->
<!--                         <p> -->
<!--                             Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.  -->
<!--                         </p> -->
<!--                         <a href="service-single.html" class="text-default fz-poppins text-Underline"> -->
<!--                             Read More -->
<!--                         </a> -->
<!--                     </div> -->
<!--                 </div> -->
<!--     		</div> -->
<!--     	</div> -->
<!--     </section> -->
    <!-- End service Section -->

    <!-- Start Section -->
    <section class="m-pt-135  m-pb-200  recent-post-area type-2">
        <div class="container">
            <div class="row">
                <div class="col-md-6 offset-md-3">
                   <div class="text-center pb-75">
                        <p class="m-0  text-uppercase text-light-dark lt-space">Here are GhutKnee specialist doctors</p>
                        <h2 class="m-0  text-dark">GhutKnee Articles</h2>
                       <span class="icon-section-wave d-inline-block text-active section-wave mt-3"></span>
                   </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="article-box type-1 h-dp-10-60 radius-5">
                        <img src="<%=request.getContextPath()%>/userResources/images/article-image-1.png" alt="">
                        <div class="m-p-30">
                            <p class="mb-1">
                                <a href="blog-single-sidebar.html" class="text-default fz-14">16 Jan, 2019  </a> | <a href="#" class="text-default fz-14">Medical, Health</a>
                            </p>
                            <a href="blog-single-sidebar.html">
                                <h5 class="text-dark2 mb-3">
                                    Nervousness is something that exists in everybody's
                                </h5>
                            </a>
                            <a href="blog-single-sidebar.html" class="text-default fz-poppins text-Underline">
                                Read More
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="article-box type-1 h-dp-10-60 radius-5">
                        <img src="<%=request.getContextPath()%>/userResources/images/article-image-2.png" alt="">
                        <div class="m-p-30">
                        
                            <p class="mb-1"><a href="#" class="text-default fz-14">16 Jan, 2019  </a> | <a href="blog-single-sidebar.html" class="text-default fz-14">Medical, Health</a></p>
                                <a href="blog-single-sidebar.html">
                                <h5 class="text-dark2 mb-3">
                                     Feel free to use our service
                                </h5>
                            </a>
                                <a href="blog-single-sidebar.html" class="text-default fz-poppins text-Underline">
                                    Read More
                                </a>
            
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="article-box type-1 h-dp-10-60 radius-5">
                        <img src="<%=request.getContextPath()%>/userResources/images/article-image-3.png" alt="">
                        <div class="m-p-30">
                        
                            <p class="mb-1"><a href="#" class="text-default fz-14">16 Jan, 2019  </a> | <a href="blog-single-sidebar.html" class="text-default fz-14">Medical, Health</a></p>
                               <a href="blog-single-sidebar.html">
                                <h5 class="text-dark2 mb-3">
                                    We can connect you with the best doctors out there!
                                </h5>
                            </a>
                                <a href="blog-single-sidebar.html" class="text-default fz-poppins text-Underline">
                                    Read More
                                </a>
                        
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Section -->

    <!-- Start call to action  Section -->
    <section class="position-relative m-pt-140  m-pb-140  set-bg fixed-bg" data-bg="<%=request.getContextPath()%>/userResources/images/dark-iphone.png">
<!--         <div class="overlay op-P9"></div> -->
<!--         <div class="container"> -->
<!--             <div class="row"> -->
<!--                 <div class="col-xl-7 col-md-8 offset-md-4 position-relative offset-xl-5"> -->
<%--                     <img src="<%=request.getContextPath()%>/userResources/images/i-phone-img1.png" class="phone-mockup" alt=""> --%>
<!--                     <div class="circle"></div> -->
<!--                     <div class="circle2"></div> -->
<!--                     <h2 class="text-white m-mb-50"> -->
<!--                         Medim App  -->
<!--                         <br> -->
<!-- Available Now On -->
<!--                     </h2> -->
<!--                     <div class="d-flex flex-column flex-sm-row"> -->
<!--                         <a href="#" class="text-white s-dp-1-3 mr-2 mr-lg-4   d-inline-flex   btn-appStore"> -->
<!--                             <div class="media  align-items-center"> -->
<!--                               <i class="icofont-brand-apple mr-4"></i> -->
<!--                               <div class="media-body"> -->
<!--                                 <p class="m-0">Download From</p> -->
<!--                                 <h5 class="m-0">App store</h5> -->
<!--                               </div> -->
<!--                             </div> -->
<!--                         </a> -->
<!--                         <a href="#" class="bg-white s-dp-1-3    d-inline-flex  text-active  btn-playStore"> -->
<!--                             <div class="media align-items-center"> -->
<!--                              <i class="icofont-brand-android-robot mr-4"></i> -->
<!--                               <div class="media-body"> -->
<!--                                 <p class="m-0">Download From</p> -->
<!--                                 <h5 class="m-0">Google Play</h5> -->
<!--                               </div> -->
<!--                             </div> -->
<!--                         </a> -->
<!--                     </div> -->
<!--                 </div> -->
<!--             </div> -->
<!--         </div> -->
    </section>
    <!-- End  call to action Section -->

    <!-- Start Section -->
    <section class="m-pt-135  no-overflows m-pb-140 m-bg-1">
        <div class="container ">
            <div class="row">
                <div class="col-md-6 offset-md-3">
                   <div class="text-center m-pb-50">
                        <p class="m-0  text-uppercase text-light-dark lt-space">Here are GhutKnee specialist doctors</p>
                        <h2 class="m-0  text-dark">What Patients Say </h2>
                       <span class="icon-section-wave d-inline-block text-active section-wave mt-3"></span>
                   </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="testimonial-slider pt-2">
                        <div class="single-testimonila-item s-dp-10-60-dp-10 radius-10 position-relative bg-white">
                            <div class="clint-img s-dp-10-40 position-absolute rounded-circle">
                                <img src="<%=request.getContextPath()%>/userResources/images/clin-img1.png" alt="">
                            </div>
                            <h4 class="text-dark2 m-0">Sarah Taylor</h4>
                            <p class="text-light-dark fz-poppins">
                                Kidney Patient
                            </p>
                            <p class="mb-4 pt-2">
                                <i>
                                    Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes
                                </i>
                            </p>
                             <i class="icofont-quote-right pt-2 d-inline-block text-active"></i>
                        </div>
                        <div class="single-testimonila-item s-dp-10-60-dp-10 radius-10 position-relative bg-white">
                            <div class="clint-img s-dp-10-40 position-absolute rounded-circle">
                                <img src="<%=request.getContextPath()%>/userResources/images/clin-img2.png" alt="">
                            </div>
                            <h4 class="text-dark2 m-0">Jora Taylor</h4>
                            <p class="text-light-dark fz-poppins">
                                Kidney Patient
                            </p>
                            <p class="mb-4 pt-2">
                                <i>
                                    Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes
                                </i>
                            </p>
                             <i class="icofont-quote-right pt-2 d-inline-block text-active"></i>
                        </div>
                        <div class="single-testimonila-item s-dp-10-60-dp-10 radius-10 position-relative bg-white">
                            <div class="clint-img s-dp-10-40 position-absolute rounded-circle">
                                <img src="<%=request.getContextPath()%>/userResources/images/clin-img3.png" alt="">
                            </div>
                            <h4 class="text-dark2 m-0">Pamela</h4>
                            <p class="text-light-dark fz-poppins">
                                Kidney Patient
                            </p>
                            <p class="mb-4 pt-2">
                                <i>
                                    Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes
                                </i>
                            </p>
                             <i class="icofont-quote-right pt-2 d-inline-block text-active"></i>
                        </div>
                        <div class="single-testimonila-item s-dp-10-60-dp-10 radius-10 position-relative bg-white">
                            <div class="clint-img s-dp-10-40 position-absolute rounded-circle">
                                <img src="<%=request.getContextPath()%>/userResources/images/clin-img4.png" alt="">
                            </div>
                            <h4 class="text-dark2 m-0">Elizabeth</h4>
                            <p class="text-light-dark fz-poppins">
                                Kidney Patient
                            </p>
                            <p class="mb-4 pt-2">
                                <i>
                                    Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes
                                </i>
                            </p>
                             <i class="icofont-quote-right pt-2 d-inline-block text-active"></i>
                        </div>
                        <div class="single-testimonila-item s-dp-10-60-dp-10 radius-10 position-relative bg-white">
                            <div class="clint-img s-dp-10-40 position-absolute rounded-circle">
                                <img src="<%=request.getContextPath()%>/userResources/images/clin-img5.png" alt="">
                            </div>
                            <h4 class="text-dark2 m-0">Ina Tey</h4>
                            <p class="text-light-dark fz-poppins">
                                Kidney Patient
                            </p>
                            <p class="mb-4 pt-2">
                                <i>
                                    Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes
                                </i>
                            </p>
                             <i class="icofont-quote-right pt-2 d-inline-block text-active"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Section -->

    <!-- footer start -->
    
    <jsp:include page="footer.jsp"></jsp:include>
    
    <!-- footer end-->

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