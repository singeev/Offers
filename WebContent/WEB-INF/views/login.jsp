<%@ include file="common/header.jspf"%>

<title>Login Page</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/login.css">
</head>
<body onload='document.f.username.focus();'>

<!-- Navbar from JSPF -->
	<%@ include file="common/navbar.jspf"%>
<!--  end of navbar from JSPF -->
	
<!-- Bootstrap Login Form -->

	<div class="wrapper">
		<form class="form-signin" name='f' action='/offers/login'
			method='POST'>
			<h2 class="form-signin-heading">Please login</h2>
			<input type="text" class="form-control" name="username" placeholder="Name" required="" autofocus="" /> 
			<input type="password" class="form-control" name="password" placeholder="Password" required="" /> 
			<label style="margin-top: 5px;"><input type="checkbox" name="remember-me" checked="checked"> Remember me</label>
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