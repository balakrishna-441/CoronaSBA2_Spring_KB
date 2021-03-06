<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product List</title>
<style type="text/css">
body {
	background-color: #88BDBC;
}

a {
	color: navy;
}

</style>
</head>
<body>
	<jsp:include page="header.jsp" />
	<h1 align="center">Product List ....</h1>
	<hr />
	<a href="${pageContext.request.contextPath}/admin/product-entry">Add
		New Product</a>
	<div align="center">
		<core:choose>
			<core:when test="${productlist.size() <= 0}">
				<div>
					<h1>No products available to display. Please add Product</h1>
				</div>
			</core:when>
			<core:otherwise>
				<table border="1">
					<thead style="background-color: #FFFFE0;">
						<th>Product ID</th>
						<th>Product Name</th>
						<th>Product Description</th>
						<th>Product Cost</th>
					</thead>
					<tbody>
						<core:forEach var="product" items="${productlist}">
							<tr style="background-color: #BDB76B; color: #ffffff;">
								<td>${product.id}</td>
								<td>${product.productName}</td>
								<td>${product.productDescription}</td>
								<td>${product.cost}</td>
								<td><a
									href="${pageContext.request.contextPath}/admin/product-delete/${product.id}">Delete</a></td>
							</tr>
						</core:forEach>
					</tbody>
				</table>
			</core:otherwise>
		</core:choose>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>