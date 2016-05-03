<%@ include file="common/header.jspf"%>

<title>Offers</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/script/jquery-1.12.3.min.js"></script>
<script type="text/javascript">
	function onDeleteClick(event) {
		var doDelete = confirm("Are you sure you want to delete this offer?");
		if(doDelete == false) {
			event.preventDefault();
		}
	}

	function onReady() {
		$("#delete").click(onDeleteClick);
	}

	$(document).ready(onReady);
</script>
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
						<td>${offer.user.name}</td>
						<td>${offer.user.email}</td>
						<td>${offer.text}</td>
						<td>
							<a type="button" class="btn btn-primary" href="${pageContext.request.contextPath}/updateoffer?id=${offer.id}"><span class="glyphicon glyphicon-pencil"></span></a>
							<a type="button" class="btn btn-danger" id="delete" href="${pageContext.request.contextPath}/deleteoffer?id=${offer.id}"><span class="glyphicon glyphicon-trash"></span></a>
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