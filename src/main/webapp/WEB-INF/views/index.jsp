<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<link
	href="https://stackpath.bootstrapcdn.com/bootswatch/4.3.1/sandstone/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-G3Fme2BM4boCE9tHx9zHvcxaQoAkksPQa/8oyn1Dzqv7gdcXChereUsXGx6LtbqA"
	crossorigin="anonymous">
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
</head>
<body>
<main class="container">
	<h1>Hotel Search</h1>
	<form action="/results-page" method= "post">
  
		<h3>City</h3>
			<select name="city">
				<option value="Detroit">Detroit</option>
				<option value="Petoskey">Petoskey</option>
				<option value="Charlevoixy">Charlevoixy</option>
				<option value="Chicago">Chicago</option>
			</select> 
	<br>
	<br>
		<p>
			<button type="submit">Go</button>
		</p>
	</form>	
	</main>

</body>
</html>