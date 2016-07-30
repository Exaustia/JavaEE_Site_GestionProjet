<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="header.jsp"%>
<title>Update Project</title>
</head>

<body>
	<h1 align="center">Change Password</h1>
	<form action="/CrowTp/auth/updateMdp" method="POST">

		<INPUT type="hidden" value="<c:out value="${ user.id }" />" name="id">

		password : <input name="password" class="form-control" type="text" /><br>
		<br> <input type="submit" class="button arrow" value="Save" />
	</form>
</body>
</html>