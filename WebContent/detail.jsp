<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title><s:property value="book.title"/></title>
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
		 	<h3><s:property value="book.title"/></h3>
		 	<div class="row">
		 		<div class="col-md-4">
		 			<div>
		 				<img alt="" src="<%=request.getContextPath()%>/public/images/<s:property value="book.images" />">
		 			</div>
		 		</div>
		 		<div class="col-md-8">
		 			<div><p><s:property value="book.description"/></p></div>
		 			<table>
		 				<tr>
		 					<td>Tác giả : </td>
		 					<td><s:property value="book.authorName"/></td>
		 				</tr>
		 				<tr>
		 					<td>Thể loại : </td>
		 					<td><s:property value="book.typeName"/></td>
		 				</tr>
		 				<tr>
		 					<td>SKU : </td>
		 					<td><s:property value="book.sku" /></td>
		 				</tr>
		 				<tr>
		 					<td>Giá :</td>
		 					<td>$<s:property value="book.price"/></td>
		 				</tr>
		 			</table>
		 			<div>
		 				<input type="text" class="item_quantity" value="1" />
						<a href=""><input type="button" class="item_add items" value="Add to Cart"></a>
					</div>
		 		</div>
		 	</div>
		</div>
	</div>
	<!-- footer -->
	<jsp:include page="footer.jsp"></jsp:include>
	<!--  -->
	<script type="text/javascript">
		
	</script>
</body>
</html>