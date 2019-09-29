<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>GhutKnee</title>
    <script type="text/javascript" >

function fn1()
	{
		var outputId = document.getElementById("outputId")
		var mobileNumber = document.getElementById("mobileNumber");
		var name = document.getElementById("name");
		var email = document.getElementById("email");
		var gender = document.getElementById("gender");
		var fileId = document.getElementById("fileID")
		path=fileId.value.replace("C:\\fakepath\\","E:\\Siddharth\\smartkneereplacement\\SmartKneeReplacementProject\\src\\main\\webapp\\document\\demo\\")
		var htp=new XMLHttpRequest();
		
		htp.onreadystatechange=function(){
		
			if(htp.readyState==4){
				
				
				//alert(htp.responseText);
				
				var jsn = JSON.parse(htp.responseText)
				outputId.value = jsn.detected
				
			}
		}
	htp.open("get"," http://127.0.0.1:5000/?fileId="+path+"&mobileNumber="+mobileNumber.value+"&name="+name.value+"&gender="+gender.value+"&email="+email.value+"&fileId="+fileId.value,true);
	htp.send();
}

</script>
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
                        <h3 class="semi-bold text-uppercase text-white">Our SERVICES</h3>
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb bg-transparent mb-0 pl-0 p-0">
                                <li class="breadcrumb-item active"><a href="userIndex">Home</a></li>
                                <li class="breadcrumb-item " aria-current="page"><a href="#">Check KL Grade</a></li>
                            </ol>
                        </nav>
                   </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Section -->
    
	<!-- Start Section -->
<!-- 	<section class="m-pt-140 m-bg-1 m-pb-90"> -->
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f" %>

	<div class="m-bg-1 m-pt-140 m-pb-120">
		<div class="container">
			<div class="row">
				<div class="col-md-8">
					<div class="appoint-card border-light type-3 radius-20 bg-white  position-relative m-pt-50 m-pb-50 ">
						<div class="row">
							<div class="col-md-12">
								<h3 class="m-text-2 pb-35 mb-0">Upload Xray</h3>
							</div>
						</div>				
						<f:form enctype="multipart/form-data" action="uploadUserXray" modelAttribute="xrayupload" method="post">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="row">
                                		
                                
                                    <div class="col-md-6">
                                        <f:input type="text" path="name" class="form-control fz-poppins m-mb-20" placeholder="Your Name:"/>
                                    </div>
                                    <div class="col-md-6">
                                        <f:input type="text" id="mobileNumber" path="phoneNumber" class="form-control fz-poppins m-mb-20" placeholder="Your Phone:"/>
                                    </div>
                                    <div class="col-md-6">
                                        <f:input path="email" type="text" class="form-control fz-poppins m-mb-20" placeholder="Your Mail:"/>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="position-relative m-mb-20">
                                            <label   class="position-absolute m-label">
                                               <i class="icofont-caret-down"></i>
                                            </label>
                                            <f:select path="gender" class="js-example-basic-single fz-poppins" name="state">
                                                <option value="">Select Sex:</option>
                                                <option value="Male">Male</option>
                                                <option value="FeMale">Female</option>
                                            </f:select>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <input type="file" name="file" id="fileID">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12 text-right">
		                                <input type="button" onclick="fn1()" value="Submit">
                                 </div>
                                 
                               </div>
                            <!--<div class="col-md-6">
                                        <input type="text" name="file" id = "outputId" value="">
                                    </div>-->
                            
                            </div>
                        </div>
                        </f:form>
                    </div>
                    <!-- appoint-card -->
				</div>
				<div class="col-md-4">
					<div class="bg-white pt-4 pl-4 pb-4 pr-4 info-box m-mb-30  radius-5">
						<h5 class="m-text-2 mb-3">Result</h5>
							<div class="media ">
							    <div class="media-body">
							        <textarea placeholder="outputId" type="text" name="file" id = "outputId" value=""></textarea>
							    </div>
							</div>
					</div>
					<div class="bg-white pt-4 pl-4 pb-4 pr-4 info-box m-mtb-20  radius-5">
						<h5 class="m-text-2 mb-3">E-mail & Fax</h5>
							<div class="media ">
							    <div class="media-body">
							        <p class="m-0  fz-poppins">E-mail: name@medim.com</p>
							        <p class="m-0  fz-poppins">Fax: +123 755 755</p>
							    </div>
							</div>
					</div>
				</div>
			</div>
		</div>
	</div>
<!--     </section> -->
	<!-- End Section -->
	
    <!-- Start Section -->
    <!-- <section class="m-pt-140 m-bg-1 m-pb-90">
    	<div class="container">
    		<div class="row">
                <div class="col-sm-10 offset-sm-1 col-md-6 offset-md-0 col-xl-4">
                    <div class="single-service bg-white type-3 radius-10 position-relative service-wrapper s-dp-1-3 h-dp-10-60 m-mb-50">
                        <div class="media">
                         <div class="service-circle position-relative mb-4 text-active bg-white rounded-circle d-flex align-items-center justify-content-center s-dp-1-3">
                            <span class="icon-heart-beat text-grad-1"></span>
                        </div>
                          <div class="media-body">
                             <h4 class="text-dark2 mb-3 position-relative pt-2">Heart Surgery</h4>
                                <p class="mb-4">
                                    Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. 
                                </p>
                                <a href="service-single.html" class="text-default d-inline-block pt-2 fz-poppins text-Underline">
                                    Read More
                                </a>
                          </div>
                        </div>
                    </div> col
                </div>
                <div class="col-sm-10 offset-sm-1 col-md-6 offset-md-0 col-xl-4">
                    <div class="single-service  bg-white type-3 radius-10 position-relative service-wrapper s-dp-1-3 h-dp-10-60 m-mb-50">
                        <div class="media">
                         <div class="service-circle position-relative mb-4 text-active bg-white rounded-circle d-flex align-items-center justify-content-center">
                            <span class="icon-test-tube text-grad-1"></span>
                        </div>
                          <div class="media-body">
                             <h4 class="text-dark2 mb-3 position-relative pt-2">Heart Surgery</h4>
                                <p class="mb-4">
                                    Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. 
                                </p>
                                <a href="service-single.html" class="text-default d-inline-block pt-2 fz-poppins text-Underline">
                                    Read More
                                </a>
                          </div>
                        </div>
                    </div> col
                </div>
                <div class="col-sm-10 offset-sm-1 col-md-6 offset-md-0 col-xl-4">
                    <div class="single-service type-3 bg-white radius-10 position-relative service-wrapper s-dp-1-3 h-dp-10-60 m-mb-50">
                        <div class="media">
                         <div class="service-circle position-relative mb-4 text-active bg-white rounded-circle d-flex align-items-center justify-content-center">
                            <span class="icon-dna text-grad-1"></span>
                        </div>
                          <div class="media-body">
                             <h4 class="text-dark2 mb-3 position-relative pt-2">Heart Surgery</h4>
                                <p class="mb-4">
                                    Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. 
                                </p>
                                <a href="service-single.html" class="text-default d-inline-block pt-2 fz-poppins text-Underline">
                                    Read More
                                </a>
                          </div>
                        </div>
                    </div> col
                </div>
                <div class="col-sm-10 offset-sm-1 col-md-6 offset-md-0 col-xl-4">
                    <div class="single-service type-3 bg-white radius-10 position-relative service-wrapper s-dp-1-3 h-dp-10-60 m-mb-50">
                        <div class="media">
                         <div class="service-circle position-relative mb-4 text-active bg-white rounded-circle d-flex align-items-center justify-content-center">
                             <span class="icon-eye text-grad-1"></span>
                        </div>
                          <div class="media-body">
                             <h4 class="text-dark2 mb-3 position-relative pt-2">Heart Surgery</h4>
                                <p class="mb-4">
                                    Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. 
                                </p>
                                <a href="service-single.html" class="text-default d-inline-block pt-2 fz-poppins text-Underline">
                                    Read More
                                </a>
                          </div>
                        </div>
                    </div> col
                </div>
                <div class="col-sm-10 offset-sm-1 col-md-6 offset-md-0 col-xl-4">
                    <div class="single-service bg-white type-3 radius-10 position-relative service-wrapper s-dp-1-3 h-dp-10-60 m-mb-50">
                        <div class="media">
                         <div class="service-circle position-relative mb-4 text-active bg-white rounded-circle d-flex align-items-center justify-content-center">
                            <span class="icon-teeth text-grad-1"></span>
                        </div>
                          <div class="media-body">
                             <h4 class="text-dark2 mb-3 position-relative pt-2">Heart Surgery</h4>
                                <p class="mb-4">
                                    Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. 
                                </p>
                                <a href="service-single.html" class="text-default d-inline-block pt-2 fz-poppins text-Underline">
                                    Read More
                                </a>
                          </div>
                        </div>
                    </div> col
                </div>
                <div class="col-sm-10 offset-sm-1 col-md-6 offset-md-0 col-xl-4">
                    <div class="single-service type-3 bg-white radius-10 position-relative service-wrapper s-dp-1-3 h-dp-10-60 m-mb-50">
                        <div class="media">
                         <div class="service-circle position-relative mb-4 text-active bg-white rounded-circle d-flex align-items-center justify-content-center">
                            <span class="icon-ambulance text-grad-1"></span>
                        </div>
                          <div class="media-body">
                             <h4 class="text-dark2 mb-3 position-relative pt-2">Heart Surgery</h4>
                                <p class="mb-4">
                                    Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. 
                                </p>
                                <a href="service-single.html" class="text-default d-inline-block pt-2 fz-poppins text-Underline">
                                    Read More
                                </a>
                          </div>
                        </div>
                    </div> col
                </div>
                <div class="col-sm-10 offset-sm-1 col-md-6 offset-md-0 col-xl-4">
                    <div class="single-service type-3 bg-white radius-10 position-relative service-wrapper s-dp-1-3 h-dp-10-60 m-mb-50">
                        <div class="media">
                         <div class="service-circle position-relative mb-4 text-active bg-white rounded-circle d-flex align-items-center justify-content-center">
                             <span class="icon-eye text-grad-1"></span>
                        </div>
                          <div class="media-body">
                             <h4 class="text-dark2 mb-3 position-relative pt-2">Heart Surgery</h4>
                                <p class="mb-4">
                                    Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. 
                                </p>
                                <a href="service-single.html" class="text-default d-inline-block pt-2 fz-poppins text-Underline">
                                    Read More
                                </a>
                          </div>
                        </div>
                    </div> col
                </div>
                <div class="col-sm-10 offset-sm-1 col-md-6 offset-md-0 col-xl-4">
                    <div class="single-service bg-white type-3 radius-10 position-relative service-wrapper s-dp-1-3 h-dp-10-60 m-mb-50">
                        <div class="media">
                         <div class="service-circle position-relative mb-4 text-active bg-white rounded-circle d-flex align-items-center justify-content-center">
                            <span class="icon-teeth text-grad-1"></span>
                        </div>
                          <div class="media-body">
                             <h4 class="text-dark2 mb-3 position-relative pt-2">Heart Surgery</h4>
                                <p class="mb-4">
                                    Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. 
                                </p>
                                <a href="service-single.html" class="text-default d-inline-block pt-2 fz-poppins text-Underline">
                                    Read More
                                </a>
                          </div>
                        </div>
                    </div> col
                </div>
                <div class="col-sm-10 offset-sm-1 col-md-6 offset-md-0 col-xl-4">
                    <div class="single-service type-3 bg-white radius-10 position-relative service-wrapper s-dp-1-3 h-dp-10-60 m-mb-50">
                        <div class="media">
                         <div class="service-circle position-relative mb-4 text-active bg-white rounded-circle d-flex align-items-center justify-content-center">
                            <span class="icon-ambulance text-grad-1"></span>
                        </div>
                          <div class="media-body">
                             <h4 class="text-dark2 mb-3 position-relative pt-2">Heart Surgery</h4>
                                <p class="mb-4">
                                    Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. 
                                </p>
                                <a href="service-single.html" class="text-default d-inline-block pt-2 fz-poppins text-Underline">
                                    Read More
                                </a>
                          </div>
                        </div>
                    </div> col
                </div>
            </div>
    	</div>
    </section> -->
    <!-- End Section -->

    <!-- Start Call to action Section -->
    <section class="parallax-window pt-100 pb-100 position-relative call-to-action type2" data-bg="<%=request.getContextPath()%>/userResources/images/call-to-action-img.png">
        <div class="overlay2 grad-bg-top-btm-1 op-P9"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="text-center">
                        <h2 class="text-white">Do You Need Any Of Our Service?</h2>
                        <p class="text-white">Feel free to drop a line to us and  choose the best care for youself</p>
                        <button class="btn fz-poppins medim-btn solid-btn mt-4 text-medium radius-pill  text-uppercase bg-white text-medium text-active">
                            Contact us
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Call to action Section -->

    <!-- Start footer -->
  	<jsp:include page="footer.jsp"></jsp:include>
    <!-- End footer -->
    <!-- Start scroll-top  Section -->
    <div class="scroll-top">
        <i class="icofont-rounded-up"></i>
    </div>
    <!-- End Section -->

    <!-- js file -->
    <script src="<%=request.getContextPath()%>/userResources/js/jquery-2.2.4.min.js"></script>
       <!-- plugins js -->
    <script src="<%=request.getContextPath()%>/userResources/js/plugins.js"></script>
       <!-- main js -->
    <script src="<%=request.getContextPath()%>/userResources/js/main.js"></script>
</body>
</html>