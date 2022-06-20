<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DOJO DASHBOARD</title>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- YOUR own local CSS -->
<link rel="stylesheet" type="text/css" href="/css/style.css">
<!-- YOUR own local JS -->
<script type="text/javascript" src="/js/app.js"></script>
</head>
<body class="container">
	
	<nav class="navbar navbar-expand-xl navbar-dark bg-dark">
		<div class="container-fluid">
			<a class="navbar-brand" href="/dojos">Home</a>
			<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarDark"></button>
			<div class="collapse navbar-collapse show" id="navbarDark">
				<ul class="navbar-nav me-auto mb-2 mb-xl-0">
					<li class="nav-item"><a href="/dojos/new" class="nav-link">Add New Dojo</a></li>
					<li class="nav-item"><a href="/ninjas/new" class="nav-link">Add Ninja</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<h1>All Dojos:</h1>
	<div class="m-4">
		<div class="card" style="width: 300px">
			<div class="card-body text-center">
				<c:forEach var="dojo" items="${dojos }">
					<a href="/dojos/${dojo.id }">${dojo.name } | </a>
				</c:forEach>
			</div>
		</div>
	</div>
</body>
</html>