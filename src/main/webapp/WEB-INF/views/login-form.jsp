<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form"
	prefix="spring-form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style type="text/css">
body {
	background-color: #88BDBC;
}

.error {
	color: red;
}

a {
	color: navy;
}

div {
	align-items: center;
	text-align: center;
}
</style>
<title>Login Form</title>
</head>
<body>

	<div align="center">
		<h1>Enter Login Details.......</h1>
		<core:if test="${param.error != null}">
			<i class="error">Invalid Credentials!!!</i>
		</core:if>
		<spring-form:form action="${pageContext.request.contextPath}/validate"
			method="POST" onsubmit="return validateFields()">
			<br />
			<br />
			<label>Enter user name</label>
			<input type="text" name="username" id="userName" />
			<div>
				<span id="userError" class="error"></span>
			</div>
			<br />
			<br />
			<label>Enter password</label>
			<input type="password" name="password" id="passWord" />
			<div>
				<span id="passWordError" class="error"></span>
			</div>
			<br />
			<br />
			<input type="submit" value="Login" />
		</spring-form:form>
		<core:if test="${param.logout != null}">
			<i>You have been logged out successfully!!!</i>
		</core:if>
	</div>
	<script type="text/javascript">
		function validateFields() {
			var returnValue;
			var userName = document.getElementById("userName").value;
			var password = document.getElementById("passWord").value;
			document.getElementById("userError").innerHTML = "";
			document.getElementById("passWordError").innerHTML = "";
			returnValue = true;
			if (userName.trim() == "") {
				document.getElementById("userError").innerHTML = "User Name field is required.";
				returnValue = false;
			}

			if (password.trim() == "") {
				document.getElementById("passWordError").innerHTML = "Password field is required.";
				returnValue = false;
			}

			return returnValue;
		}
	</script>
</body>
</html>