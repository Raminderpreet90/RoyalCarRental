<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Royal Car Rental</title>
<link href="<c:url
value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet">
<script src="<c:url value="/resources/js/jquery1.11.1.min.js" />"></script>
<script src="<c:url
value="/resources/js/bootstrap.min.js" />"></script>

</head>
<body>


<body>
	<div class="container">
		<div class="col-md-offset-2 col-md-7">
			<h2 class="text-center">Royal Car Rental-
				Sign up Form</h2>
			<div class="panel panel-info">
				<div class="panel-heading">
					<div class="panel-title">Sign Up</div>
				</div>
				<div class="panel-body">
					<form:form action="saveSignUpForm" cssClass="formhorizontal"
						method="post" modelAttribute="signUpForm">
						<div class="form-group">
							<label for="firstname" class="col-md-3 controllabel">First
								Name</label>
							<div class="col-md-9">
								<form:input path="firstName" cssClass="formcontrol" />
							</div>
						</div>
						<div class="form-group">
							<label for="lastname" class="col-md-3 controllabel">Last
								Name</label>
							<div class="col-md-9">
								<form:input path="lastName" cssClass="formcontrol" />
							</div>
						</div>
						<div class="form-group">
							<label for="icode" class="col-md-3 controllabel">User
								Name </label>
							<div class="col-md-9">
								<form:input path="userName" cssClass="formcontrol" />
							</div>
						</div>
						<div class="form-group">
							<label for="password" class="col-md-3 controllabel">Password</label>
							<div class="col-md-9">
								<form:password path="password" cssClass="formcontrol" />
							</div>
						</div>
						<div class="form-group">
							<label for="email" class="col-md-3 controllabel">Email</label>
							<div class="col-md-9">
								<form:input path="email" cssClass="form-control" />
							</div>
						</div>
						<div class="form-group">
							<!-- Button -->
							<div class="col-md-offset-3 col-md-9">
								<form:button cssClass="btn btnprimary">Submit</form:button>
							</div>
						</div>
					</form:form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>