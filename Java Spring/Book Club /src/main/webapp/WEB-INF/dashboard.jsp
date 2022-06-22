<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${user.name }'s Dashboard</title>
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
	<!-- Page Greeting  -->
	<div class="container">
		<div class="jumbotron">
			<h1 class="text-center h1 fw-bold bg-gray bg-lighten-sm">Welcome, <c:out value="${user.name }!" /></h1>
		</div>
	</div>

	<!-- Item Table -->
	<p class="text-muted mb-3">Books from everyone's shelves:</p>
	<table class="table align-middle mb-0 bg-white" >
		<thead class="bg-light">
			<tr>
				<th>ID</th>
				<th>Title</th>
				<th>Author Name</th>
				<th>Posted By</th>
				<th>Actions</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="book" items="${books}">
			<tr>
				<td>
					<div class="d-flex align-items-center">
						<div class="ms-3">
							<p class="text-muted mb-0"><c:out value="${book.id}"></c:out></p>
						</div>
					</div>
				</td>
				<td>
					<p class="fw-normal mb-1"><a href="/books/${book.id}"><c:out value="${book.title}"></c:out></a></p>
					<p class="text-muted mb-0"><c:out value="${book.genre}"></c:out></p>
				</td>
				<td><c:out value="${book.author}"></c:out></td>
				<td><c:out value="${book.user.name}"></c:out></td>
				<td>
				<c:if test = "${uuid == book.user.id}">
					<a href="/books/edit/${book.id}" type="button" class="btn btn-link btn-rounded btn-sm fw-bold" data-mdb-ripple-color="dark">Edit</a>
					
				</c:if>
				</td>
			</tr>
			</c:forEach>
			
		</tbody>
	</table>

</body>
</html>