<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<%@ include file="header.jsp"%>
<title>Insert title here</title>
</head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
</head>

<body>
	<h1 align="center">List of Projects</h1>
	<c:forEach items="${ projects }" var="p">
		<div class="article-preview">

			<h1>
				<c:out value="${ p.name }" />
			</h1>
			<p>
				<c:out value="${ p.description }" />
			</p>
			</br>
			<p>
				<a href="/CrowTp/auth/showProject?id=<c:out value="${ p.id }" />">
					<button class="button arrow">Read more</button>
				</a> <a href="/CrowTp/auth/contribuate?id=<c:out value="${ p.id }" />">
					<button class="button arrow">Donne les sous</button>
				</a>
			</p>
		</div>
	</c:forEach>
</body>
</html>
<script type="text/javascript">(function($) {})(jQuery);(function($) {})(jQuery);
</script>