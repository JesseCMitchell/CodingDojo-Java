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
<title>SAFE TRAVELS</title>

</head>
<body style="margin: 5vw;">
	<h1 class="text-center text-primary">Safe Travels App</h1>
   
	<table class="table table-striped table-hover align-middle mb-0 bg-white">
	  	<thead class="bg-light">
	        <tr>
	            <th class="text-center">Expense</th>
	            <th class="text-center">Vendor</th>
	            <th class="text-center">Amount</th>
	            <th class="text-center">Actions</th>
	            <th></th>
	        </tr>
	    </thead>
	    <tbody>
	    	<c:forEach var="expense" items="${expenses}">
				<tr>
					<td class="text-center"><a href="/expenses/${expense.id}"><c:out value="${expense.name}"></c:out></a></td>
					<td class="text-center"><c:out value="${expense.vendor}"></c:out></td>
					<td class="text-center">$<c:out value="${expense.amount}"></c:out></td>
					<td class="text-center"><a href="/edit/${expense.id}">EDIT</a></td>
					<td>
						<form action="/expenses/delete/${expense.id}" method="post">
							<input type="hidden" name="_method" value="delete"> 
							<input type="submit" value="Delete" class="btn btn-danger">
						</form>
					</td>
				</tr>	
			</c:forEach>

	    </tbody>
   </table>
   
   <br>
	<div>
	
		<form:form action="/expenses" method="post" modelAttribute="expense">
			<div class="row mb-4" >
				<h2 class="text-left text-primary">Add an Expense:</h2>
				<div class="col">
				
					<div class="form-outline mb-4">
						<form:label path="name" class="form-label">Expense Name: </form:label><br />
						<form:errors path="name" class="text-danger"/>
						<form:input style="width:450px;" path="name" class="form-control"/>
					</div>
				
					<div class="form-outline mb-4">
						<form:label path="vendor" class="form-label">Vendor: </form:label><br />
						<form:errors path="vendor" class="text-danger"/>
						<form:input style="width:450px;" path="vendor" class="form-control"/>
					</div>
					
					<div class="form-outline mb-4">
						<form:label path="amount" class="form-label">Amount: </form:label><br />
						<form:errors path="amount" class="text-danger"/>
						<form:input style="width:450px;" type="double" path="amount" class="form-control"/>
					</div>
					
					<div class="form-outline mb-4">
						<form:label path="description" class="form-label">Description: </form:label><br />
						<form:errors path="description" class="text-danger"/>
						<form:textarea style="width:450px;" rows="4" path="description" class="form-control"/>
					</div>
					
					<div>
						<input type="submit" value="Submit" style="width:450px;" class="btn btn-primary btn-block mb-4"/>
					</div>
					
				</div>
			</div>
			
			
		
		</form:form>
	</div>
</body>
</html>