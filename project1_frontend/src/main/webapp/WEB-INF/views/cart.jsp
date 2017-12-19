<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>E-Commerce ${title }</title>
</head>
<body>
<div class="container" style="padding-top:100px;">
<div >
<c:if test="${not empty cart.cartItems }">
<a href="<c:url value='/cart/clearcart/${cart.id}'></c:url>" class="btn btn-danger" pull-left  >
<i class="fa fa-remove" aria-hidden="true"></i>
Clear Cart
</a>
</c:if>
<c:if test="${not empty cart.cartItems }">
<a href="<c:url value='/cart/checkout/${cart.id }'></c:url>" class="btn btn-success pull-right">
<i class="fa fa-shopping-basket" aria-hidden="true"></i> Check Out  </a>
</c:if>
<table class="table table-hover">
<thead>
<tr><th>Name</th><th>Quantity</th><th>Total Price</th><th>Remove</th>
</tr>
</thead>
<!-- double grandTotal=0 -->
<c:set var="grandTotal" value="0"></c:set>
<c:forEach items="${cart.cartItems }" var="cartItem">
<tr>
<td>${cartItem.product.productname }</td>
<td>${cartItem.quantity }</td>
<td>${cartItem.totalPrice }</td>

<td><a href="<c:url value='/cart/deletecartitem/${cartItem.id }'></c:url>" class="label label-danger" pull-left>

<span class="glyphicon glypicon-remove" ></span>Remove
</a></td>
<td></td>
<!--  grandTotal = cartItem.totalPrice + grandTotal -->

<c:set var="grandTotal" value="${cartItem.totalPrice + grandTotal }"></c:set>
</tr>
</c:forEach>
</table>
Total Price : ${grandTotal }
</div>

</div>
<%@include file="footer.jsp" %>
</body>
</html>