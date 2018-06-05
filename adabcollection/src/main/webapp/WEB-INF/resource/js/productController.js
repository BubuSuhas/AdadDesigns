var app = angular.module("myapp", []).controller(
		"myController",
		function($scope, $http) {

			var BASE_PATH = "http://localhost:8080/adabcollection";

			$scope.getProductList = function() {
				$http.get(BASE_PATH + "/getProductsList")
						.success(function(data) {
							$scope.products = data;
						});
			}
			$scope.getCategoryList = function() {
				$http.get(BASE_PATH + "/getCategoryList")
						.success(function(data) {
							$scope.categoryList = data;
							alert("suhas"+ data);
						});
			}			
			$scope.getProductByCategory = function(categoryID) {
				$http.get(BASE_PATH + "/getProductByCategory/"+categoryID)
						.success(function(data) {
							$scope.productsByCategory = data;
						});
			}
			$scope.addToCart = function(productId) {
				$http.put(BASE_PATH + "/cart/add/" + productId)
						.success(function() {
							alert("Added Successfully");
						})
			}

			$scope.refreshCart = function() {
				$http.get(BASE_PATH + "/cart/getCart/"
								+ $scope.cartId).success(function(data) {

					$scope.carts = data;
				})
			}

			$scope.getCart = function(cartId) {
				$scope.cartId = cartId;
				$scope.refreshCart(cartId);
			}
			$scope.removeFromCart = function(cartItemId) {
				$http.put(BASE_PATH +"/cart/removeCartItem/"
								+ cartItemId).success(function() {
					$scope.refreshCart();
				});
			}

			$scope.clearCart = function() {
				$http.put(BASE_PATH + "/cart/removeAllItems/"
								+ $scope.cartId).success(function() {
					$scope.refreshCart();
				});
			}

			$scope.calculateGrandTotal = function() {
				var grandTotal = 0.0;
				for (var i = 0; i < $scope.carts.cartItem.length; i++)
					grandTotal = grandTotal + $scope.carts.cartItem[i].price;
				return grandTotal;

			}
			$scope.getNumber = function(num) {
			    return new Array(num);   
			}
			$scope.range = function(min, max, step) {
			    step = step || 1;
			    var input = [];
			    for (var i = min; i <= max; i += step) {
			        input.push(i);
			    }
			    return input;
			}
		});