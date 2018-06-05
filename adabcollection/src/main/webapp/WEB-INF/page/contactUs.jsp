<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Contact Us</title>
</head>
<body>
<!-- importing navigation bar -->
<%@ include file="navbar.jsp"%>
 <%@ include file="sliderContactUs.jsp"%> 
<!-- Content -->

<!-- mail -->
	<div class="mail">
		<div class="container">
			<h3>Mail Us</h3>
			<c:if test="${!empty querySuccess}">
				<div class="error" style="color: #ff0000;">${querySuccess}</div>
			</c:if>
			<div class="agile_mail_grids">
				<div class="col-md-5 contact-left">
					<h4>Address</h4>
					<p>est eligendi optio cumque nihil impedit quo minus id quod maxime
						<span>26 56D Rescue,US</span></p>
					<ul>
						<li>Free Phone :+1 078 4589 2456</li>
						<li>Telephone :+1 078 4589 2456</li>
						<li>Fax :+1 078 4589 2456</li>
						<li><a href="mailto:info@example.com">info@example.com</a></li>
					</ul>
				</div>
				<div class="col-md-7 contact-left">
					<h4>Contact Form</h4>
						<c:url value="/contactus" var="url"></c:url>
						<form:form role="form" method="post" action="${url}"
							commandName="contact">
						<form:input type="text" path="subject" name="Name" value="Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}" required="required"></form:input>
						<form:input type="email" path="email" name="Email" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}" required="required"></form:input>
						<form:textarea name="message" path="message" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Message...';}" required=""></form:textarea>
						<button type="submit">Send message</button>
					</form:form>
				</div>
				<div class="clearfix"> </div>
			</div>

			<div class="contact-bottom">
				<iframe src="https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d96908.54934770924!2d-73.74913540000001!3d40.62123259999999!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1sanimal+rescue+service+near+Inwood%2C+New+York%2C+NY%2C+United+States!5e0!3m2!1sen!2sin!4v1436335928062" frameborder="0" style="border:0" allowfullscreen></iframe>
			</div>
					
		</div>
	</div>
<!-- //mail -->
 <%@ include file="footer.jsp"%> 
</body>
</html>