<%@page import="fr.imie.crowdfunding.entity.Project"%>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="header.jsp"%>
<title>Show project</title>
</head>

<body>
	<h1 align="center">Project Detail</h1>
	<div class="article-preview">

		<p>
			ID :
			<c:out value="${ project.id }" />
		</p>
		<p>
			Name :
			<c:out value="${ project.name }" />
		</p>
		<p>
			Description :
			<c:out value="${ project.description }" />
		</p>
		<p>
			Objectif :
			<c:out value="${ project.price }" />
			$
		</p>
		<p>
			Create By :
			<c:out
				value="${ project.user.firstName } ${ project.user.secondName }" />
		</p>
		<p>
			Create Date :
			<c:out value="${ project.date }" />
		</p>
		<p>
			Last Update :
			<c:out value="${ project.dateUpdate }" />
		</p>
		<p>
			End Date :
			<c:out value="${ project.dateEnd }" />
		</p>
		<p>
			Contribution :
			<c:out value="${ project.priceEnd }" />
		</p>

	</div>
</body>
</html>
<script type="text/javascript">
	(function($) {
	})(jQuery);
	(function($) {
	})(jQuery);
</script>