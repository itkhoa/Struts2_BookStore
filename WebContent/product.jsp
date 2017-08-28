<%@page import="gdp.cmc.model.Book" %>
<%@page import="java.util.ArrayList"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Product</title>
<!-- plugin -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/public/plugin/bootstrap/css/bootstrap.min.css">
<script src="${pageContext.request.contextPath}/public/plugin/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/public/plugin/bootstrap/js/bootstrap.min.js"></script>
<!--  -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/public/css/main.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/public/css/menu.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/public/css/product.css" />
<!-- icon -->
<link rel="icon" href="${pageContext.request.contextPath}/public/favicon.ico">
</head>
<body>
	<!-- header -->
	<jsp:include page="header.jsp"></jsp:include>
	<!--  -->
	<div class="product-model">	 
		<div class="container">
			<ol class="breadcrumb">
		  		<li><a href="index.html">Home</a></li>
		  		<li class="active">Products</li>
		 	</ol>
			<h2>Our Products</h2>			
		 	<div class="col-md-9 product-model-sec">
		 	
		  	<s:iterator value="list">
		  		<div class="product-grid love-grid">
		  			<a href="">
		  				<div class="product-img b-link-stripe b-animate-go  thickbox">
		  					<img src="${pageContext.request.contextPath}/public/images/<s:property value="images" />" class="img-responsive" alt=""/>
		  				</div>
		  			</a>
			  		<div class="product-info simpleCart_shelfItem">
						<div class="product-info-cust prt_name">
							<h4><s:property value="title" /></h4>
							<p>SKU: <s:property value="sku" /></p>
							<span class="item_price">$<s:property value="price" /></span>								
							<input type="text" class="item_quantity" value="1" />
							<input type="button" class="item_add items" value="Add to Cart">
						</div>													
						<div class="clearfix"> </div>
					</div>
				</div>
		  	</s:iterator>			
			</div>
		</div>
	</div>
	<!-- footer -->
	<jsp:include page="footer.jsp"></jsp:include>
	<script type="public/js/product.jsp"></script>
</body>
</html>