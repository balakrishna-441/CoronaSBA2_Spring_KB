<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring"
	uri="http://www.springframework.org/tags/form"%>
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

.error {
	color: red;
}
</style>
<title>Order CheckOut</title>
</head>
<body>
	<jsp:include page="header.jsp" />
	<h3>Your Cart...</h3>
	<hr>
	<core:choose>
		<core:when test="${sessionScope.cartItems!= null}">
			<a href="${pageContext.request.contextPath }/user/show-list">Continue
				Shopping...</a>
			<br />
			<div align="center">
				<table border="1">
					<thead style="background-color: #FFFFE0;">
						<th>Id</th>
						<th>Product Name</th>
						<th>Price</th>
						<th>Quantity</th>
						<th>Sub Total</th>
					</thead>
					<core:set var="total" value="0" scope="request"></core:set>
					<tbody>
						<core:forEach var="item" items="${sessionScope.cartItems }">
							<core:set var="total"
								value="${total + item.amount * item.quantity }"></core:set>
							<tr style="background-color: #BDB76B; color: #ffffff;">
								<td>${item.productId }</td>
								<td>${item.productName }</td>
								<td>${item.amount }</td>
								<td>${item.quantity }</td>
								<td>${item.amount * item.quantity }</td>
							</tr>
						</core:forEach>
					</tbody>
				</table>
				<table>
					<tbody>
						<tr>
							<td colspan="2" align="right">Total Order Cost</td>
							<td>${total }</td>
						</tr>
					</tbody>
				</table>
			</div>
			<hr />
			<div align="center">
				<spring:form
					action="${pageContext.request.contextPath}/user/finalize"
					method="post" modelAttribute="coronaKit"
					onsubmit="return validateAddressField()">
					<div>
						<div>
							<spring:label path="deliveryAddress">Enter Delivery Address Detials:</spring:label>
						</div>
						<div>
							<div>
								<spring:textarea id="deliveryAddress" path="deliveryAddress"
									cols="20" rows="5" />
							</div>
							<div>
								<span id="reqTxtAddress" class="error"></span>
							</div>
						</div>
						<br /> <br />
						<div>
							<input type="submit" value="Confirm Order">
						</div>
					</div>
				</spring:form>
			</div>
		</core:when>
		<core:otherwise>
			<div>
				<h2>No Kits are added to cart for checkout. Please add kits to
					proceed....</h2>
				<a href="${pageContext.request.contextPath }/user/show-list">Show
					Products For Shopping</a>
			</div>
		</core:otherwise>
	</core:choose>
	<jsp:include page="footer.jsp" />
	<script type="text/javascript">
		function validateAddressField() {
			var returnValue;
			var address = document.getElementById("deliveryAddress").value;
			document.getElementById("reqTxtAddress").innerHTML = "";
			returnValue = true;
			if (address.trim() == "") {
				document.getElementById("reqTxtAddress").innerHTML = "Address field is mandatory.";
				returnValue = false;
			}
			return returnValue;
		}
	</script>
</body>
</html>