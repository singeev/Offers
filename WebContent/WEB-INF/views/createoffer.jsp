<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/main.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>New Offer</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">

</head>
<body>

	<!-- Navbar -->
	<nav role="navigation" class="navbar navbar-default">
	<div>
		<a class="navbar-brand">MyPlace</a>
	</div>
	<div class="navbar-collapse">
		<ul class="nav navbar-nav">
			<li><a href="${pageContext.request.contextPath}/">Home</a></li>
		</ul>
		<ul class="nav navbar-nav">
			<li><a href="${pageContext.request.contextPath}/offers">Offers</a></li>
		</ul>
		<ul class="nav navbar-nav navbar-right">
			<li>
				<form action="<c:url value="/logout" />" method="post">
					<button type="submit" class="btn btn-link btn-lg" style="text-decoration: none; border:0px; height:50px;">Logout</button> 
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
				</form>
			</li>
		</ul>
	</div>
	</nav>
	<!--  end of navbar -->

<!-- 	Bootstrap form -->
<div class="container" id="newoffer">
		<h3>Creating a new offer:</h3>
		<sf:form method="post" action="${pageContext.request.contextPath}/docreate" commandName="offer">
			<fieldset class="form-group">
				<sf:label path="name">Name:</sf:label><sf:errors path="name" cssClass="error"></sf:errors> 
				<sf:input path="name" type="text" class="form-control" placeholder="Enter your name..."/>
				<sf:label path="email" style="margin-top: 10px;">E-mail</sf:label><sf:errors path="email" cssClass="error"></sf:errors> 
				<sf:input path="email" type="text" class="form-control" placeholder="Enter your e-mail..."/>
				<sf:label path="text" style="margin-top: 10px;">Your offer:</sf:label><sf:errors path="text" cssClass="error"></sf:errors> 
				<sf:input path="text" type="text" class="form-control" placeholder="Enter your offer..."/>
			</fieldset>
			<button type="submit" class="btn btn-success">Create advert</button>
			<a class="btn btn-warning" href="${pageContext.request.contextPath}/">Cancel</a>
		</sf:form>
	</div>


	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>