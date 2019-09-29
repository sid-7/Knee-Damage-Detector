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
    color: #00BFFF;
    text-shadow:1px 1px blue, 2px 2px #00008B, .1em .1em .2em rgba(0,0,0,.5);
}

.rating:not(:checked) > label:hover,
.rating:not(:checked) > label:hover ~ label {
    color: #00BFFF;
    text-shadow:1px 1px blue, 2px 2px #00008B, .1em .1em .2em rgba(0,0,0,.5);
}

.rating > input:checked + label:hover,
.rating > input:checked + label:hover ~ label,
.rating > input:checked ~ label:hover,
.rating > input:checked ~ label:hover ~ label,
.rating > label:hover ~ input:checked ~ label {
    color: #00BFFF;
    text-shadow:1px 1px blue, 2px 2px #0008B, .1em .1em .2em rgba(0,0,0,.5);
}

.rating > label:active {
    position:relative;
    top:2px;
    left:2px;
}


</style>
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
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
	<!-- Start Section -->
	<f:form action="postUserRating" modelAttribute="feedbackpost" method="post">
	<div class="m-bg-1 m-pt-140 m-pb-120">
		<div class="container">
			<div class="row">
				<div class="col-md-8">
					<div class="appoint-card border-light type-3 radius-20 bg-white  position-relative m-pt-50 m-pb-50 ">
						<div class="row">
							<div class="col-md-12">
								<h3 class="m-text-2 pb-35 mb-0">PROVIDE FEEDBACK</h3>
							</div>
						</div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="row">
                                    <div class="col-md-6">
                                        <f:textarea path="feedback" placeholder="Please Provide Your Feedback" class="form-control fz-poppins m-mb-20" rows="3" required="required"/>
  										<f:hidden path="id"/>                                  
                                    </div> 
                                </div>
                                <div class="rating">
					  				<h5><span class="control-label">Rating</span></h5>
								    <f:radiobutton id="star5" path="rating" value="5" /><label for="star5" title="Rocks!"><span class="fa fa-star checked"></span></label>
								    <f:radiobutton id="star4" path="rating" value="4" /><label for="star4" title="Pretty good"><span class="fa fa-star checked"></span></label>
							        <f:radiobutton id="star3" path="rating" value="3" /><label for="star3" title="Meh"><span class="fa fa-star checked"></span></label>
							        <f:radiobutton id="star2" path="rating" value="2" /><label for="star2" title="Kinda bad"><span class="fa fa-star checked"></span></label>
							        <f:radiobutton id="star1" path="rating" value="1" /><label for="star1" title="Sucks big time"><span class="fa fa-star checked"></span></label>
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
                    </div> <!-- appoint-card -->
				</div>
			</div>
		</div>
	</div>
	</f:form>
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
    <script type="text/javascript">
	    $('.rating input').change(function () {
	    	  var $radio = $(this);
	    	  $('.rating .selected').removeClass('selected');
	    	  $radio.closest('label').addClass('selected');
	    	});
        </script>
 </body>
 
 </html>