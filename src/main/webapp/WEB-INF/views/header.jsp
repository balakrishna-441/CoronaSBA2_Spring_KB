<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form"
	prefix="spring-form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
span {
	align-items: right;
	text-align: right;
}
</style>
</head>
<body>
	<span> <spring-form:form
			action="${pageContext.request.contextPath}/logout" method="POST">
			<input type="submit" value="Logout">
		</spring-form:form>
	</span>
</body>
</html>