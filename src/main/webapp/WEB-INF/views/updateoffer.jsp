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
		<h3>Edit offer's details:</h3>
		<sf:form method="post" action="${pageContext.request.contextPath}/updateoffer" commandName="offer">
			<fieldset class="form-group">
				<sf:label path="text" for="offertext" style="margin-top: 10px;">Your offer:</sf:label><sf:errors path="text" cssClass="error"></sf:errors>
				<sf:textarea path="text" type="text" class="form-control" rows="5" id="offertext" placeholder="Enter your offer..."/>
				<sf:input type="hidden" path="id" class="form-control" value="${offer.id}" />
			</fieldset>
			<button type="submit" class="btn btn-success">Save changes</button>
			<a class="btn btn-warning" href="${pageContext.request.contextPath}/">Cancel</a>
		</sf:form>
	</div>


	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>