<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="<c:url 
value="/resources/css/bootstrap.min.css" />"rel="stylesheet">
<script src="<c:url value="/resources/js/jquery1.11.1.min.js" />"></script>
<script src="<c:url
value="/resources/js/bootstrap.min.js" />"></script>
<%@ page isELIgnored="false"%>
<title>Insert title here</title>

</head>
<body>



<div class="container">
		<div class="col-md-offset-2 col-md-7">
			<h1>${message}</h1>
			<hr />
			<table class="table table-striped table-bordered">
				<tr>
				
				</tr>
				<tr>
					<td><b>CarColor </b> : ${carbook.color}</td>
				</tr>
				<tr>
					<td><b>CarRent</b> : ${carbook.carRent}</td>
				</tr>
				
				
			</table>
		</div>
	</div>
</body>
</html>