<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />


<%@ include file="header.jsp"%>
<title>Add category</title>
</head>
<body>
	<h1 align="center">New Category</h1>
	<div>
		<form action="/CrowTp/auth/addCategory" method="POST">
			Name : <input name="name" class="form-control" type="text" /><br>
			<br>
			<p>
				Description : <input name="desc" class="form-control" type="text" /><br>
				<br>
			</p>
			<div align="center">
				<button type="submit" class="button arrow">
					Insert Category
					<div class="ripples buttonRipples">
						<span class="ripplesCircle"></span>
					</div>
				</button>
			</div>
		</form>
	</div>
</body>
</html>