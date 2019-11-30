<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Read</title>
</head>
<body>
<h2>Car added, view, deleted,updated</h2>
	<p><strong>Car List is Here | <a href="create.jsp">Click for Create</a></strong></p>
	<table border="1">
		<tr>
			<th>Id</th>
			<th>CarModel</th>
			<th>CarRegno</th>
			<th>CarRate</th>
			
		</tr>
		<c:forEach var="car" items="${listCar}">
			<tr>
				<td>${car.id}</td>
				<td>${car.carModel}</td>
				<td>${car.carRegno}</td>
				<td>${car.carRate}</td>
				<td><a href="update/<c:out value='${car.id}'/>">Update</a> | <a
					href="delete/<c:out value='${car.id}'/>">Delete</a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>