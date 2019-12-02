<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
         <link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet">
		<title>ROYAL CAR RENTAL</title>
		
	</head>
	<body>
	<div class="imgForAccount">
	<div class="menu">
			<div class="leftMenu">
				<h4>ROYAL CAR RENTAL</h4>
			</div>
			
			<div class="rightMenu">
				<ul id="ul1">
			
					<a href="services.jsp"><li>SERVICES</li></a>
					<a href="aboutUs.jsp"><li>ABOUT US</li></a>
					
					<a href="account.jsp"><li>ACCOUNT</li></a>
				</ul>
			</div>
		</div>
		<div class="TextPara">
		
			<h4>CREATE ACCOUNT</h4>
			<button id="btn1"><a href="UserLogin.jsp">USER LOGIN</a></button>
			<button id="btn2"><a href="AdminLogin.jsp">ADMIN LOGIN</button>
			<br><br>
			
			
			<div class="registerText">
			<p></p><a href="showSignUpForm" style='color: dark blue;'>First time user click here to :   Register</a>
			</div>
		</div>
		
	</body>
</html>