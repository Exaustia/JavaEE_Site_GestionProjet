<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
<html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<head><%@ taglib uri="http://java.sun.com/jsp/jstl/core"
	prefix="c"%>


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Basic Header</title>
<link href='http://fonts.googleapis.com/css?family=Cookie'
	rel='stylesheet' type='text/css'>
<link type="text/css" rel="stylesheet"
	href="<c:url value="../css/demo.css"/>" />
<link type="text/css" rel="stylesheet"
	href="<c:url value="../css/header.css"/>" />
<link type="text/css" rel="stylesheet"
	href="<c:url value="../css/listProject.css"/>" />
<link type="text/css" rel="stylesheet"
	href="<c:url value="../css/listCategories.css"/>" />
<link type="text/css" rel="stylesheet"
	href="<c:url value="../css/button.css"/>" />
<link type="text/css" rel="stylesheet"
	href="<c:url value="../css/addUser.css"/>" />
</head>

<body>

	<header class="header-basic">

	<div class="header-limiter">

		<h1>
			<a href="http://smiterino.com/" target="_blank">Imie <span>Rennes</span></a>
		</h1>

		<nav> <a href="/CrowTp/auth/home">Home</a> <a
			href="/CrowTp/auth/listProject">List of Projects</a> <a
			href="/CrowTp/auth/listCategory">List Categories</a> <a
			href="/CrowTp/auth/addProject">Add project</a> <a
			href="/CrowTp/auth/addCategory">Add category</a> <a
			href="/CrowTp/auth/profilUser">Account</a> <% if(session.getAttribute("user") != null) { %>
		<a href="/CrowTp/auth/logout">Logout</a> <% } else { %> <a
			href="/CrowTp/auth/login">Login</a> <% } %> </nav>
	</div>

	</header>
</html>