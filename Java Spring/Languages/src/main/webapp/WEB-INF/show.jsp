<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- YOUR own local CSS -->
<link rel="stylesheet" type="text/css" href="/css/style.css">
<!-- YOUR own local JS -->
<script type="text/javascript" src="/js/app.js"></script>
<title>${language.name}</title>

</head>
<body style="margin: 10vw;">
	
	<div class="card mb-5">
		<h5 class="card-header">Programming Language</h5>
		<div class="card-body">
			<h5 class="card-title"><c:out value="${language.name}"></c:out></h5>
			<p class="card-text">Creator: <c:out value="${language.creator}"></c:out></p>
			<p class="card-text">Version: <c:out value="${language.version}"></c:out></p>
			<a href="/languages/${language.id}/edit" class="btn btn-primary">Edit</a>
			<a href="/languages/${language.id}/delete" class="btn btn-danger">Delete</a>
		</div>
	</div>

	
	

<a href="/" class="btn btn-secondary">Dashboard</a>
	
</body>
</html>