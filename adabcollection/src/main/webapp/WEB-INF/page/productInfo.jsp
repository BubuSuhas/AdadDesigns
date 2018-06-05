<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>

<div class="modal video-modal fade" id="myModal_{{p.productId}}" tabindex="-1" role="dialog" aria-labelledby="myModal_{{p.productId}}">
											<div class="modal-dialog" role="document">
												<div class="modal-content">
													<div class="modal-header">
														<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
													</div>
													<section>
														<div class="modal-body">
															<div class="col-md-5 modal_body_left">
																<img ng-src="<c:url value="/resource/images/products/{{p.productId}}.jpg"/>" alt=" " class="img-responsive" />
															</div>
															<div class="col-md-7 modal_body_right">
																<h4>{{ p.summary }}</h4>
																<p>{{ p.productDescription }}</p>
																<p>Size Available  : {{ p.size }}</p>
																<p>Colors Available: {{ p.colour }}</p>
																<div class="rating">
																	<div ng-repeat="i in p.rating track by $index" class="rating-left">
																		<img src="<c:url value="/resource/images/star-.png"/>"  alt=" " class="img-responsive" />
																	</div>																	
																	<div ng-repeat="n in range(p.rating.length,4)" class="rating-left">
																		<img src="<c:url value="/resource/images/star.png"/>"  alt=" " class="img-responsive" />
																	</div>
																	<div class="clearfix"> </div>
																</div>
																<div class="modal_body_right_cart simpleCart_shelfItem">
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
															<div class="clearfix"> </div>
														</div>
													</section>
												</div>
										</div>
	</div>
</body>
</html>
