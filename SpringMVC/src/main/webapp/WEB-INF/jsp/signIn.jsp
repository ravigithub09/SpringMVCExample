<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

<!-- Bootstrap CSS -->
<%-- <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet"> --%>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<style type="text/css">
.myrow-container {
	margin: 20px;
}
</style>



<title>Sign In Here</title>
</head>

<body class=".container-fluid">
	<div class="container myrow-container">
		<div class="panel panel-success">
			<div class="panel-heading">
				<h3 class="panel-title">Enter Credentials</h3>
			</div>
			<div class="panel-body">

				<form:form id="loginForm" cssClass="form-horizontal"
					modelAttribute="user" method="post" action="loginUser">

					<div class="form-group">
						<div class="control-label col-xs-3">
							<form:label path="emailId">Email Id</form:label>
						</div>
						<div class="col-xs-6">
							<form:hidden path="id" />
							<form:input cssClass="form-control" path="emailId" />
						</div>
					</div>

					<div class="form-group">
						<div class="control-label col-xs-3">
							<form:label path="password">password</form:label>
						</div>
						<div class="col-xs-6">

							<form:password cssClass="form-control" path="password" />

						</div>
					</div>
					<div class="form-group">
						<div class="row">
							<div class="col-xs-4"></div>
							<div class="col-xs-4">
								<input type="submit" id="signInUser" class="btn btn-primary"
									value="Sign in" onclick="return signIn();" /> <div class="col-xs-3"></div><input
									type="submit" id="signUpUser" class="btn btn-primary"
									value="Sign up" />

							</div>
						</div>
					</div>
				</form:form>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		function signIn() {

			var emailid = $('#emailId').val().trim();
			var password = $('#password').val().trim();

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