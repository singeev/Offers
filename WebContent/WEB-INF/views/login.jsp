<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Login Page</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/login.css">
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
</head>
<body onload='document.f.username.focus();'>

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
			<li><a href="">Logout</a></li>
		</ul>
	</div>
	</nav>
<!--  end of navbar -->
	
<!-- Bootstrap Login Form -->

	<div class="wrapper">
		<form class="form-signin" name='f' action='/offers/login'
			method='POST'>
			<h2 class="form-signin-heading">Please login</h2>
			<input type="text" class="form-control" name="username" placeholder="Name" required="" autofocus="" /> 
			<input type="password" class="form-control" name="password" placeholder="Password" required="" /> 
			<label class="checkbox"><input type="checkbox" value="remember-me" id="rememberMe" name="rememberMe"> Remember me</label>
			<button class="btn btn-lg btn-primary btn-block" name="submit" type="submit">Login</button>
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
			<p align="center" style="margin-top: 5px; margin-bottom: 0px;">...or <a href="<c:url value="/newaccount"/>">click here to register</a>, if you're new!</p>
		</form>
		<c:if test="${param.error != null}">
			<p align="center" style="color: #D26232; font-weight: bold;">Login failed! Check credentials!</p>
		</c:if>
	</div>

<!-- End of Bootstrap Login Form -->	
	
	
	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>