<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="header.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Shop+ : ${title }</title>
</head>
<body>
<div class="container" style="padding-top:200px;">
        <c:url value="/cart/confirm/${cartId }" var="url"></c:url>
<form:form action="${url }" modelAttribute="order">
	<div class="text-center">
	<h2><b>Order Details</b></h2>
	</div>
	<h3><strong>Reciept:</strong></h3><h4>#${order.orderId }</h4>
	<div class="row">
		<div class="col-xs-6 col-sm-6 col-md-6">
		<address>
		<h5><strong>Shipping Address</strong></h5>${order.cart.customer.shippingaddress.streetname}
		<br/>${order.cart.customer.shippingaddress.city}, ${order.cart.customer.shippingaddress.state}
		<br/>${order.cart.customer.shippingaddress.zipcode}
		</address>
		</div>
		
		<div class="col-xs-6 col-sm-6 col-md-6">
		<p>Shipping Date: ${order.purchaseDate }</p>
		</div>
	</div>
	
	<div class="row">
		<div class="col-xs-12 col-sm-12 col-md-12">
         <address>
         <h5><strong>Billing Address</strong></h5>
         ${order.cart.customer.billingaddress.streetname}
         <br/>
         ${order.cart.customer.billingaddress.city}, ${order.cart.customer.billingaddress.state}
         <br/>
         ${order.cart.customer.billingaddress.zipcode}
         </address>		
		</div>
	</div>
	
	<div class="table-responsive">
		
			<table class="table table-hover">
                                <thead>
                                    <tr>
                                        <td>Image</td>
                                        <td>Product</td>
                                        <td>Quantity</td>
                                        <td class="text-center">Price</td>
                                        <td class="text-center">Total</td>
                                    </tr>
                                </thead>
                                <tbody>
                                <c:set var="grandTotal" value="0.0"></c:set>
                                <c:forEach var="cartItem" items="${order.cart.cartItems}">
                                    <tr>
                            <c:url value="/resources/images/${cartItem.product.id }.png" var="imgUrl"></c:url>
                                        <td><img src="${imgUrl }" class="img-fluid"></td>
                                        <td class="col-md-9"><em>${cartItem.product.productname}</em></td>
                                        <td class="col-md-1" style="text-align: center">${cartItem.quantity}</td>
                                        <td class="col-md-1" style="text-align: center">${cartItem.product.price}</td>
                                        <td class="col-md-1" style="text-align: center">${cartItem.totalPrice}</td>
                                        <c:set var="grandTotal" value="${grandTotal + cartItem.totalPrice }"></c:set>
                                    </tr>
                                </c:forEach>

                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td class="text-right">
                                        <h4><strong>Grand Total:</strong></h4>
                                    </td>
                                    <td class="text-center text-danger">
                                        <h4><strong><span class="fa fa-inr"></span> ${order.cart.grandTotal}</strong></h4>
                                    </td>
                                </tr>

                                </tbody>
                            </table>
                            </div>
                            <div class="text-center">
							<button type="submit" class="btn btn-primary btn-rounded">Confirm</button>
							</div>
							</form:form>
</div>

<%@ include file="footer.jsp" %>
</body>