<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="header.jsp"%>
<title>Show Category</title>
</head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<body>
<body>
	<h1 align="center">Category Detail</h1>
	<div class="article-preview">
		<h1>
			<c:out value="${ category.name }" />
		</h1>
		</br>
		<p>
			<b>Description : </b>
			<c:out value="${ category.description }" />
		</p>
		<p>
			<b>List of Projects : </b>
		</p>
		<c:forEach items="${ projects }" var="p">

			<a href="/CrowTp/auth/showProject?id=<c:out value="${ p.id }" />"><c:out
					value="${ p.name }" /></a> /
					
				</c:forEach>

	</div>
</body>
</html>
<script type="text/javascript">(function($) {})(jQuery);(function($) {})(jQuery);
</script>