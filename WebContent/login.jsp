<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Sign In</title>
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
	<!-- section -->
	<div class="login-section">
		<div class="container">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
				<li class="breadcrumb-item active">Login</li>
			</ol>
			<h2>Log In</h2>
			<div class="col-md-6 log">
				<p>Welcome, please enter the following to continue</p>
				<p>If you have previously Login with us, <span>click here</span></p>
				<s:form action="checkLogin" method="post">
			
					<div class="form-group">
						<s:textfield name="user.email" label="Email" class="form-control"/>
					</div>
					<div class="form-group">
						<s:password name="user.password" label="Password" class="form-control"/>
					</div>
					<s:submit/>
				</s:form>
			</div>
		</div>
	</div>
	<!-- footer -->
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>