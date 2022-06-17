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
<title>Languages</title>

</head>
<body style="margin: 10vw;">
 	<table class="table table-striped table-bordered table-hover align-middle mb-0 bg-white">
    <thead>
        <tr>
            <th>Name</th>
            <th>Creator</th>
            <th>Version</th>
            <th>Actions</th>
        </tr>
    </thead>
    <tbody>
		<c:forEach var="language" items="${languages}">
			<tr>
				<td><a href="/languages/${language.id}"><c:out value="${language.name}"></c:out></a></td>
				<td><c:out value="${language.creator}"></c:out></td>
				<td><c:out value="${language.version}"></c:out></td>
				<td><a href="/languages/${language.id}/delete">delete</a> | <a href="/languages/${language.id}/edit">edit</a></td>
			</tr>	
		</c:forEach>
    </tbody>
</table>
<br>
<div>
<form:form action="/languages" method="post" modelAttribute="language">

	<div class="mb-3">
		<form:label path="name">Language Name: </form:label><br />
		<form:errors path="name" class="text-danger"/>
		<form:input path="name"/>
	</div>

	<div class="mb-3">
		<form:label path="creator">Creator: </form:label><br />
		<form:errors path="creator" class="text-danger"/>
		<form:input path="creator"/>
	</div>
	
	<div class="mb-5">
		<form:label path="version">Version: </form:label><br />
		<form:errors path="version" class="text-danger"/>
		<form:input type="double" path="version"/>
	</div>
	
	<div>
		<input class="btn btn-primary btn-block mb-4" type="submit" value="Submit"/>
	</div>
	
	

</form:form>
</div>
</body>
</html>