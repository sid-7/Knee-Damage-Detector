<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript" >

function fn1()
	{
		
		var htp=new XMLHttpRequest();
		
		htp.onreadystatechange=function(){
		
			if(htp.readyState==4){
				
				
				alert(htp.responseText);
			}
		}
	htp.open("get"," http://127.0.0.1:5000/",true);
	htp.send();
}

</script>
</head>
<body>
	<input type="button" value="Detection" onclick="fn1()">
</body>
</html>