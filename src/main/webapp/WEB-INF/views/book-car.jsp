<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Book car</title>

<link href="<c:url
value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet">
<script src="<c:url value="/resources/js/jquery1.11.1.min.js" />"></script>
<script src="<c:url
value="/resources/js/bootstrap.min.js" />"></script>

</head>
<body>

		<div class="col-md-offset-2 col-md-7">
			<h2 class="text-center">Welcome user Book Car hare</h2>
			<div class="panel panel-info">
				<div class="panel-heading">
					<div class="panel-title">Book -Car</div>
				</div>
				<div class="panel-body">
					<form:form action="saveBookCar" cssClass="formhorizontal"
						method="post" modelAttribute="bookCar" >
						<div class="form-group">
							<label for="Model" class="col-md-3 controllabel">CarModel</label>
							<div class="col-md-9">
								<form:input path="Model" cssClass="formcontrol" />
							</div>
						</div>
						<div class="form-group">
							<label for="color" class="col-md-3 controllabel">CarColor</label>
							<div class="col-md-9">
								<form:input path="color" cssClass="formcontrol" />
							</div>
						</div>
						<div class="form-group">
							<label for="carRent" class="col-md-3 controllabel">CarRent </label>
							<div class="col-md-9">
								<form:input path="carRent" cssClass="formcontrol" />
							</div>
						</div>
						
						<div class="form-group">
							<!-- Button -->
							<div class="col-md-offset-3 col-md-9">
								<form:button cssClass="btn btnprimary">Book</form:button>
							</div>
						</div>
					</form:form>
				</div>
			</div>
		</div>
	</div>

</body>
</html>