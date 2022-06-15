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
<title>Debtor's Prison</title>
</head>
<body>
	<h1>Oh no!</h1>
	<h2 class="mb-5">You lost all your money and landed in PRISON!</h2>
		
		<h1 class="gameOver blink_me" >Game Over!</h1>
	<div class="d-grid gap-2 col-3 mt-5 mx-auto">
		<a href="/reset" class="btn btn-secondary btn-rounded">Play Again!</a>
	</div>	
</body>
</html>