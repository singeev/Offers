<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/main.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">

</head>
<body>

	<!-- Navbar -->
	<nav role="navigation" class="navbar navbar-default">
	<div>
		<a class="navbar-brand">My Place</a>
	</div>
	<div class="navbar-collapse">
		<ul class="nav navbar-nav">
			<li><a href="${pageContext.request.contextPath}/">Home</a></li>
		</ul>
		<ul class="nav navbar-nav">
			<li><a href="${pageContext.request.contextPath}/offers">Offers</a></li>
		</ul>
		<ul class="nav navbar-nav navbar-right">
			<li><a href="">Logout</a></li>
		</ul>
	</div>
	</nav>
	<!--  end of navbar -->

<!-- 	Bootstrap form -->
<div class="container" id="newoffer">
		<h3>Register now:</h3>
		<sf:form method="post" action="${pageContext.request.contextPath}/createaccount" commandName="user">
			<fieldset class="form-group">
				<sf:label path="username">Username:</sf:label><sf:errors path="username" cssClass="error"></sf:errors> 
				<sf:input path="username" type="text" class="form-control" placeholder="Enter your name..."/>
				<sf:label path="email" style="margin-top: 10px;">E-mail:</sf:label><sf:errors path="email" cssClass="error"></sf:errors> 
				<sf:input path="email" type="text" class="form-control" placeholder="Enter your e-mail..."/>
				<sf:label path="password" style="margin-top: 10px;">Password:</sf:label><sf:errors path="password" cssClass="error"></sf:errors> 
				<sf:input path="password" type="text" class="form-control" placeholder="Enter your password..."/>
				<sf:label path="password" style="margin-top: 10px;">Confirm password:</sf:label> 
				<input type="text" class="form-control" placeholder="Confirm your password..."/>
			</fieldset>
			<button type="submit" class="btn btn-success">Register</button>
			<a class="btn btn-warning" href="${pageContext.request.contextPath}/">Cancel</a>
		</sf:form>
	</div>


	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>