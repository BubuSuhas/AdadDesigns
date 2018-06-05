
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
<!-- Right -->

<div ng-controller="myController" ng-init="getProductList()"  class="col-md-8 w3ls_dresses_grid_right">
					<div class="col-md-6 w3ls_dresses_grid_right_left">
						<div class="w3ls_dresses_grid_right_grid1">
							<img src="<c:url value="/resource/images/49-.jpg"/>" alt=" " class="img-responsive" />
							<div class="w3ls_dresses_grid_right_grid1_pos1">
								<h3>Winter Wear <span>Leather</span> Coat</h3>
							</div>
						</div>
					</div>
					<div class="col-md-6 w3ls_dresses_grid_right_left">
						<div class="w3ls_dresses_grid_right_grid1">
							<img src="<c:url value="/resource/images/48-.jpg"/>" alt=" " class="img-responsive" />
							<div class="w3ls_dresses_grid_right_grid1_pos">
								<h3>Winter <span>Wool</span> Top</h3>
							</div>
						</div>
					</div>
					<div class="clearfix"> </div>

						<div class="w3ls_dresses_grid_right_grid2">
						<div class="w3ls_dresses_grid_right_grid2_left">
							
							 
						</div>
						<div class="w3ls_dresses_grid_right_grid2_right">
							<select name="select_item" class="select_item">
								<option selected="selected">Default sorting</option>
								<option>Sort by popularity</option>
								<option>Sort by average rating</option>
								<option>Sort by newness</option>
								<option>Sort by price: low to high</option>
								<option>Sort by price: high to low</option>
							</select>
						</div>
						<div class="clearfix"> </div>
					</div>										
					<div class="w3ls_dresses_grid_right_grid3">	
					
					<c:forEach items="${products}" var="p">
					<div class="col-md-4 agileinfo_new_products_grid agileinfo_new_products_grid_dresses">
							<div class="agile_ecommerce_tab_left dresses_grid">
								<div class="hs-wrapper hs-wrapper2">
									<img src="<c:url value="/resource/images/products/${p.productId}.jpg"/>" alt=" " class="img-responsive" />
									<img src="<c:url value="/resource/images/products/${p.productId}.jpg"/>" alt=" " class="img-responsive" />
									<img src="<c:url value="/resource/images/products/${p.productId}.jpg"/>" alt=" " class="img-responsive" />
									<img src="<c:url value="/resource/images/products/${p.productId}.jpg"/>" alt=" " class="img-responsive" />
									<img src="<c:url value="/resource/images/products/${p.productId}.jpg"/>" alt=" " class="img-responsive" />
									<img src="<c:url value="/resource/images/products/${p.productId}.jpg"/>" alt=" " class="img-responsive" />
									<img src="<c:url value="/resource/images/products/${p.productId}.jpg"/>" alt=" " class="img-responsive" />
									<img src="<c:url value="/resource/images/products/${p.productId}.jpg"/>" alt=" " class="img-responsive" />
									<div class="w3_hs_bottom w3_hs_bottom_sub1">
										<ul>
											<li>
												<a href="#" data-toggle="modal" data-target="#myModal_${p.productId}"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
											</li>
										</ul>
									</div>
								</div>
								<h5><a href="single.html">${p.productName}</a></h5>
								<div class="simpleCart_shelfItem">
									<p><span>${p.productPrice}</span> <i class="item_price">${ p.discount}</i></p>
									<security:authorize ifAnyGranted="ROLE_USER">
									<p><a class="item_add" href="#" ng-click="addToCart(${p.productId})">Add to cart</a></p>
									</security:authorize>
									<security:authorize ifAnyGranted="ROLE_ADMIN">
										<p><a class="item_add" href="admin/product/editProduct/{{b.productId}}">EDIT</a>
										<a class="item_remove" href="admin/delete/{{b.productId}}">REMOVE</a></p>
									</security:authorize>
								</div>
							</div> 							
						</div>
					</c:forEach>											
						<div class="clearfix"> </div>
									
				</div>
			</div>
<!-- //Right -->
</body>
</html>


	