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
<title>Omikuji Show</title>
</head>
<body>
	<h1>Behold! Your Omikuji: </h1>
		<div class="textContainer">
			<p>
			In ${number} years, you will live in ${cityName } 
			with ${personName } as your roommate, ${hobby } for a living. 
			The next time you see a ${livingItem }, you will have good luck. 
			Also, ${somethingNice }!
			</p>
		</div>
		<a class="btn btn-info goBack mt-5" href="/omikuji">Go back</a>
</body>
</html>