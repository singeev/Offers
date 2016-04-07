<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Offers</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<!-- Navbar from JSPF -->
	<%@ include file="common/navbar.jspf"%>
<!--  end of navbar from JSPF -->

<div class="container">
		<h3>Offers list:</h3>
		<table class="table table-striped">
			<thead>
				<th>Name</th>
				<th>E-mail</th>
				<th>Text</th>
				<th>Edit / Delete</th>
			</thead>
			<tbody>
				<c:forEach items="${offers}" var="offer">
					<tr>
						<td>${offer.name}</td>
						<td>${offer.email}</td>
						<td>${offer.text}</td>
						<td>
							<a type="button" class="btn btn-primary" href=""><span class="glyphicon glyphicon-pencil"></span></a>
							<a type="button" class="btn btn-danger" href="${pageContext.request.contextPath}/deleteoffer?id=${offer.id}"><span class="glyphicon glyphicon-trash"></span></a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div>
			<a class="btn btn-success" href="${pageContext.request.contextPath}/createoffer">Add new</a>
		</div>
	</div>
	

<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>