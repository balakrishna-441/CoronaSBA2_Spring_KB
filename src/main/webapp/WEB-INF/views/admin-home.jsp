<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form"
	prefix="spring-form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
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
<title>Admin DashBoard</title>
</head>
<body>
	<jsp:include page="header.jsp" />
	<hr />
	<div>
		<h1>Welcome to Admin DashBoard!!!!</h1>
		<hr />
		<a href="${pageContext.request.contextPath}/admin/product-list">Show
			All Available Products</a> || <a
			href="${pageContext.request.contextPath}/admin/product-entry">Add
			New Product</a>
		<jsp:include page="footer.jsp" />
	</div>
</body>
</html>