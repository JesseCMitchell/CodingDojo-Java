<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${dojo.name }</title>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- YOUR own local CSS -->
<link rel="stylesheet" type="text/css" href="/css/style.css">
<!-- YOUR own local JS -->
<script type="text/javascript" src="/js/app.js"></script>
</head>
<body class="container text-center">
	<nav class="navbar navbar-expand-xl navbar-dark bg-dark">
		<div class="container-fluid">
			<a class="navbar-brand" href="/dojos">Home</a>
			<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarDark"></button>
			<div class="collapse navbar-collapse show" id="navbarDark">
				<ul class="navbar-nav me-auto mb-2 mb-xl-0">
					<li class="nav-item"><a href="/dojos/new" class="nav-link" >Add New Dojo</a></li>
					<li class="nav-item"><a href="/ninjas/new" class="nav-link" >Add Ninja</a></li>
				</ul>
			</div>
		</div>
	</nav>
	
	<h1>${dojo.name } Ninjas</h1>
	<table class="table">
		<thead>
			<tr>
				<th scope="col">First Name</th>
				<th scope="col">Last Name</th>
				<th scope="col">Age</th>
				<th scope="col"> Actions</th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="ninja" items="${dojo.ninjas}">
				<tr>
				<td scope="row">${ninja.first_name }</td>
				<td scope="row">${ninja.last_name }</td>
				<td scope="row">${ninja.age }</td>
				<td><a href="/ninjas/${ninja.id}/edit" class="btn btn-primary">Edit</a></td>
				<td><form action="/ninjas/${ninja.id}/delete" method="post">
    				<input type="hidden" name="_method" value="delete">
    				<input type="submit" class="btn btn-danger" value="Delete">
				</form></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>