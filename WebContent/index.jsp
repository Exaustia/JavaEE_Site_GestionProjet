<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
	integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7"
	crossorigin="anonymous">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"
	integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS"
	crossorigin="anonymous"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script src="http://code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
<link rel="stylesheet"
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<link href='http://fonts.googleapis.com/css?family=Droid+Serif:400,700'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="css/demo.css">
<link rel="stylesheet" href="css/indexLogin.css">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/button.css">
<link rel="stylesheet" href="css/listProject.css">
<link href='http://fonts.googleapis.com/css?family=Cookie'
	rel='stylesheet' type='text/css'>
<title>Login, Sign up Header</title>
</head>

<body>

	<header class="header-login-signup">
		<div class="header-limiter">
			<h1>
				<h1>
					<a href="http://smiterino.com/" target="_blank">Imie<span>
							Rennes</span></a>
				</h1>
			</h1>
			<nav>
				<a href="/CrowTp/index" class="selected">Home</a>
			</nav>
			<ul>
				<li><a href="login">Login</a></li>
				<li><a href="addUser">Sign up</a></li>
			</ul>
		</div>
	</header>



	<c:forEach items="${ projects }" var="p">
		<div class="article-preview">

			<h1>
				<c:out value="${ p.name }" />
			</h1>
			<p>
				<c:out value="${ p.description }" />
			</p>

			<p>
				<a href="/CrowTp/auth/showProject?id=<c:out value="${ p.id }" />">
					<button class="button arrow">Read more</button>
				</a>
			</p>
		</div>
	</c:forEach>
</body>

</html>
<script type="text/javascript">
	(function($) {
	})(jQuery);
	(function($) {
	})(jQuery);
</script>