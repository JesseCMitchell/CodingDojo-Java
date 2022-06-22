<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login And Registration</title>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- YOUR own local CSS -->
<link rel="stylesheet" type="text/css" href="/css/style.css">
<!-- YOUR own local JS -->
<script type="text/javascript" src="/js/app.js"></script>
<!-- FontAwesome Icons -->
<script src="https://kit.fontawesome.com/f7c6b3387d.js" crossorigin="anonymous"></script>
</head>
<body>
	<!-- Nav Bar -->
   <nav class="navbar navbar-expand-lg navbar-light bg-light">
	  <div class="container-fluid">
	    <button class="navbar-toggler" type="button" data-mdb-toggle="collapse" data-mdb-target="#navbarRightAlignExample"><i class="fas fa-bars"></i></button>
	    <div class="collapse navbar-collapse" id="navbarRightAlignExample">
	      <!-- nav links -->
	      <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
	        <li class="nav-item"><a class="nav-link active" href="/">Home</a></li>
	        <li class="nav-item"><a class="nav-link" href="/"></a></li>
	        <li class="nav-item"><a class="nav-link disabled"></a></li>
	      </ul>
	    </div>
	  </div>
	</nav>
	<!-- Page Header  -->
	<div class="container">
	  <div class="jumbotron">
	    <h1 class="text-center h1 fw-bold bg-gray bg-lighten-sm">Join the Book Club</h1>
	  </div>
 	</div>

	<!-- REGISTER  -->
	<section class="vh-100" style="background-color: #eee;">
	  <div class="container h-75">
	    <div class="row d-flex justify-content-center align-items-center h-100">
	      <div class="col-lg-12 col-xl-11">
	        <div class="card text-black" style="border-radius: 25px;">
	          <div class="card-body p-md-5">
	            <div class="row justify-content-center">
	              <div class="col-md-10 col-lg-6 col-xl-6 order-2 order-lg-1">
	
	                <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Sign up</p>
	
	                <form:form class="mx-1 mx-md-4" action="/register" method="post" modelAttribute="newUser">
	
	                  <div class="d-flex flex-row align-items-center mb-4">
	                    <i class="fas fa-user fa-lg me-3 fa-fw"></i>
	                    <div class="form-outline flex-fill mb-0">
	                      <form:label path="name" class="form-label"></form:label>
	                      <form:input path="name" type="text" class="form-control" placeholder="Your Name"/>
	                      <form:errors path="name" class="text-danger"/>
	                    </div>
	                  </div>
	
	                  <div class="d-flex flex-row align-items-center mb-4">
	                    <i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
	                    <div class="form-outline flex-fill mb-0">
	                      <form:label path="email" class="form-label"></form:label>
	                      <form:input path="email" type="text" class="form-control" placeholder="Your Email"/>
	                      <form:errors path="email" class="text-danger"/>
	                    </div>
	                  </div>
	
	                  <div class="d-flex flex-row align-items-center mb-4">
	                    <i class="fas fa-lock fa-lg me-3 fa-fw"></i>
	                    <div class="form-outline flex-fill mb-0">
	                      <form:label path="password" class="form-label"></form:label>
	                      <form:input path="password" type="text" class="form-control" placeholder="Password"/>
	                      <form:errors path="password" class="text-danger"/>
	                    </div>
	                  </div>
	
	                  <div class="d-flex flex-row align-items-center mb-4">
	                    <i class="fas fa-key fa-lg me-3 fa-fw"></i>
	                    <div class="form-outline flex-fill mb-0">
	                      <form:label path="confirm" class="form-label"></form:label>
	                      <form:input path="confirm" type="text" class="form-control" placeholder="Confirm Password"/>
	                      <form:errors path="confirm" class="text-danger"/>
	                    </div>
	                  </div>

	                  <div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
	            
	                    <button type="submit" class="btn btn-primary btn-lg" value="Submit">Register</button>
	                  </div>
	
	                </form:form>
	
	              </div>
	             
	              <!-- LOGIN -->
	              <div class="col-md-10 col-lg-6 col-xl-5 d-flex align-items-center order-1 order-lg-2">

	                <form:form class="mx-1 mx-md-5" action="/login" method="post" modelAttribute="newLogin">
						<p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Login</p>
	                  <div class="d-flex flex-row align-items-center mb-4">
	                    <i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
	                    <div class="form-outline flex-fill mb-0">
	                      <form:label path="email" class="form-label"></form:label>
	                      <form:input path="email" type="text" class="form-control" placeholder="Your Email"/>
	                      <form:errors path="email" class="text-danger"/>
	                    </div>
	                  </div>
	
	                  <div class="d-flex flex-row align-items-center mb-4">
	                    <i class="fas fa-lock fa-lg me-3 fa-fw"></i>
	                    <div class="form-outline flex-fill mb-0">
	                      <form:label path="password" class="form-label"></form:label>
	                      <form:input path="password" type="text" class="form-control" placeholder="Password"/>
	                      <form:errors path="password" class="text-danger"/>
	                    </div>
	                  </div>          

	                  <div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
	                    <button class="btn btn-primary btn-lg" type="submit" value="Submit">Login</button>
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