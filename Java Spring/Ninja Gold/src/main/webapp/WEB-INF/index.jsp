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
<title>Ninja Gold Game</title>
</head>
<body>
	<h1 class="text-warning">Your Gold: <c:out value="${gold}"/></h1>
	<table>

		<tr>
		  <td>
		  	<!-- Farm POST  -->
		  	<h3>Farm</h3>
			<p>(earns 10-20 gold)</p>
			<form action="/gold" method="post"><input class="btn btn-outline-primary btn-rounded" data-mdb-ripple-color="dark" type="submit" name="farm" value="Find Gold!"/></form>
		  </td>
		  <td>
		  	<!-- Cave POST  -->
		  	<h3>Cave</h3>
			<p>(earns 5-10 gold)</p>
			<form action="/gold" method="post"><input class="btn btn-outline-primary btn-rounded" data-mdb-ripple-color="dark" type="submit" name="cave" value="Find Gold!"/></form>
		  </td>
		  <td>
		  	<!-- House POST  -->
		  	<h3>House</h3>
			<p>(earns 2-5 gold)</p>
			<form action="/gold" method="post"><input class="btn btn-outline-primary btn-rounded" data-mdb-ripple-color="dark" type="submit" name="house" value="Find Gold!"/></form>
		  </td>
		  <td>
		  	<!-- Quest POST  -->
		  	<h3>Quest</h3>
			<p>(earns/takes 0-50 gold)</p>
			<form action="/gold" method="post"><input class="btn btn-outline-warning btn-rounded" data-mdb-ripple-color="dark" type="submit" name="quest" value="Find Gold?"/></form>
		  </td>
		  <td>
		  	<!-- Spa POST  -->
		  	<h3>Spa</h3>
			<p>(takes 5-20 gold)</p>
			<form action="/gold" method="post"><input class="btn btn-outline-danger btn-rounded" data-mdb-ripple-color="dark" type="submit" name="spa" value="Visit Spa"/></form>
		  </td>
		</tr>

	</table>
	<div class="d-grid gap-2 col-6 mt-5 mx-auto">
		<form action="/reset" method="post"><input class="btn btn-primary d-grid gap-2 col-6 mx-auto" type="submit" value="Reset"/></form>
	</div>

	<br>
	<h2>Activities:</h2>
	<br>
	<iframe src="/activities/" title="Activities Iframe"></iframe>
	
</body>
</html>