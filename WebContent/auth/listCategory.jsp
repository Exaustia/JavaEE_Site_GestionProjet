<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<%@ include file="header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<title>Insert title here</title>
</head>
<body>
	<h1 align="center">List of Categories</h1>
	<div id="accordion">
		<c:forEach items="${ categories }" var="c">

			<div class="accordion-content">
				<a class="accordion-title"><i class="ion-beer"></i> <c:out
						value="${ c.name }" /></a>
				<div class="accordion-body">
					<c:out value="${ c.description }" />
					<p>
						<a href="/CrowTp/auth/showCategory?id=<c:out value="${ c.id }" />">
							More Info </a>
				</div>
				</p>
			</div>

		</c:forEach>
	</div>
</body>

<script type="text/javascript">

$(function(){
  $('#accordion').find('.accordion-title').click(function(){
    $('#accordion').find('.accordion-body').removeClass('open');
    $(this).next().toggleClass('open');
  })
})


</script>
</html>