<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Account created</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
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

<h1 align="center">You've just logout!</h1>


<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>