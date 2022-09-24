<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Cart</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
</head>
<body>

	<div class="colorlib-loader"></div>

	<jsp:include page="header.jsp"></jsp:include>

	<div class="breadcrumbs">
		<div class="container">
			<div class="row">
				<div class="col">
					<p class="bread">
						<span><a href="${pageContext.request.contextPath}/home">Home</a></span>
						/ <span>Shopping Cart</span>
					</p>
				</div>
			</div>
		</div>
	</div>

	<div class="colorlib-product">
		<div class="container">
			<div class="row row-pb-lg">
				<div class="col-md-10 offset-md-1">
					<div class="process-wrap">
						<div class="process text-center active">
							<p>
								<span>01</span>
							</p>
							<h3>Shopping Cart</h3>
						</div>
						<div class="process text-center">
							<p>
								<span>02</span>
							</p>
							<h3>Checkout</h3>
						</div>
						<div class="process text-center">
							<p>
								<span>03</span>
							</p>
							<h3>Order Complete</h3>
						</div>
					</div>
				</div>
			</div>

			<div class="row row-pb-lg">
				<div class="col-md-12">
					<div class="product-name d-flex">
						<div class="one-forth text-left px-4">
							<span>Product Details</span>
						</div>
						<div class="one-eight text-center">
							<span>Price</span>
						</div>
						<div class="one-eight text-center">
							<span>Quantity</span>
						</div>
						<div class="one-eight text-center">
							<span>Total</span>
						</div>
						<div class="one-eight text-center px-4">
							<span>Remove</span>
						</div>
					</div>
					<!-- List cart -->
					<c:forEach items="${sessionScope.myCartItems}" var="map">
						<div class="product-cart d-flex">
							<div class="one-forth">
								<%-- <div class="product-img"
									style="background-image: url(${pageContext.request.contextPath}/resources/page/images/product/${map.value.productImage});"></div> --%>
								<div class="product-img">
									<img alt=""
										src="${pageContext.request.contextPath}/resources/page/images/product/${map.value.product.productImage}"
										width="90px" height="100px" />
								</div>
								<div class="display-tc">
									<h3>
										<c:out value="${map.value.product.producerName}"></c:out>
									</h3>
								</div>
							</div>
							<div class="one-eight text-center">
								<div class="display-tc">
									<span class="price">$<c:out
											value="${map.value.product.productPrice}"></c:out></span>
								</div>
							</div>
							<div class="one-eight text-center">
								<div class="display-tc">
									<input type="text" id="quantity" name="quantity"
										class="form-control input-number text-center"
										value='<c:out value="${map.value.quantity}"></c:out>' min="1"
										max="100">
								</div>
							</div>
							<div class="one-eight text-center">
								<div class="display-tc">
									<span class="price">$<c:out
											value="${map.value.product.productPrice}"></c:out></span>
								</div>
							</div>
							<div class="one-eight text-center">
								<div class="display-tc">
									<a href="${pageContext.request.contextPath}/cart/remove/${map.value.product.productId}" class="closed"></a>
								</div>
							</div>
						</div>
					</c:forEach>

				</div>
				
			</div>
			
			<div class="row row-pb-lg">
				<div class="col-md-12">
					<div class="total-wrap">
						<div class="row">
							<div class="col-sm-8">
								<form action="#">
									<div class="row form-group">
										<div class="col-sm-9">
											<input type="text" name="quantity"
												class="form-control input-number"
												placeholder="Your Coupon Number...">
										</div>
										<div class="col-sm-3">
											<input type="submit" value="Apply Coupon"
												class="btn btn-primary">
										</div>
									</div>
								</form>
							</div>
							<div class="col-sm-4 text-center">
								<div class="total">
									<div class="sub">
										<p>
											<span>Subtotal:</span> <span>$${sessionScope.myCartTotal}</span>
										</p>
										<p>
											<span>Delivery:</span> <span>$0.00</span>
										</p>
										<p>
											<span>Discount:</span> <span>$45.00</span>
										</p>
									</div>
									<div class="grand-total">
										<p>
											<span><strong>Total:</strong></span> <span>$${sessionScope.myCartTotal}</span>
										</p>
									</div>
								</div>
								<a class="btn btn-primary" href="${pageContext.request.contextPath}/checkout">Checkout</a>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="row">
				<div
					class="col-sm-8 offset-sm-2 text-center colorlib-heading colorlib-heading-sm">
					<h2>Related Products</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-3 col-lg-3 mb-4 text-center">
					<div class="product-entry border">
						<a href="#" class="prod-img"> <img
							src="${pageContext.request.contextPath}/resources/page/images/item-1.jpg"
							class="img-fluid" alt="Free html5 bootstrap 4 template">
						</a>
						<div class="desc">
							<h2>
								<a href="#">Women's Boots Shoes Maca</a>
							</h2>
							<span class="price">$139.00</span>
						</div>
					</div>
				</div>
				<div class="col-md-3 col-lg-3 mb-4 text-center">
					<div class="product-entry border">
						<a href="#" class="prod-img"> <img
							src="${pageContext.request.contextPath}/resources/page/images/item-2.jpg"
							class="img-fluid" alt="Free html5 bootstrap 4 template">
						</a>
						<div class="desc">
							<h2>
								<a href="#">Women's Minam Meaghan</a>
							</h2>
							<span class="price">$139.00</span>
						</div>
					</div>
				</div>
				<div class="col-md-3 col-lg-3 mb-4 text-center">
					<div class="product-entry border">
						<a href="#" class="prod-img"> <img
							src="${pageContext.request.contextPath}/resources/page/images/item-3.jpg"
							class="img-fluid" alt="Free html5 bootstrap 4 template">
						</a>
						<div class="desc">
							<h2>
								<a href="#">Men's Taja Commissioner</a>
							</h2>
							<span class="price">$139.00</span>
						</div>
					</div>
				</div>
				<div class="col-md-3 col-lg-3 mb-4 text-center">
					<div class="product-entry border">
						<a href="#" class="prod-img"> <img
							src="${pageContext.request.contextPath}/resources/page/images/item-4.jpg"
							class="img-fluid" alt="Free html5 bootstrap 4 template">
						</a>
						<div class="desc">
							<h2>
								<a href="#">Russ Men's Sneakers</a>
							</h2>
							<span class="price">$139.00</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>

