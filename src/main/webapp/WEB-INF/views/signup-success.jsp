<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html;
charset=ISO-8859-1">
<title>javaguides.net</title>
<link href="<c:url 
value="/resources/css/bootstrap.min.css" />"rel="stylesheet">
<script src="<c:url value="/resources/js/jquery1.11.1.min.js" />"></script>
<script src="<c:url
value="/resources/js/bootstrap.min.js" />"></script>
<%@ page isELIgnored="false"%>
<title>Sign Up Successfully</title>
</head>
<body>
<sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost:3306/royal-car-rental"
         user = "root"  password = "rimmi"/>
        
         <sql:update dataSource = "${snapshot}" var = "result">
        INSERT INTO user_register VALUES ( '${user.email}','${user.firstName}', '${user.lastName}','${user.userName}','${user.password}');
      </sql:update>
     
     
<div class="container">
		<div class="col-md-offset-2 col-md-7">
			<h1>${message}</h1>
			<hr />
			<table class="table table-striped table-bordered">
				<tr>
					<td><b>First Name </b>: ${user.firstName}</td>
				</tr>
				<tr>
					<td><b>Last Name </b> : ${user.lastName}</td>
				</tr>
				<tr>
					<td><b>UserName </b> : ${user.userName}</td>
				</tr>
				<tr>
					<td><b>Email </b>: ${user.email}</td>
				</tr>
				<tr>
					<td><b>password </b>: ${user.password}</td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>