<header>
        
        <!-- Start Navigation Section -->
        <nav class="navbar bg-white s-dp-1-3 type-2 navbar-fixed navbar-sticky navbar-expand-lg m-navbar bcbd_navbar">
            <div class="container position-relative">
                 <a class="navbar-brand" href="/user/userIndex">
                    <img src="<%=request.getContextPath()%>/userResources/images/logo.png" alt="">
                    <span>GhutKnee</span>
                </a>
                <div class="burger_menu">
                    <span class="navbar-toggler-icon"></span>
                </div><!-- burger menu -->
                <div class="collapse navbar-collapse bcbd_collpase_nav" id="navbarSupportedContent">
                    <div class="nav_outer   mr-auto ml-lg-auto mr-lg-0">
                        <img src="<%=request.getContextPath()%>/userResources/images/logo-white.png" class="d-block d-md-none" alt="">
                        <ul class="navbar-nav bcbd_nav mr-lg-4 ">
                            <li class="nav-item">
                                <a class="nav-link" href="/user/userIndex">   
                                    Home   
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="/user/about">   
                                    About   
                                </a>
                            </li>
<!--                             <li class="nav-item"> -->
<!--                                 <a class="nav-link" href="/user/managedetection">    -->
<!--                                     Manage Detection    -->
<!--                                 </a> -->
<!--                             </li> -->
                            <li class="nav-item hs_dropdown">
                                <a class="nav-link" href="#">Services  </a>
                                <ul class="bcbd_dropdown">
                                    <li >
                                        <a href="/user/loadUploadXray">
                                            Check KL Grade
                                        </a>
                                    </li>
                                    <li >
                                        <a href="/user/appointment">
                                            Book Appointment
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="nav-item hs_dropdown">
                                <a class="nav-link" href="#">Feedback</a>
                                <ul class="bcbd_dropdown">
                                    <li >
                                        <a href="/user/loadUserFeedback">
                                            Provide Feedback
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="nav-item hs_dropdown">
                                <a class="nav-link" href="#">Complaint </a>
                                <ul class="bcbd_dropdown">
                                    <li >
                                        <a href="/user/loadUserInsertComplaint">
                                            File Complaint
                                        </a>
                                    </li>
                                    <li >
                                        <a href="/user/loadUserViewComplaint">
                                            View Complaint
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="/user/contact">   
                                    Contact Us   
                                </a>
                            </li>
                        </ul> <!-- navbar nav -->
                        <div class="navigation_right_area position-relative navbar-search my-lg-0">
                       
                        </div> <!-- navbar search -->
                    </div> <!-- navbar outer -->
                    <div class="navigation_right_area position-relative navbar-search my-lg-0">
                        <form class="form-inline my-2 my-lg-0">
                            <a href="/user/appointment" class="btn fadeInDown-slide position-relative animated no-border bg-transparent medim-btn grad-bg--3 solid-btn mt-0 text-medium radius-pill text-active text-uppercase text-white">
                               Appointment
                            </a>
                        </form>
                    </div> <!-- navbar search -->
                </div> <!-- navbar collpase -->
            </div> <!-- container -->
        </nav>
        <!-- Start Navigation Section -->
    </header>
