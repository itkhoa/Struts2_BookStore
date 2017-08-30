<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Access Admin</title>
<!-- plugin -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/public/plugin/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/public/plugin/bootstrap-datepicker/css/bootstrap-datepicker.min.css">
<script src="${pageContext.request.contextPath}/public/plugin/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/public/plugin/bootstrap/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/public/plugin/bootstrap-datepicker/js/bootstrap-datepicker.min.js"></script>

<!--  -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/public/css/login.css"/>
<!-- icon -->
<link rel="icon" href="${pageContext.request.contextPath}/public/favicon.ico">
</head>
<body class="login">
	<div class="logo">
	</div>
	<div class="content">
	
		<form method="post" action="/admin/loginAccess">
			<h3 class="form-title font-green">Sign In</h3>
            <div class="form-group">
            <!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->
            	<label class="control-label visible-ie8 visible-ie9">Username</label>
                <input class="form-control form-control-solid placeholder-no-fix" type="text" autocomplete="off" placeholder="Username" name="username" /> 
            </div>
            <div class="form-group">
            	<label class="control-label visible-ie8 visible-ie9">Password</label>
                <input class="form-control form-control-solid placeholder-no-fix" type="password" autocomplete="off" placeholder="Password" name="password" />
            </div>
            <div class="form-actions">
                <button type="submit" class="btn btn-success uppercase">Login</button>
            </div>
		</form>
	</div>
	<script src="${pageContext.request.contextPath}/public/plugin/jquery-validation/jquery.validate.min.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/public/plugin/jquery-validation/additional-methods.min.js" type="text/javascript"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/public/js/login.js"></script>
</body>
</html>