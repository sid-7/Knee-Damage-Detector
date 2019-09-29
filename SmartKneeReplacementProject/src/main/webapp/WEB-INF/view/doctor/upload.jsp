<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <meta name="description" content="">
    <title>Cosmos</title>
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
    
    <link rel="icon" type="image/png" href="<%=request.getContextPath()%>/adminResources/images/-32x32.png" sizes="32x32">
    <link rel="icon" type="image/png" href="<%=request.getContextPath()%>/adminResources/images/favicon-16x16.png" sizes="16x16">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,400i,500,700" rel="stylesheet">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/vendor.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/cosmos.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/application.min.css">
  </head>
  <body class="layout layout-header-fixed layout-left-sidebar-fixed">
    <div class="site-overlay"></div>
    
    
     <!-- header-start -->
    <jsp:include page="header.jsp"></jsp:include>
    <!-- header-end -->
    
    
    
    <div class="site-main">
      <div class="site-left-sidebar">
        <div class="sidebar-backdrop"></div>
        
        
        <!-- menu-start -->
          <jsp:include page="doctorMenu.jsp"></jsp:include>
        <!-- menu-end -->
        
        
        
        
      </div>
      
      <div class="site-content">
        <div class="panel panel-default">
          <div class="panel-heading">
            <h3 class="m-y-0">Upload X-ray</h3>
          </div>
          <div class="panel-body">
            <div class="row">
              <div class="col-sm-8 col-sm-offset-2 col-md-6 col-md-offset-3">
               <f:form enctype="multipart/form-data" data-toggle="validator" action="uploadDoctorXray" modelAttribute="xrayupload" method="post">                                
                  <div class="form-group">
                    <label class="col-sm-3 control-label" for="form-control-22">Upload X-ray</label>
                    
                  </div>  
                  <div class="col-md-6">
                          <input type="file" name="file" id="fileID">
                  </div>
                 
                                <div class="row">
                                    <div class="col-md-12 text-right">
		                                <input type="button" onclick="fn1()" value="Submit">
                                     </div>
                                </div>           
                </f:form>
                
						<h5 class="m-text-2 mb-3">Result</h5>
							<div class="media ">
							    <div class="media-body">
							        <input type="text" name="file" id = "outputId" value="">
							    </div>
							    </div>
				
              </div>
            </div>
          </div>
		</div>
     

      <!-- footer-start -->
      <jsp:include page="footer.jsp"></jsp:include>
      <!-- footer-end -->
     
     
     
     
    </div>
    </div>
    <script src="<%=request.getContextPath()%>/adminResources/js/vendor.min.js"></script>
    <script src="<%=request.getContextPath()%>/adminResources/js/cosmos.min.js"></script>
    <script src="<%=request.getContextPath()%>/adminResources/js/application.min.js"></script>
  </body>
</html>