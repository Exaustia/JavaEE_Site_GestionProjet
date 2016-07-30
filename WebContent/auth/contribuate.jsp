<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />


<%@ include file="header.jsp"%>
<title>Add category</title>
</head>
<body>
	<h1 align="center">Donne tes sous</h1>
	<div>
		<form action="/CrowTp/auth/contribuate" method="POST">
			<p>
				<INPUT type="hidden" value="<c:out value="${ project.id }" />"
					name="id"> <INPUT type="hidden"
					value="<c:out value="${ project.priceEnd }" />" name="contribuateA">
				Fais pas ton radin : <input name="contribuate" class="form-control"
					type="text" /><br>
				<br>
			</p>
			<div align="center">
				<button type="submit" class="button arrow">
					Donne tes sous !
					<div class="ripples buttonRipples">
						<span class="ripplesCircle"></span>
					</div>
				</button>
			</div>
		</form>
	</div>
</body>
</html>