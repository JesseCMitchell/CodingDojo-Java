<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- YOUR own local CSS -->
<link rel="stylesheet" type="text/css" href="/css/style.css">
<link href="https://fonts.googleapis.com/css2?family=Press+Start+2P&display=swap" rel="stylesheet">
<!-- YOUR own local JS -->
<script type="text/javascript" src="/js/app.js"></script>
<title>Activities</title>
</head>
<body>
	<c:forEach var="action" items="${actions}">
		<c:if test = "${action.contains('earned')}">
	       <p style="color: green;"><c:out value="${action}"></c:out></p>
	    </c:if>
	    <c:if test = "${action.contains('lost')}">
	       <p style="color: red;"><c:out value="${action}"></c:out></p>
	    </c:if>
	</c:forEach>
</body>
</html>