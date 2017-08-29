<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home page</title>
<!-- plugin -->
<link rel="stylesheet" href="<s:url value="/public/plugin/bootstrap/css/bootstrap.min.css" />"/>
<script src="${pageContext.request.contextPath}/public/plugin/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/public/plugin/bootstrap/js/bootstrap.min.js"></script>
<!-- layout -->
<link rel="stylesheet" type="text/css" href="<s:url value="/public/css/main.css"/>"/>
<link rel="stylesheet" type="text/css" href="<s:url value="/public/css/menu.css"/>"/>
<!-- icon -->
<link rel="icon" href="${pageContext.request.contextPath}/public/favicon.ico">
</head>
<body>
	<!-- header -->
	<jsp:include page="header.jsp"></jsp:include>
	<!-- banner -->
	<div class="banner">
		<div class="container">
		</div>
	</div>
	<!-- section -->
	<div class="welcome">
		<div class="container">
			<div class="row">
				<div class="col-md-3 welcome-left">
					<h2>Welcome to our site</h2>
				</div>
				<div class="col-md-9 welcome-right">
					<h3></h3>
					<p>Hello World</p>
				</div>
			</div>
		</div>
	</div>
	<!--  -->
	<div class="bride-grids">
		<div class="container">
			<div class="row">
				<div class="col-md-4 brid-grid">
					<div class="content-grid l-grids">
						<figure class="effect-bubba">
							<img src="public/images/b1.jpg" alt="" width="350px;" height="214px;"/>
							<figcaption>
								<h4>Wedding Dresses</h4>
								<p></p>
							</figcaption>
						</figure>
						<div class="clearfix"></div>
						<h3>Wedding Dresses</h3>
					</div>
					<div class="content-grid l-grids">
						<figure class="effect-bubba">
							<img src="public/images/b2.jpg" alt="" width="350px;" height="214px;"/>
							<figcaption>
								<h4>BridalParty & Dresses</h4>
								<p></p>
							</figcaption>
						</figure>
						<div class="clearfix"></div>
						<h3>BridalParty & Dresses</h3>
					</div>
				</div>
				<div class="col-md-4 brid-grid">
					<div class="content-grid l-grids">
						<figure class="effect-bubba">
							<img src="public/images/brid.jpg" alt=""/>
							<figcaption>
								<h4>Bridesmaid Dresses</h4>
								<p></p>
							</figcaption>
						</figure>
						<div class="clearfix"></div>
						<h3>Bridesmaid Dresses</h3>
					</div>
				</div>
				<div class="col-md-4 brid-grid">
					<div class="content-grid l-grids">
						<figure class="effect-bubba">
							<img src="public/images/b3.jpg" alt="" width="350px;" height="auto"/>
							<figcaption>
								<h4>Wedding</h4>
								<p></p>
							</figcaption>
						</figure>
						<div class="clearfix"></div>
						<h3>Wedding</h3>
					</div>
					<div class="content-grid l-grids">
						<figure class="effect-bubba">
							<img src="public/images/b4.jpg" width="350px;" height="214px;"/>
							<figcaption>
								<h4>Most Beautiful</h4>
								<p></p>
							</figcaption>
						</figure>
						<div class="clearfix"></div>
						<h3>Most Beautiful</h3>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--  -->
	<div class="featured">
		<div class="container">
			<h3>Featured Product</h3>
			<div class="feature-grids">
				<div class="row">
					<div class="col-md-3 feature-grid jewel">
						<a href="product.html">
							<img src="public/images/f1.jpg" alt="">
							<div class="arrival-info">
								<h4>Jewellery #1</h4>
								<p>$300</p>
								<span class="pric1"><del>$500</del></span>
								<span class="disc">[12% Off]</span>
							</div>
							<div class="viw">
								<a href="product.jsp"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>Quick View</a>
							</div>
							<div class="shrt">
								<a href="product.html"><span class="glyphicon glyphicon-star" aria-hidden="true">ShortList</span></a>
							</div>
						</a>
					</div>
					
					<div class="col-md-3 feature-grid ">
						<a href="product.html">
							<img src="public/images/f2.jpg" alt=""/>
							<div class="arrival-info">
								<h4>Jewellerys #1</h4>
								<p>$120</p>
								<span class="pric1"><del>$200</del></span>
								<span class="disc">[10% Off]</span>
							</div>
							<div class="viw">
								<a href="product.html"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>Quick View</a>
							</div>
							<div class="shrt">
								<a href="product.html"><span class="glyphicon glyphicon-star" aria-hidden="true"></span>Shortlist</a>
							</div>
						</a>
					</div>
					
					<div class="col-md-3 feature-grid jewel">
						<a href="product.html">
							<img src="public/images/f3.jpg"/>
							<div class="arrival-info">
								<h4>Wedding Ceramic Pot</h4>
								<p>$300</p>
								<span class="pric1"><del>$400</del></span>
								<span class="disc">[10% Off]</span>
							</div>
							<div class="viw">
								<a href="product.html"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>Quick View</a>
					 		</div>
					 		<div class="shrt">
								<a href="product.html"><span class="glyphicon glyphicon-star" aria-hidden="true"></span>Shortlist</a>
					 		</div>
						</a>
					</div>
					
					<div class="col-md-3 feature-grid">
						<a href="product.html">
							<img src="public/images/f4.jpg" alt=""/>	
						 	<div class="arrival-info">
								<h4>Jewellerys #1</h4>
							 	<p>#600</p>
							 	<span class="pric1"><del>$800</del></span>
							 	<span class="disc">[12% Off]</span>
						 	</div>
						 	<div class="viw">
						 		<a href="product.html"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>Quick View</a>
						 	</div>
						 	<div class="shrt">
								<a href="product.html"><span class="glyphicon glyphicon-star" aria-hidden="true"></span>Shortlist</a>
						 	</div>
					 	</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- footer -->
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>