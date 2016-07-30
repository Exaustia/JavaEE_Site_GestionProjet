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
	<h1 align="center">Account</h1>
	<div id="Wrapper">
		<form action="/CrowTp/auth/updateUser" method="POST">

			<INPUT type="hidden" value="<c:out value="${ user.id }" />" name="id">
			FirstName : <input name="firstName" class="form-control" type="text"
				value="<c:out value="${ user.firstName }" />" /><br> <br>
			Secondname : <input name="secondName" class="form-control"
				type="text" value="<c:out value="${ user.secondName }" />" /><br>
			<br> E-Mail : <input name="mail" class="form-control"
				type="text" value="<c:out value="${ user.mail }" />" /><br> <br>
			<br> <input type="submit" class="button arrow"
				value="Save Profil" />
		</form>
	</div>
</body>
</html>

