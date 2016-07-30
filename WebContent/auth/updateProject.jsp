<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
1">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="header.jsp"%>
<title>Update Project</title>
</head>

<body>
	<h1 align="center">Account Create</h1>
	<form action="/CrowTp/auth/updateProject" method="POST">
		<INPUT type="hidden" value="<c:out value="${ project.id }" />"
			name="id"> Name : <input name="name" class="form-control"
			type="text" value="<c:out value="${ project.name }" />" /><br>
		<br> Description : <input name="desc" class="form-control"
			type="text" value="<c:out value="${ project.description }" />" /><br>
		<br> Price : <input name="price" class="form-control" type="text"
			value="<c:out value="${ project.price }" />" /><br> Category :
		<select name="category" class="form-control">
			<c:forEach items="${ categories }" var="c">
				<option value="${ c.id }">${ c.name }</option>
			</c:forEach>
		</select> <br>
		<div align="center">
			<button type="submit" class="button arrow">
				Update Project
				<div class="ripples buttonRipples">
					<span class="ripplesCircle"></span>
				</div>
			</button>
		</div>
	</form>
</body>
</html>