<%@ include file="common/header.jspf"%>

<title>Home</title>
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