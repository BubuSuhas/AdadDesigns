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
<title>Cart</title>
<link rel="icon" type="image/x-icon" href="<c:url value="/resource/images/favicon1.png"/>" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script src="<c:url value="/resource/js/productController.js"/>"></script>
</head>
<body>
	<%@ include file="navbar.jsp"%>
	<!-- checkout -->
	<div class="checkout">
		<div class="container"style="width: auto;  margin:10%; margin-top: 20px;" ng-app="myapp" ng-controller="myController" ng-init="getCart(${cartId})">
		
		<div>	
					<a class="simpleCart_empty btn btn-danger pull-left " ng-click="clearCart()"
						style="margin-right: 15px; margin-left: 20px;font-size: 19px;"> <span
						class="glyphicon glyphicon-remove-sign"> </span>Clear Cart
					</a>
				</div>
				<div>
					<c:url value="/order/${cartId}" var="url1"></c:url>
					<a href="${url1}" class="btn btn-danger pull-left"
						style="margin-right: 15px; margin-left: 20px;font-size: 19px;"> <span
						class="glyphicon glyphicon-shipping-cart"> </span>Check Out
					</a>
				</div>
				<div>
			<h3>Your shopping cart contains: <span>{{carts.cartItem.length}} Products</span></h3>
			</div>
			<div class="checkout-right">
				<table class="timetable_sub">
					<thead>
						<tr>
							<th>SL No.</th>	
							<th>Product</th>
							<th>Quality</th>							
							<th>Unit Price</th>
							<th>Total Price</th>
							<th>Remove</th>
						</tr>
					</thead>
					<tr class="rem1" ng-repeat="cart in carts.cartItem">
						<td class="invert">{{$index + 1}}</td>
						<td class="invert-image"><a href="single.html"><img src="<c:url value="/resource/images/products/{{cart.product.productId}}.jpg"/>" alt=" " class="img-responsive" /></a></td>
						<td class="invert">{{cart.quality}}</td>
						<td class="invert">{{cart.product.productPrice}}</td>
						<td class="invert">{{cart.price}}</td>
						<td class="invert">
							<div class="rem">
								<div ng-click="removeFromCart(cart.cartItemId)" class="close1"> </div>
							</div>
							<script>$(document).ready(function(c) {
								$('.close1').on('click', function(c){
									$('.rem1').fadeOut('slow', function(c){
										$('.rem1').remove();
									});
									});	  
								});
						   </script>
						</td>
					</tr>
								<!--quantity-->
									<script>
									$('.value-plus').on('click', function(){
										var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10)+1;
										divUpd.text(newVal);
									});

									$('.value-minus').on('click', function(){
										var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10)-1;
										if(newVal>=1) divUpd.text(newVal);
									});
									</script>
								<!--quantity-->
				</table>
			</div>
			<div class="checkout-left">	
				<div class="checkout-left-basket">
					<h4>Continue to basket</h4>
					<ul>
						<li ng-repeat="cart in carts.cartItem"><i>-</i>Product {{$index + 1}} <span>{{cart.price}} </span></li>
						<li>Total Service Charges <i>-</i> <span>$15.00</span></li>
						<li>Total <i>-</i> <span>{{calculateGrandTotal()}}</span></li>
					</ul>
				</div>
				<div class="checkout-right-basket">
					<a href="<c:url value="/getAllProducts"/>"><span class="glyphicon glyphicon-menu-left" aria-hidden="true"></span>Continue Shopping</a>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	
	<%@ include file="footer.jsp"%>
</body>
</html>