<%@ include file="common/header.jspf"%>

<title>Admin page</title>
</head>
<body>

	<!-- Navbar from JSPF -->
	<%@ include file="common/navbar.jspf"%>
	<!--  end of navbar from JSPF -->

	<h1 align="center">For administrators only!</h1>

	<div class="container">
		<h3>Users list:</h3>
		<table class="table table-striped">
			<thead>
				<th>Username</th>
				<th>E-mail</th>
				<th>Role</th>
				<th>Enabled</th>
			</thead>
			<tbody>
				<c:forEach items="${users}" var="user">
					<tr>
						<td>${user.username}</td>
						<td>${user.email}</td>
						<td>${user.authority}</td>
						<td>${user.enabled}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>



	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>