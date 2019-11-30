<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>

<%@ page import = "java.io.*,java.util.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%-- <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> --%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="contect-Type" content="text/html;charset=ISO-8859-1">
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet">
	<link href="<c:url 
value="/resources/css/bootstrap.min.css" />"rel="stylesheet">
<script src="<c:url value="/resources/js/jquery1.11.1.min.js" />"></script>
<script src="<c:url
value="/resources/js/bootstrap.min.js" />"></script>
<%@ page isELIgnored="false"%>

<title>ROYAL CAR RENTAL</title>
</head>
<body>


       <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost:3306/royal-car-rental"
         user = "root"  password = "rimmi"/>
       
         <sql:query dataSource = "${snapshot}" var = "result">
         SELECT * from user_register where userName='${user.userName}' and password='${user.password}';
      </sql:query>

		<%-- //<p>Welcome,'${result.rows}'/></p> --%>
	<c:forEach var = "row" items = "${result.rows}">
            <tr>
               <td><c:out value = "${row.userName}"/></td>
               <td><c:out value = "${row.password}"/></td>
            </tr>
         </c:forEach>
      
      
	<div class="backgroundImg">
		<div class="menu">
			<div class="leftMenu">
				<h4>ROYAL CAR RENTAL</h4>
			</div>
			<div class="rightMenu">
				<ul id="ul">

				</ul>
			</div>
		</div>
		<div class="TextPara">
           <h1>Welcome User</h1>
			<h4>Branded-Cost Effective-Attractive look</h4>
			<h1>JOIN OUR COMPANY TO BUY LUXURY CARS</h1>

		</div>


	</div>



</body>
</html>