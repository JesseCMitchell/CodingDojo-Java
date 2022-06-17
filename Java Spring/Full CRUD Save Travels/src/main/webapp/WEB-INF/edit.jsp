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
<title>EDIT</title>

</head>
<body style="margin: 10vw;">
<h1 class="text-success">Edit Expense</h1>
<br>
	<div>
		<form:form action="/edit/${expense.id}" method="post" modelAttribute="expense">
		<input type="hidden" name="_method" value="put">
		
		<div class="row mb-4" style="margin: 5vw;">
			<div class="col">
				<div class="form-outline mb-4">
					<form:label path="name">Expense Name: </form:label><br />
					<form:errors path="name" class="text-danger"/>
					<form:input style="width:450px;" path="name" class="form-control"/>
				</div>
			
				<div class="form-outline mb-4">
					<form:label path="vendor">Vendor: </form:label><br />
					<form:errors path="vendor" class="text-danger"/>
					<form:input style="width:450px;" path="vendor" class="form-control"/>
				</div>
				
				<div class="form-outline mb-4">
					<form:label path="amount">Amount: </form:label><br />
					<form:errors path="amount" class="text-danger"/>
					<form:input style="width:450px;" type="double" path="amount" class="form-control"/>
				</div>
				
				<div class="form-outline mb-4">
					<form:label path="description">Description: </form:label><br />
					<form:errors path="description" class="text-danger"/>
					<form:textarea style="width:450px;" rows="4" path="description" class="form-control"/>
				</div>
				
				<div>
					<input type="submit" value="Submit" style="width:450px;" class="btn btn-warning btn-block mb-4"/>
				</div>
			</div>
			<div>
				<a href="/expenses/" style="margin: 15vw;" class="previous round">Go back</a>
			</div>
		</div>

	</form:form>
		
	</div>
</body>
</html>