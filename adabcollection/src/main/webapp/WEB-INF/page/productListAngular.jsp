<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product Management</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script src="<c:url value="/resource/js/productController.js"/>"></script>
</head>
<body ng-app="myapp">	

<%@ include file="navbar.jsp"%> 
 <%@ include file="sliderOffers.jsp"%> 
 
 	<div class="dresses">
		<div class="container">
			<div class="w3ls_dresses_grids">
				
				<%@ include file="productListLeftArea.jsp"%> 
 				<%@ include file="productListRightArea.jsp"%> 
				
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>	
</body>
</html>
<%@ include file="footer.jsp"%>