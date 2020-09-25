<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form"
	prefix="spring-form"%>
<%@taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
body {
	background-color: #88BDBC;
}

a {
	color: navy;
}

div {
	align-items: center;
	text-align: center;
}
</style>
<title>Main Menu</title>
</head>
<body>
	<jsp:include page="header.jsp" />
	<h2>
		Hello
		<security:authentication property="principal.username" />
	</h2>
	<br />
	<hr/>
	<div>
		<h1>Welcome to Corona Kit Dashboard!!!</h1>

		<security:authorize access="hasRole('ADMIN')">
			<hr />
			<a href="${pageContext.request.contextPath}/admin/home">ADMIN
				DASHBOARD</a>
		</security:authorize>

		<security:authorize access="hasRole('USER')">
			<hr />
			<a href="${pageContext.request.contextPath}/user/home">USER
				DASHBOARD</a>
		</security:authorize>
	</div>
</body>
</html>