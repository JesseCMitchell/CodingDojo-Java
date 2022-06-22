<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${book.title}</title>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- YOUR own local CSS -->
<link rel="stylesheet" type="text/css" href="/css/style.css">
<!-- YOUR own local JS -->
<script type="text/javascript" src="/js/app.js"></script>
</head>
<body>
	<!-- Nav Bar -->
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container-fluid">
			<button class="navbar-toggler" type="button"
				data-mdb-toggle="collapse"
				data-mdb-target="#navbarRightAlignExample">
				<i class="fas fa-bars"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarRightAlignExample">
				<!-- nav links -->
				<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link" href="/dashboard">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="/newBook">Add Book</a></li>
					<li class="nav-item"><a class="nav-link" href="/logout">Logout</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<!-- Book Card -->
	<div class="card">
	  <h5 class="card-header"><c:out value="${book.title}"></c:out></h5>
	  <div class="card-body">
	    <h5 class="card-title"><c:out value="${user.name}"></c:out> read <c:out value="${book.title}"></c:out> by <c:out value="${book.author}"></c:out></h5>
	    <p class="card-text"><c:out value="${book.genre}"></c:out></p>
	    <c:if test = "${uuid == book.user.id}">
	    <a href="/books/edit/${book.id}" class="btn btn-primary">Edit Title</a>
	    </c:if>
	  </div>
	</div>
	<div class="card">
	  <div class="card-header">Thoughts On <c:out value="${book.title}"></c:out>:</div>
	  <div class="card-body">
	    <blockquote class="blockquote mb-0">
	      <p><c:out value="${book.thoughts}"></c:out></p>
	      <footer class="blockquote-footer"><cite title="Source Title"><c:out value="${user.name}"></c:out></cite></footer>
	    </blockquote>
	  </div>
	</div>
</body>
</html>