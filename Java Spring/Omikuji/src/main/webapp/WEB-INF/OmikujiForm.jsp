<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="/css/style.css">
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<title>Omikuji Form</title>
</head>
<body>
	<h1>Send your Omikuji!</h1>
	<div>
		<form action="omikujiForm" method="post">
			<div class="form-group">
				<div class="col-sm-2 mb-4">
					<label>Pick a number from 5 to 25</label>
					<input class="form-control" type ="number" name="number">
				</div>
				<div class="col-sm-5 mb-4">
					<label>Enter the name of any city:</label>
					<input class="form-control" type="text" name ="cityName">
				</div>
				<div class="col-sm-5 mb-4">
					<label>Enter the name of any real person:</label>
					<input class="form-control" type="text" name="personName">
				</div>
				<div class="col-sm-5 mb-4">
					<label>Enter professional endeavor or hobby:</label>
					<input class="form-control" type="text" name="hobby">
				</div>
				<div class="col-sm-5 mb-4">
					<label>Enter any type of living thing:</label>
					<input class="form-control" type="text" name="livingItem">
				</div>
				<div class="col-sm-5 mb-4">
					<label>Say something nice to someone:</label>
					<input class="form-control" type="text" name="somethingNice">
				</div>
				<div>
					<label>Send and show a friend</label>
					<button class="btn btn-success" type="submit">Submit</button>
				</div>
			</div>
		</form>
	</div>
</body>
</html>