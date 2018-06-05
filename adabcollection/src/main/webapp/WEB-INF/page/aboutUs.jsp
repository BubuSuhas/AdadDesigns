<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>AboutUs</title>
</head>

<body>

<!-- importing navigation bar -->
<%@ include file="navbar.jsp"%>
 <%@ include file="sliderAboutUs.jsp"%> 
<!-- Content -->

<!-- about -->
	<div class="about">
		<div class="container">	
			<div class="w3ls_about_grids">
				<div class="col-md-6 w3ls_about_grid_left">
					<p>Duis aute irure dolor in reprehenderit in voluptate velit esse 
						cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat 
						cupidatat non proident, sunt in culpa qui officia deserunt mollit 
						anim id est laborum.</p>
					<div class="col-xs-2 w3ls_about_grid_left1">
						<span class="glyphicon glyphicon-new-window" aria-hidden="true"></span>
					</div>
					<div class="col-xs-10 w3ls_about_grid_left2">
						<p>Sunt in culpa qui officia deserunt mollit 
							anim id est laborum.Duis aute irure dolor in reprehenderit in voluptate velit esse 
						cillum dolore eu fugiat nulla pariatur.</p>
					</div>
					<div class="clearfix"> </div>
					<div class="col-xs-2 w3ls_about_grid_left1">
						<span class="glyphicon glyphicon-flash" aria-hidden="true"></span>
					</div>
					<div class="col-xs-10 w3ls_about_grid_left2">
						<p>Sunt in culpa qui officia deserunt mollit 
							anim id est laborum.Duis aute irure dolor in reprehenderit in voluptate velit esse 
						cillum dolore eu fugiat nulla pariatur.</p>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="col-md-6 w3ls_about_grid_right">
					<img src="<c:url value="/resource/images/77.jpg"/>" alt=" " class="img-responsive" />
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
<!-- //about -->

<!-- team -->
	<div class="team">
		<div class="container">
			<h3>Meet Our Team</h3>
			<div class="wthree_team_grids">
				<div class="col-md-3 wthree_team_grid">
					<img src="<c:url value="/resource/images/8.png"/>" alt=" " class="img-responsive" />
					<h4>Smith Allen <span>Fashion Designer</span></h4>
					<div class="agileits_social_button">
						<ul>
							<li><a href="#" class="facebook"> </a></li>
							<li><a href="#" class="twitter"> </a></li>
							<li><a href="#" class="google"> </a></li>
							<li><a href="#" class="pinterest"> </a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-3 wthree_team_grid">
					<img src="<c:url value="/resource/images/9.png"/>" alt=" " class="img-responsive" />
					<h4>Laura James <span>Fashion Designer</span></h4>
					<div class="agileits_social_button">
						<ul>
							<li><a href="#" class="facebook"> </a></li>
							<li><a href="#" class="twitter"> </a></li>
							<li><a href="#" class="google"> </a></li>
							<li><a href="#" class="pinterest"> </a></li>
						</ul>
					</div>
				</div>
				<div class="clearfix"> </div>
				<p>Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis 
					voluptatibus maiores alias consequatur aut perferendis doloribus asperiores 
					repellat.</p>
			</div>
		</div>
	</div>
<!-- //team -->
<!-- team-bottom -->
	<div class="team-bottom">
		<div class="container">
			<h3>Are You Ready For Awesomeness? Flat <span>50% Offer</span> For Women's</h3>
			<p>Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis 
				voluptatibus maiores alias consequatur aut perferendis doloribus asperiores 
				repellat.</p>
			<a href="<c:url value="/getAllProducts"/>">Shop Now</a>
		</div>
	</div>
<!-- //team-bottom -->
	
<!-- 	importing footer  -->
<%@ include file="footer.jsp"%> 

</body>
</html>