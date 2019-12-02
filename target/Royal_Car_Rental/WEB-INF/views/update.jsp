<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update</title>
</head>
<body>
<h2>Car added, view, deleted,updated</h2>
	<p><strong>Update Here | <a href="../read">Click for Read</a></strong></p>
<form action="../update" method="post">
<pre>
<c:forEach var="car" items="${listCar}">
		
Id:    	<input type="text" name="dispId" value="${car.id}" disabled="disabled"/>
		<input type="hidden" name="id" value="${car.id}"/>			
Name:  	<input type="text" name="name" value="${car.carModel}" />
		
Email: 	<input type="text" name="email" value="${car.carRegno}" />
	    
Course:	<input type="text" name="course" value="${car.carRate}" />
		    
        <input type="submit" value="Update" />	
</c:forEach>	
</pre>
</form>
   ${msg}

</body>
</html>