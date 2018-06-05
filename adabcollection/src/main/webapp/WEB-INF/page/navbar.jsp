<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		
<link rel="stylesheet" href="<c:url value="/resource/css/bootstrap.css"/>">
<link rel="stylesheet" href="<c:url value="/resource/css/newstyle.css"/>">
<link rel="stylesheet" href="<c:url value="/resource/css/fasthover.css"/>">
<script src="<c:url value="/resource/js/jquery.min.js"/>"></script>
<link rel="stylesheet" href="<c:url value="/resource/css/jquery.countdown.css"/>">



<script src="<c:url value="/resource/js/simpleCart.min.js"/>"></script>
<script src="<c:url value="/resource/js/bootstrap-3.1.1.min.js"/>"></script>


<!-- //for bootstrap working -->
<link href='//fonts.googleapis.com/css?family=Glegoo:400,700' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="<c:url value="/resource/css/popuo-box.css"/>">	

<script src="<c:url value="/resource/js/jquery.wmuSlider.js"/>"></script>
<script src="<c:url value="/resource/js/jquery.flexisel.js"/>"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script src="<c:url value="/resource/js/productController.js"/>"></script>
<title>Women's Fashion a Ecommerce Online Shopping Category Flat Bootstrap Responsive Website Template | Home :: w3layouts</title>

<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<!-- start-smooth-scrolling -->
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
		if ($(".loginError").text() != null && $(".loginError").text() != ''){
			$("#w3l_login").trigger("click");
		}
	});
</script>
<!-- //end-smooth-scrolling -->

</head>
<body ng-app="myapp" ng-controller="myController" ng-init="getCategoryList()">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<!-- header -->
	<div class="modal fade" id="myModal88" tabindex="-1" role="dialog" aria-labelledby="myModal88"
		aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
						&times;</button>
					<h4 class="modal-title" id="myModalLabel">
						Don't Wait, Login now!</h4>
				</div>
				<div class="modal-body modal-body-sub">
					<div class="row">
						<c:if test="${!empty querySuccess}">
						<div class="error loginError" style="color: #ff0000;">${querySuccess}</div>
					</c:if>

					<!-- will display after registration form registerd successfully -->
					<c:if test="${not empty registrationSuccess}">
						<div class="error loginError" style="color: #ff0000;">${registrationSuccess}</div>
					</c:if>
					<!-- will display after logged out successfull -->
					<c:if test="${not empty logout}">
						<div class="error loginError" style="color: #ff0000;">${logout}</div>
					</c:if>

					<form name="loginForm"
						action="<c:url value="/j_spring_security_check"/>" method="post">
						<fieldset>
							<div class="form-group">
								<input class="form-control" placeholder="E-mail"
									name="j_username" type="email">
							</div>
							<div class="form-group">
								<input class="form-control" placeholder="Password"
									name="j_password" type="password">
							</div>
							<div class="checkbox">
								<c:if test="${not empty error}">
									<div class="error loginError" style="color: #ff0000">${error}</div>
								</c:if>
							</div>
							<!-- Change this to a button or input when using this as a form -->
							<div id="button">
								<button type="submit" class="btn btn-sm btn-success"
									style="margin-right: 79px; margin-left: 60px">Login</button>
								<a href="<c:url value="/customer/registration"/>"
									class="btn btn-sm btn-success">Register</a>
							</div>
						</fieldset>
					</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div class="header">
		<div class="container">
			<div class="w3l_login">				
				<c:choose>
				    <c:when test="${!empty pageContext.request.userPrincipal.name}">			        
							<a href="<c:url value="/j_spring_security_logout" />"><span
			 				class="glyphicon glyphicon-log-out"></span></a>	
				    </c:when>
				    <c:otherwise>
				       <a href="#" id="w3l_login" data-toggle="modal" data-target="#myModal88"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></a>
				    </c:otherwise>
				</c:choose>
			</div>
			<div class="w3l_login">							        
							<span class="">${pageContext.request.userPrincipal.name} </span>	
			</div>
			<div class="w3l_logo">
				<h1><a href="index.html">ADAB COLLECTION<span>For Fashion Lovers</span></a></h1>
			</div>
			<div class="cart box_1">
				<a href="<c:url value="/cart/getCartById" />">
					<div class="total">
					<span class="simpleCart_total"></span> (<span id="simpleCart_quantity"class="simpleCart_quantity" ></span> items)</div>
					<img src="<c:url value="/resource/images/bag.png"/>" alt="" />
				</a>
				<div class="clearfix"> </div>
			</div>	
			<div class="clearfix"> </div>
		</div>
	</div>
	<div class="navigation">
		<div class="container">
			<nav class="navbar navbar-default">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header nav_2">
					<button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
				</div> 
				<div  class="collapse navbar-collapse" id="bs-megadropdown-tabs">
					<ul class="nav navbar-nav">
						<li class="active"><a href="<c:url value="/index"/>" class="act">Home</a></li>	
						<!-- Mega Menu -->
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">Products <b class="caret"></b></a>
							<ul class="dropdown-menu multi-column columns-3">
								<div class="row">
									<div class="col-sm-3">
										<ul class="multi-column-dropdown">
											<h6>Clothing</h6>																					
											<li ng-repeat="category in categoryList"><a href="<c:url value="/getAllProductsbyCategory/{{category.catergoryname}}"/>">{{category.catergoryname}}<span>New</span></a></li>
											
										</ul>
									</div>
									<div class="clearfix"></div>
								</div>							
							</ul>
						</li>
						<security:authorize access="!hasRole('ROLE_ADMIN')">
							<li><a href="<c:url value="/aboutus"/>">About Us</a></li>						
							<li><a href=" <c:url value="/contactus" />">Contact Us</a></li>
						</security:authorize>
						<!-- Only admin can view this link -->
						<security:authorize access="hasRole('ROLE_ADMIN')">
							<li><a href=" <c:url value="/admin/product/addProduct" />">Add Product</a></li>
							<li><a href=" <c:url value="/admin/product/addProduct" />">View Queries</a></li>
						</security:authorize>
					</ul>
				</div>
			</nav>
		</div>	
	</div>
<!-- //header -->


</body>
</html>