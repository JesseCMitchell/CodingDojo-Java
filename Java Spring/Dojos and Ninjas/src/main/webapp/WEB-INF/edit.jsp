<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Ninja</title>
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
					<li class="nav-item"><a href="/ninjas/new" class="nav-link" >Add a Ninja</a></li>
					<li class="nav-item"><a href="/dojos/new" class="nav-link" >Add New Dojo</a></li>
				</ul>
			</div>
		</div>
	</nav>

   <h1>Update Ninja</h1>
	<form:form action="/ninjas/${ninja.id}/update" method="post" modelAttribute="ninja">
	<input type="hidden" name="_method" value="put">	
		<p>
			<form:errors path="first_name" class="error" />
			<form:label path="first_name">First Name:</form:label>
			<form:input path="first_name" value="${ninja.first_name}" type="text" />
		</p>
		<p>
			<form:errors path="last_name" class="error" />
			<form:label path="last_name">Last Name:</form:label>
			<form:input path="last_name" value="${ninja.last_name}" type="text" />
		</p>
		<p>
			<form:errors path="age" class="error" />
			<form:label path="age">Age:</form:label>
			<form:input path="age" value="${ninja.age}" type="number" />
		</p>
		<p>
			<form:label path="dojo">Dojo Name:</form:label>
			<form:select path="dojo">
				<c:forEach var="dojo" items="${dojos}">
					<form:option value="${dojo.id}"><c:out value="${dojo.name }"/></form:option>
				</c:forEach>
			</form:select>
		</p>
		<button class="btn btn-success">Update</button>
	</form:form>
</body>
</html>