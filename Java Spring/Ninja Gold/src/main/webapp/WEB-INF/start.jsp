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
<title>PRESS START</title>
<!-- YOUR own local JS -->
<script type="text/javascript" src="/js/app.js"></script>
</head>
<body>
	<h1 class="text-warning">NINJA GOLD</h1>
	
	<h2 class="gameOver blink_me mt-5">PRESS START</h2>
	
	<img src="https://pixelartmaker-data-78746291193.nyc3.digitaloceanspaces.com/image/e3690521ae67d60.png" alt="" style="width:100px;height:100px;" class="ninjaPic blink_ninja"/>
	
	<a href="/reset" class="btn btn-warning d-grid gap-2 col-3 mt-5 mx-auto">START</a>
</body>
</html>