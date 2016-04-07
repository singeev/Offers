<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

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

	if (password.length > 4 && confirmpass.length != 0) {
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

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">

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
				<sf:input path="username" type="text" class="form-control" placeholder="Enter your name..."/>
				<sf:label path="email" style="margin-top: 10px;">E-mail:</sf:label><sf:errors path="email" cssClass="error"></sf:errors> 
				<sf:input path="email" type="text" class="form-control" placeholder="Enter your e-mail..."/>
				<sf:label path="password" style="margin-top: 10px;">Password:</sf:label><sf:errors path="password" cssClass="error"></sf:errors> 
				<sf:input path="password" id="password" type="text" class="form-control" placeholder="Enter your password..."/>
				<sf:label path="password" id="passconf" style="margin-top: 10px;">Confirm password:</sf:label>
				<input id="confirmpass" type="text" class="form-control" placeholder="Confirm your password..."/>
			</fieldset>
			<button type="submit" id="confbtn" class="btn btn-success">Register</button>
			<a class="btn btn-warning" href="${pageContext.request.contextPath}/">Cancel</a>
		</sf:form>
	</div>


	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>