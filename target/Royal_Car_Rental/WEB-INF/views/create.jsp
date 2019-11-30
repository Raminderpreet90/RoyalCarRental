<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create</title>
</head>
<body>
<h2>Add , Read, Update and delete cars records</h2>
<form action="create" method="post">
<pre>

<strong>Create Here | <a href="./read">Click for Read</a></strong>
    CarModel: <input type="text" name="carModel" />
	
	CarRegistrationNumber: <input type="text" name="carRegno" />
	
	CarRate: <input type="text" name="carRate" />

	<input type="submit" value="Create" />

</pre>
</form>
 ${msg}
</body>
</html>