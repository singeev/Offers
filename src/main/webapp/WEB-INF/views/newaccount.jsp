<%@ include file="common/header.jspf"%>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/main.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/script/jquery-1.12.3.min.js"></script>
<!-- Script to validate passwords -->

<script type="text/javascript">
function onload(){
	$("#password").keyup(passwordConfirmation);
	$("#confirmpass").keyup(passwordConfirmation);
}

function passwordConfirmation() {
	var password = $("#password").val();
	var confirmpass = $("#confirmpass").val();

	if (password.length > 4 && confirmpass.length >= 0) {
		if (password == confirmpass) {
			$("#passconf").text("<fmt:message key='MatchedPasswords.user.password' />").css('color', 'green')
			$("#confbtn").prop("disabled", false);
		} else {
			$("#passconf").text("<fmt:message key='UnmatchedPasswords.user.password' />").css('color', 'red')
			$("#confbtn").prop("disabled", true);
		}
	}
}
$(document).ready(onload);
</script>

<title>Registration</title>
</head>
<body>

<!-- Navbar from JSPF -->
	<%@ include file="common/navbar.jspf"%>
<!--  end of navbar from JSPF -->

<!-- 	Bootstrap form -->
<div class="container" id="newoffer">
		<h3>Register now:</h3>
		<sf:form method="post" action="${pageContext.request.contextPath}/createaccount" commandName="user">
			<fieldset class="form-group">
				<sf:label path="username">Username:</sf:label><sf:errors path="username" cssClass="error"></sf:errors> 
				<sf:input path="username" type="text" class="form-control" placeholder="Enter username..."/>
				<sf:label path="name">Name:</sf:label><sf:errors path="name" cssClass="error"></sf:errors> 
				<sf:input path="name" type="text" class="form-control" placeholder="Enter your name..."/>
				<sf:label path="email" style="margin-top: 10px;">E-mail:</sf:label><sf:errors path="email" cssClass="error"></sf:errors> 
				<sf:input path="email" type="text" class="form-control" placeholder="Enter your e-mail..."/>
				<sf:label path="password" style="margin-top: 10px;">Password:</sf:label><sf:errors path="password" cssClass="error"></sf:errors> 
				<sf:input path="password" id="password" type="password" class="form-control" placeholder="Enter your password..."/>
				<sf:label path="password" id="passconf" style="margin-top: 10px;">Confirm password:</sf:label>
				<input id="confirmpass" type="password" class="form-control" placeholder="Confirm your password..."/>
			</fieldset>
			<button type="submit" id="confbtn" class="btn btn-success">Register</button>
			<a class="btn btn-warning" href="${pageContext.request.contextPath}/">Cancel</a>
		</sf:form>
	</div>


	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>