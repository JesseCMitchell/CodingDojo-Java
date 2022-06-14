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
<title>Counter</title>
<!-- YOUR own local JS -->
<script type="text/javascript" src="/js/app.js"></script>
</head>
<body>
	<h1 class="text-center mt-5">You have visited <a href="/"><c:out value="${page}"/></a> <c:out value="${count}"/> time(s).</h1>
	<p class="text-center mt-5"><a href="/your_server">Test another visit?</a></p>
	<p class="text-center"><a href="/count-two/">Add 2 visits</a></p>
	<p class="text-center"><a href="/reset-counter/">Reset counter</a></p>
	
</body>
</html>