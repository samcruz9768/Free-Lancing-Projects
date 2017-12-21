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
<div class="container" style="padding-top: 150px;">
<a onclick="goBack()"><i class="fa fa-arrow-circle-left fa-2x info-text" aria-hidden="true"></i></a>
</div>
<div class="container">
<div >
<c:if test="${not empty cart.cartItems }">
<a href="<c:url value='/cart/clearcart/${cart.id}'></c:url>" class="btn btn-danger pull-right">
<i class="fa fa-remove" aria-hidden="true"></i>
Clear Cart
</a>


<a href="<c:url value='/cart/checkout/${cart.id }'></c:url>" class="btn btn-success pull-right">
<i class="fa fa-shopping-basket" aria-hidden="true"></i> Check Out  </a>

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

<td><a href="<c:url value='/cart/deletecartitem/${cartItem.id }'></c:url>" class="label label-danger">

<i class="fa fa-remove red-text" aria-hidden="true"></i>
</a></td>
<td></td>
<!--  grandTotal = cartItem.totalPrice + grandTotal -->

<c:set var="grandTotal" value="${cartItem.totalPrice + grandTotal }"></c:set>
</tr>
</c:forEach>
</table>
Total Price : ${grandTotal }
</c:if>
</div>
<c:if test="${empty cart.cartItems }">
<div class="text-center">
<h4><strong>Your Cart Is Empty!</strong></h4>

<a class="btn btn-primary btn-rounded" role="button" href='<c:url value="/all/getallproducts"></c:url>'><i class="fa fa-cart-plus" aria-hidden="true"></i>&nbsp;Click To Shop More</a>

</div>
</c:if>
</div>
<%@include file="footer.jsp" %>

</body>
</html>