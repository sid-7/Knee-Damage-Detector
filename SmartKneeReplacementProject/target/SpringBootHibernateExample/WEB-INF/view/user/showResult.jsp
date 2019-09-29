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
	htp.open("get"," http://127.0.0.1:5000/?fileId="+path,true);
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
                                <li class="breadcrumb-item " aria-current="page"><a href="#">Result</a></li>
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