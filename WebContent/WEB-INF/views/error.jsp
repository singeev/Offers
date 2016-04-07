<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/error.css">
<link rel="stylesheet" href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"	>
<title>Error page</title>
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
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="error-template">
                <h1>
                    Oops!</h1>
                <h2>
                    404 Not Found</h2>
                <div class="error-details">
                    Sorry, an error has occured, Requested page not found!
                </div>
                <div class="error-actions">
                    <a href="${pageContext.request.contextPath}/" class="btn btn-primary btn-lg"><span class="glyphicon glyphicon-home"></span>
                        Take Me Home </a><a href="${pageContext.request.contextPath}/" class="btn btn-default btn-lg"><span class="glyphicon glyphicon-envelope"></span> Contact Support </a>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>