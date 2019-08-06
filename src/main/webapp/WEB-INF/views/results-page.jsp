<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head >
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://stackpath.bootstrapcdn.com/bootswatch/4.3.1/sandstone/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-G3Fme2BM4boCE9tHx9zHvcxaQoAkksPQa/8oyn1Dzqv7gdcXChereUsXGx6LtbqA"
	crossorigin="anonymous">
	<style>
	button {
     background:none;
     color:inherit;
     border:none; 
     padding:0!important;
     font: inherit;
     /*border is optional*/
     border-bottom:1px solid #444; 
     cursor: pointer;
}
	</style>
</head>

<body>
<div class = "container">

<h1>Hotels in ${city}</h1>
	<form action="/details" method="post">
	<table  class="table">
		<tr>
			<th>Name</th>
			<th>Price per Night</th>
		</tr>	
		
		
        <c:forEach var="hotel" items="${hotel}">
			<tr>
				<td><button type=submit name=${hotel.name }>${hotel.name}</button></td>
				<td>${hotel.pricePerNight}</td>
			</tr>
		</c:forEach>
		
	</table>
	</form>
	 <p><b><a href="/">Search Again</a></b></p>
	</div>
</body>
</html>