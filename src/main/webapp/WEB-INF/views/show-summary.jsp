<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order Summary Page</title>
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
	<hr />
	<div align="center">
		<h1>Thank you for shopping with us..</h1>
		<h1>Your order Details</h1>
		<table>
			<tbody>
				<tr>
					<td>Order Id</td>
					<td>:</td>
					<td>${CoronaKit.id}</td>
				</tr>
				<tr>
					<td>Order Amount</td>
					<td>:</td>
					<td>${CoronaKit.totalAmount}</td>
				</tr>
				<tr>
					<td>Ordered Products</td>
					<td>:</td>
					<td>
						<table border="1">
							<thead style="background-color: #FFFFE0;">
								<th>Kit ID</th>
								<th>Product Name</th>
								<th>Product Quantity</th>
								<th>Sub Total Cost</th>
							</thead>
							<tbody>
								<core:forEach var="item" items="${KitDetails}">
									<tr style="background-color: #BDB76B; color: #ffffff;">
										<td>${item.id }</td>
										<td>${item.productName }</td>
										<td>${item.quantity }</td>
										<td>${item.amount}</td>
									</tr>
								</core:forEach>
							</tbody>
						</table>
					</td>
				</tr>
				<tr>
					<td>Delivery Address</td>
					<td>:</td>
					<td>${CoronaKit.deliveryAddress}</td>
				</tr>
			</tbody>
		</table>
	</div>
	<core:remove var="cartItems" scope="session" />
	<hr />
	<br />
	<div align="center">
		<a href="${pageContext.request.contextPath }/user/show-list"><button>Shop
				Again!!!</button></a>
	</div>
</body>
</html>