<%@ include file="common/header.jspf"%>

<title>New Offer</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/main.css">
</head>
<body>

<!-- Navbar from JSPF -->
	<%@ include file="common/navbar.jspf"%>
<!--  end of navbar from JSPF -->

<!-- 	Bootstrap form -->
<div class="container" id="newoffer">
		<h3>Creating a new offer:</h3>
		<sf:form method="post" action="${pageContext.request.contextPath}/docreate" commandName="offer">
			<fieldset class="form-group">
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