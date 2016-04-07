<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>

<!-- Navbar from JSPF -->
	<%@ include file="common/navbar.jspf"%>
<!--  end of navbar from JSPF -->

	<div>
		<h1 align="center">You're on Home Page!</h1>
		<div class="error-actions"
			style="margin-top: 15px; margin-bottom: 15px;" align="center">
			<a href="${pageContext.request.contextPath}/offers"
				class="btn btn-primary btn-lg" style="margin-right: 10px;"> Show
				All </a> <a href="${pageContext.request.contextPath}/createoffer"
				class="btn btn-default btn-lg"> Create New </a>
		</div>
		<h3 align="center">
			<a href="${pageContext.request.contextPath}/error">Show me the
				error Page!</a>
			</h1>
	</div>



	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>