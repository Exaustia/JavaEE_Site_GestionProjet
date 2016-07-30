<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="header.jsp"%>
<title>Profil User</title>
</head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<body>
	<h1 align="center">Project Detail</h1>
	<div class="article-preview">

		<p>
			<b>First Name:</b>
			<c:out value="${ user.firstName }" />
		</p>
		<p>
			<b>Second Name :</b>
			<c:out value="${ user.secondName }" />
		</p>
		<p>
			<b>Mail :</b>
			<c:out value="${ user.mail }" />
		</p>
		<p>
			<b>Account Create :</b>
			<c:out value="${ user.dateCreate }" />

		</p>
		<p>
			<b> My Projects : </b>
			<c:forEach items="${ projects }" var="p">

				<a href="/CrowTp/auth/showProject?id=<c:out value="${ p.id }" />"><c:out
						value="${ p.name }" /></a> /
					
				</c:forEach>
		</p>

		<div align="right">
			<p>
				<a href="/CrowTp/auth/updateUser">
					<button class="button arrow">Update Account</button>
				</a>
			</p>
			<p>
				<a href="/CrowTp/auth/updateMdp">
					<button class="button arrow">Change Password</button>
				</a>
			</p>
		</div>

	</div>

</body>
</html>
<script type="text/javascript">
	(function($) {
	})(jQuery);
	(function($) {
	})(jQuery);
</script>
