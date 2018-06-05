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
</head>
<body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>	
<!-- banner-bottom -->
<div class="banner-bottom">
		<div class="container">
		<div class="col-md-5 wthree_banner_bottom_left">
				<div class="video-img">
					<a class="play-icon popup-with-zoom-anim" href="#small-dialog">
						<span class="glyphicon glyphicon-expand" aria-hidden="true"></span>
					</a>
				</div>
				<!-- pop-up-box -->    
																
						<script src="<c:url value="/resource/js/jquery.magnific-popup.js"/>"></script>
						

					<!--//pop-up-box -->
					<div id="small-dialog" class="mfp-hide">
						<iframe src="https://player.vimeo.com/video/23259282?title=0&byline=0&portrait=0"></iframe>
					</div>
					<script>
						$(document).ready(function() {
						$('.popup-with-zoom-anim').magnificPopup({
							type: 'inline',
							fixedContentPos: false,
							fixedBgPos: true,
							overflowY: 'auto',
							closeBtnInside: true,
							preloader: false,
							midClick: true,
							removalDelay: 300,
							mainClass: 'my-mfp-zoom-in'
						});
																						
						});
					</script>
			</div>
			<div class="col-md-7 wthree_banner_bottom_right">
				<div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs" >
					<ul id="myTab" class="nav nav-tabs" role="tablist">
						<li ng-repeat="category in categoryList" role="presentation" class=""><a href="#{{category.catergoryname}}" id="{{category.catergoryname}}-tab" role="tab" data-toggle="tab" aria-controls="{{category.catergoryname}}">{{category.catergoryname}}</a></li>
					</ul>										
					<div id="myTabContent" class="tab-content">												
							<div ng-repeat="category in categoryList" role="tabpanel" class="tab-pane fade in" id="{{category.catergoryname}}" aria-labelledby="{{category.catergoryname}}-tab">
								<div class="agile_ecommerce_tabs" ng-init="getProductByCategory(category.catergoryname)">	
								<div ng-repeat="p in productsByCategory">																						
										<div  class="col-md-4 agile_ecommerce_tab_left">
											<div class="hs-wrapper">																											
														<img ng-src="<c:url value="/resource/images/products/{{p.productId}}.jpg"/>" alt=" " class="img-responsive" />
														<img ng-src="<c:url value="/resource/images/products/{{p.productId}}.jpg"/>" alt=" " class="img-responsive" />
														<img ng-src="<c:url value="/resource/images/products/{{p.productId}}.jpg"/>" alt=" " class="img-responsive" />
														<img ng-src="<c:url value="/resource/images/products/{{p.productId}}.jpg"/>" alt=" " class="img-responsive" />
														<img ng-src="<c:url value="/resource/images/products/{{p.productId}}.jpg"/>" alt=" " class="img-responsive" />
														<img ng-src="<c:url value="/resource/images/products/{{p.productId}}.jpg"/>" alt=" " class="img-responsive" />
														<img ng-src="<c:url value="/resource/images/products/{{p.productId}}.jpg"/>" alt=" " class="img-responsive" />
														<img ng-src="<c:url value="/resource/images/products/{{p.productId}}.jpg"/>" alt=" " class="img-responsive" />															
												<div class="w3_hs_bottom">
													<ul>
														<li>
															<a href="#" data-toggle="modal" data-target="#myModal_{{p.productId}}"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
														</li>
													</ul>
												</div>
											</div>
											<h5><a href="#" data-toggle="modal" data-target="#myModal_{{p.productId}}">{{ p.productName }}</a></h5>
											<div class="simpleCart_shelfItem">
												<p><span>{{ p.productPrice }}</span> <i class="item_price">{{ p.discount }}</i></p>
												<security:authorize ifAnyGranted="ROLE_USER">
													<p><a class="item_add" href="#" ng-click="addToCart(${p.productId})">Add to cart</a></p>
												</security:authorize>
												<security:authorize ifAnyGranted="ROLE_ADMIN">
														<p><a class="item_add" href="admin/product/editProduct/{{b.productId}}">EDIT</a>
														<a class="item_remove" href="admin/delete/{{b.productId}}">REMOVE</a></p>
												</security:authorize>
											</div>
										</div>
 <%@ include file="productInfo.jsp"%> 
									</div>
								</div>
							</div>									
							<div class="clearfix"> </div>						
					</div>		
				</div>	
			</div>
		</div>
	</div>
<!-- //banner-bottom -->

								
</body>
</html>