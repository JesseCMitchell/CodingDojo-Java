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
<title>${expense.name }</title>

</head>
<body style="margin: 10vw;">
   
   <div class = "row justify-content-md-center">
		<h1 class="col-md-auto">Expense Details</h1>
		<a class ="col offset-6 btn btn-outline-secondary" href="/expenses/">Go Back</a>
	</div>
	
	<div class="card">
		<div class="card-body">
			<p class="card-text">Expense Name: <c:out value="${expense.name }"/></p>
			<p class="card-text">Expense Description: <c:out value="${expense.description }"/></p>
			<p class="card-text">Vendor: <c:out value="${expense.vendor }"/></p>
			<p class="card-text">Amount Spent: <c:out value="${expense.amount}"/></p>
		
		</div>
	</div>
</body>
</html>