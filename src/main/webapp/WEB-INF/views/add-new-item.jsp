<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring"
	uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<link href="css/custom.css" type="text/css" rel="stylesheet">
<meta charset="ISO-8859-1">
<title>Add New Product</title>
<style type="text/css">
body {
	background-color: #88BDBC
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
</head>
<body>
	<jsp:include page="header.jsp" />
	<h1 align="center">Add New Product..</h1>
	<hr />
	<a href="${pageContext.request.contextPath}/admin/product-list">Show
		All Available Products</a>
	<div>
		<spring:form
			action="${pageContext.request.contextPath}/admin/product-save"
			method="post" modelAttribute="product">
			<div>
				<div>
					<spring:label path="productName">Enter Product Name:</spring:label>
				</div>
				<div>
					<div>
						<spring:input path="productName" />
					</div>
					<div>
						<spring:errors path="productName" cssClass="error" />
					</div>
				</div>
				<br /> <br />
				<div>
					<spring:label path="cost">Enter Product Cost:</spring:label>
				</div>
				<div>
					<spring:input path="cost" type="number" />
				</div>
				<div>
					<spring:errors path="cost" cssClass="error" />
				</div>
				<br /> <br />
				<div>
					<spring:label path="productDescription">Enter Product Description:</spring:label>
				</div>
				<div>
					<spring:input path="productDescription" />
				</div>
				<div>
					<spring:errors path="productDescription" cssClass="error" />
				</div>
				<br /> <br />
				<div>
					<input type="submit" value="Save Product">
				</div>
			</div>
		</spring:form>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>