<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit ${book.title}</title>
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
					<li class="nav-item"><a class="nav-link" href="/"></a></li>
					<li class="nav-item"><a class="nav-link" href="/logout">Logout</a></li>
				</ul>
			</div>
		</div>
	</nav>
	
	<!-- New Book Form -->
	<section class="vh-100" style="background-color: #eee;">
	  <div class="container h-75">
	    <div class="row d-flex justify-content-center align-items-center h-100">
	      <div class="col-lg-12 col-xl-11">
	        <div class="card text-black" style="border-radius: 25px;">
	          <div class="card-body p-md-5">
	            <div class="row justify-content-center">
	              <div class="col-md-10 col-lg-6 col-xl-6 order-2 order-lg-1">
	
	                <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-1">Change Your Entry</p>
					<form:form action="/books/edit/${book.id}" method="post" modelAttribute="book" class="mx-1 mx-md-4">
						<input type="hidden" name="_method" value="put">
						<form:input type="hidden" name="user" path="user"/>
						
						<div class="d-flex flex-row align-items-center mb-4">
							<div class="form-outline flex-fill mb-0">
								<form:label path="title" class="form-label"></form:label>
								<form:input type="text" path="title" class="form-control" placeholder="Title"/>
								<form:errors path="title" class="text-danger"/>
							</div>
						</div>
						<div class="d-flex flex-row align-items-center mb-4">
							<div class="form-outline flex-fill mb-0">
								<form:label path="genre" class="form-label"></form:label>
								<form:input type="text" path="genre" class="form-control" placeholder="Genre"/>
								<form:errors path="genre" class="text-danger"/>
							</div>
						</div>
						<div class="d-flex flex-row align-items-center mb-4">
							<div class="form-outline flex-fill mb-0">
								<form:label path="author" class="form-label"></form:label>
								<form:input type="text" path="author" class="form-control" placeholder="Author"/>
								<form:errors path="author" class="text-danger"/>
							</div>
						</div>
						<div class="d-flex flex-row align-items-center mb-4">
							<div class="form-outline flex-fill mb-0">
								<form:label path="thoughts" class="form-label"></form:label>
								<form:textarea rows="3" type="text" class="input form-control" path="thoughts" placeholder="My Thoughts"/>
								<form:errors path="thoughts" class="text-danger"/>
							</div>
						</div>
						
						<div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
							<button type="submit" class="btn btn-warning btn-lg" value="Submit">Update Book</button> 
						</div>
						<div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
							<a href="/books/delete/${book.id}"class="btn btn-danger btn-sm">Delete</a>
						</div>							
							
					</form:form>
	              </div>
	            </div>
	          </div>
	        </div>
	      </div>
	    </div>
	  </div>
	</section>
</body>
</html>