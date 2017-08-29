<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert New Book</title>
<!-- plugin -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/public/plugin/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/public/plugin/bootstrap-datepicker/css/bootstrap-datepicker.min.css">
<script src="${pageContext.request.contextPath}/public/plugin/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/public/plugin/bootstrap/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/public/plugin/bootstrap-datepicker/js/bootstrap-datepicker.min.js"></script>
<!-- icon -->
<link rel="icon" href="${pageContext.request.contextPath}/public/favicon.ico">
</head>
<body>
	<div class="top-sec">
		<div class="top_left">
		</div>
		<div class="top_right">
		
		</div>
	</div>
	
	<div class="section-sec">
		<div class="container">
			
			<div class="panel panel-primary">
				<div class="panel-heading">
					<h4>Add new book</h4>
				</div>
				<div class="panel-body">
					<form action="insertData" method="post">
						<div class="form-group">
							<label>Book's Name</label>
							<input type="text" class="form-control" name="title"/>
						</div>
						<div class="form-group">
							<label>SKU</label> 
							<input type="text" class="form-control" name="sku">
						</div>
						<div class="form-group">
							<label>Publish Year</label> 
							<input class="date-own form-control" type="text" name="publishYear">
						</div>
						<div class="form-group">
							<label>Price</label> <input type="text" class="form-control"
								name="price" />
						</div>
						<div class="form-group">
							<label>Images</label>
						</div>
						<div class="form-group">
							<label>Description</label>
							<textarea rows="5" cols="" class="form-control" name="description"></textarea>
						</div>
						<div class="form-group">
							<label>Author</label> 
							<input type="text" class="form-control" name="authorName" />
						</div>
						<div class="form-group">
							<label>Book Type</label> 
							<select class="form-control" name="typeName">
								<option value="">Choose type</option>
								<option value="Tiểu thuyết">Tiểu thuyết</option>
								<option value="Truyện ngắn">Truyện ngắn</option>
								<option value="Truyện dài">Truyện dài</option>
								<option value="Tự truyện">Tự truyện</option>
								<option value="Hồi ký">Hồi ký</option>
							</select>
						</div>
						<button type="submit" class="btn btn-primary">Save</button>
						<button type="reset" class="btn btn-default">Cancel</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$('.date-own').datepicker({
			minViewMode: 2,
			format: 'yyyy'
		});
	</script>
</body>
</html>