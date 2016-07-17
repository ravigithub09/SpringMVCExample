<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="author" content="Venu">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<title>Sign up User</title>
<!-- Bootstrap CSS -->
<%-- <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet"> --%>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<style type="text/css">
.myrow-container {
	margin: 20px;
}
</style>
</head>
<body class=".container-fluid">
	<div class="container myrow-container">
		<div class="panel panel-success">
			<div class="panel-heading">
				<h3 class="panel-title">Sign up User</h3>
			</div>
			<div class="panel-body">
				<form:form id="signUpForm" cssClass="form-horizontal"
					modelAttribute="user" method="post" action="saveUser">

					<div class="form-group">
						<div class="control-label col-xs-3">
							<form:label path="firstName">First Name</form:label>
						</div>
						<div class="col-xs-6">
							<form:hidden path="id" />
							<form:input cssClass="form-control" path="firstName" />
						</div>
					</div>

					<div class="form-group">
						<div class="control-label col-xs-3">
							<form:label path="lastName">Last Name</form:label>
						</div>
						<div class="col-xs-6">

							<form:input cssClass="form-control" path="lastName" />
						</div>
					</div>


					<div class="form-group">
						<form:label path="emailId" cssClass="control-label col-xs-3">Email id</form:label>
						<div class="col-xs-6">
							<form:input cssClass="form-control" path="emailId" />
						</div>
					</div>

					<div class="form-group">
						<div class="control-label col-xs-3">
							<form:label path="password">Password</form:label>
						</div>
						<div class="col-xs-6">
							<form:input cssClass="form-control" path="password" />
						</div>
					</div>

					<div class="form-group">
						<div class="row">
							<div class="col-xs-4"></div>
							<div class="col-xs-4">
								<input type="submit" id="signUpUser" class="btn btn-primary"
									value="Sign up" onclick="return signUp();" />
							</div>
							<div class="col-xs-4"></div>
						</div>
					</div>

				</form:form>
			</div>
		</div>
	</div>



	<script type="text/javascript">
		function signUp() {

			
			var first_name = $('#firstName').val().trim();
			var last_name = $('#lastName').val().trim();
			var emailid = $('#emailId').val().trim();
			var password = $('#password').val().trim();
			if (first_name.length == 0) {
				alert('Please enter first name');
				$('#firstName').focus();
				return false;
			}
			if (last_name.length == 0) {
				alert('Please enter last name');
				$('#lastName').focus();
				return false;
			}
			if (emailid.length == 0) {
				alert('Please enter email id');
				$('#emailId').focus();
				return false;
			}

			if (password.length == 0) {
				alert('Please enter password');
				$('#password').focus();
				return false;
			}
			return true;
		};
	</script>
</body>
</html>
