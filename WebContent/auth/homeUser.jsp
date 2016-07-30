<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<%@ include file="header.jsp"%>
<title>Home</title>
</head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<body>


	<div>
		<h1 align="center">My Projects</h1>

		<c:forEach items="${ projects }" var="p">
			<div class="article-preview">

				<h1>
					<c:out value="${ p.name }" />
				</h1>
				<p>
					<c:out value="${ p.description }" />
				</p>
				</br>
				<div align="center">
					<p>
						<a href="/CrowTp/auth/showProject?id=<c:out value="${ p.id }" />">
							<button class="button arrow">Read more</button>
						</a>
					</p>
				</div>

				<div align="center">
					<p>
						<a
							href="/CrowTp/auth/removeProject?id=<c:out value="${ p.id }" />">
							<button class="button arrow">Remove</button>
						</a> <a
							href="/CrowTp/auth/updateProject?id=<c:out value="${ p.id }" />">
							<button class="button arrow">Update</button>
						</a>
				</div>
				</p>
			</div>
		</c:forEach>
	</div>
</body>
</html>