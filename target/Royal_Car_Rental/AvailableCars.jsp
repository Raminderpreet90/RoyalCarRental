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
		<link rel="stylesheet" href="css/style.css" type="text/css">
	</head>
	<body>
		<div class="menu">
			<div class="leftMenu">
				<h4>ROYAL CAR RENTAL</h4>
			</div>
			<div class="rightMenu">
				<ul id="ul1">
					<a href="Home.jsp"><li>HOME</li></a>
					<a href="services.jsp"><li>SERVICES</li></a>
					<a href="aboutUs.jsp"><li>ABOUT US</li></a>
					<a href="AvailableCars.jsp"><li>AVAILABLE CAR LIST </li></a>
					<a href="account.jsp"><li>ACCOUNT</li></a>
				</ul>
			</div>
		</div>
		
		<h2 class="text-center"> CARS AVAILABE ON ROYAL CAR RENTAL</h2>
		
		<div class="container2">
		
		
			<div class="gallery">
				<img src="img/Nissan Patrol.jpg">
				<div class="description">Model:Nissan Patrol-2019 <br>
					                     Rent Price:$ 300 per day<br><br>
					<button id="book"><a href="">Book Now </a></button>
					<button id="book"><a href="">View More discription </a></button> </div>
			</div>
			
			
			<div class="gallery">
				<img src="img/nissanAlmera.jpg">
				<div class="description">Model: Nissan Almera-2018 <br>
					                     Rent Price:$ 400 per day<br><br>
					<button id="book"><a href="">Book Now </a></button>
					<button id="book"><a href="">View More discription </a></button> </div>
			</div>
			
			
			
			
			
			<div class="gallery">
				<img src="img/2019-Audi-R8-V1-1080.jpg">
				<div class="description">Model:Audi-R8-V1-1080 <br>
					                     Rent Price:$ 400 per day<br><br>
					<button id="book"><a href="">Book Now </a></button> 
					<button id="book"><a href="">View More discription </a></button> 
					
				</div>
			</div>
				
			<div class="gallery">
				<img src="img/hyundari verna.jpg">
				<div class="description">Model:  Hyundari verna <br>
					                     Rent Price: $ 350 per day<br><br>
					<button id="book"><a href="">Book Now </a></button>
					<button id="book"><a href="">View More discription </a></button> </div>
			</div>
			
			<div class="gallery">
				<img src="img/honda-civic.jpg">
				<div class="description">Model:Honda-civic-2019 <br>
					                     Rent Price:$ 450 per day<br><br>
					<button id="book"><a href="">Book Now </a></button>
					<button id="book"><a href="">View More discription </a></button> </div>
			</div>
			
			<div class="gallery">
				<img src="img/Hyundai Verna.jpg">
				<div class="description">Model:verna-patrol :2019 <br>
					                     Rent Price:$ 350 per day<br><br>
					<button id="book"><a href="">Book Now </a></button>
					<button id="book"><a href="">View More discription </a></button> </div>
			</div>
			
			
		
		
		
			
		</div>
		
		
	</body>
</html>