<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New Dojo</title>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- YOUR own local CSS -->
<link rel="stylesheet" type="text/css" href="/css/style.css">
<!-- YOUR own local JS -->
<script type="text/javascript" src="/js/app.js"></script>
</head>
<body class="container d-flex flex-column text-center">
	
	<nav class="navbar navbar-expand-xl navbar-dark bg-dark">
		<div class="container-fluid">
			<a class="navbar-brand" href="/dojos">Home</a>
			<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarDark"></button>
			<div class="collapse navbar-collapse show" id="navbarDark">
				<ul class="navbar-nav me-auto mb-2 mb-xl-0">
					<li class="nav-item"><a href="/dojos/new" class="nav-link">Add New Dojo</a></li>
					<li class="nav-item"><a href="/ninjas/new" class="nav-link" >Add Ninja</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<h1>New Dojo:</h1>
	<form:form action="/dojos/new" method="post" modelAttribute="dojo">
		<p>
			<form:errors path="name" class="error" />
			<form:label path="name">Name:</form:label>
			<form:input path="name" type="text" />
		</p>
		<input type="submit" value="Submit" />
	</form:form>
</body>
</html>