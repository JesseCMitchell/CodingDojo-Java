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
	
	<a href="/">Delete</a> - <a href="/">Dashboard</a>
	
	<br>
	<form:form action="/languages/${language.id}" method="post" modelAttribute="language">
		<input type="hidden" name="_method" value="put">
	
		<div>
			<form:label path="name">Language Name: </form:label><br />
			<form:errors path="name" class="text-danger"/>
			<form:input path="name"/>
		</div>
	
		<div>
			<form:label path="creator">Creator: </form:label><br />
			<form:errors path="creator" class="text-danger"/>
			<form:input path="creator"/>
		</div>
		
		<div>
			<form:label path="version">Version: </form:label><br />
			<form:errors path="version" class="text-danger"/>
			<form:input type="double" path="version"/>
		</div>
		
		<div>
			<input class="button" type="submit" value="Submit"/>
		</div>
		
		
	
	</form:form>
</body>
</html>