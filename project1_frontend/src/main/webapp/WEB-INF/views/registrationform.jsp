<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Shop+ : ${title }</title>
</head>
<body>
<div class="container mt-5 pt-3">
<c:url value='/all/registercustomer' var="url"></c:url>
<form:form action="${url }" modelAttribute="customer">
<section id="registerform" class="pb-5">
<div class="card border-primary mt-5 hoverable mx-auto" style="padding:10px 50px 10px 50px; max-width:900px;">
<h4 class="card-title"><strong>Customer Details</strong></h4>
<div class="md-form">
<form:label path="firstname">Enter Firstname</form:label>
<form:input path="firstname" class="form-control"></form:input>
<form:errors path="firstname" cssStyle="color:red"></form:errors>
</div>

<div class="md-form">
<form:label path="lastname">Enter Lastname</form:label>
<form:input path="lastname"  class="form-control" ></form:input>

</div>

<div class="md-form">
<form:label path="email">Email</form:label>
<form:input path="email" type="email" class="form-control" ></form:input>
<form:errors path="email" cssStyle="color:red"></form:errors>
<span style="color:red">${duplicateEmail }</span>
</div>

<div class="md-form">
<form:label path="phonenumber">PhoneNumber</form:label>
<form:input path="phonenumber"  class="form-control" ></form:input>
<form:errors path="phonenumber" cssStyle="color:red"></form:errors>
</div>
</div>

<div class="card border-primary mt-5 hoverable mx-auto" style="padding:10px 50px 10px 50px; max-width:900px;">
<h4 class="card-title"><strong>Login credentials</strong></h4>
<div class="md-form">
<form:label path="user.username">Username</form:label>
<form:input path="user.username"  class="form-control" ></form:input>
<form:errors path="user.username" cssStyle="color:red"></form:errors>
<span style="color:red">${duplicateUsername }</span>
</div>

<div class="md-form">
<form:label path="user.password">Password</form:label>
<form:input path="user.password" type="password" class="form-control" ></form:input>
<form:errors path="user.password" cssStyle="color:red"></form:errors>
</div>
</div>

<div class="card border-primary mt-5 hoverable mx-auto" style="padding:10px 50px 10px 50px; max-width:900px;">
<h4 class="card-title"><strong>Billing Address</strong></h4>
<div class="md-form">
<form:label path="billingaddress.apartmentnumber">Apartment Number</form:label>
<form:input path="billingaddress.apartmentnumber"  class="form-control" ></form:input>
<form:errors path="billingaddress.apartmentnumber" cssStyle="color:red"></form:errors>
</div>

<div class="md-form">
<form:label path="billingaddress.streetname">Streetname</form:label>
<form:input path="billingaddress.streetname"  class="form-control" ></form:input>
<form:errors path="billingaddress.streetname" cssStyle="color:red"></form:errors>
</div>

<div class="md-form">
<form:label path="billingaddress.city">City</form:label>
<form:input path="billingaddress.city"  class="form-control" ></form:input>
<form:errors path="billingaddress.city" cssStyle="color:red"></form:errors>
</div>

<div class="md-form">
<form:label path="billingaddress.state">State</form:label>
<form:input path="billingaddress.state"  class="form-control" ></form:input>
<form:errors path="billingaddress.state" cssStyle="color:red"></form:errors>
</div>

<div class="md-form">
<form:label path="billingaddress.zipcode">Zipcode</form:label>
<form:input path="billingaddress.zipcode"  class="form-control" ></form:input>
<form:errors path="billingaddress.zipcode" cssStyle="color:red"></form:errors>
</div>
</div>
<div class="card border-primary mt-5 hoverable mx-auto" style="padding:10px 50px 10px 50px; max-width:900px;">
<h4 class="card-title"><strong>Shipping Address</strong></h4>
<div class="md-form">
<form:label path="shippingaddress.apartmentnumber">Apartment Number</form:label>
<form:input path="shippingaddress.apartmentnumber"  class="form-control" ></form:input>
<form:errors path="shippingaddress.apartmentnumber" cssStyle="color:red"></form:errors>
</div>

<div class="md-form">
<form:label path="shippingaddress.streetname">Streetname</form:label>
<form:input path="shippingaddress.streetname"  class="form-control" ></form:input>
<form:errors path="shippingaddress.streetname" cssStyle="color:red"></form:errors>
</div>

<div class="md-form">
<form:label path="shippingaddress.city">City</form:label>
<form:input path="shippingaddress.city"  class="form-control" ></form:input>
<form:errors path="" cssStyle="color:red"></form:errors>
</div>

<div class="md-form">
<form:label path="shippingaddress.state">State</form:label>
<form:input path="shippingaddress.state"  class="form-control" ></form:input>
<form:errors path="" cssStyle="color:red"></form:errors>
</div>

<div class="md-form">
<form:label path="shippingaddress.zipcode">Zipcode</form:label>
<form:input path="shippingaddress.zipcode"  class="form-control" ></form:input>
<form:errors path="" cssStyle="color:red"></form:errors>
</div>
</div>

<div class="text-center">
<button type="submit" class="btn btn-primary btn-rounded">Register</button>
</div>
</section>
</form:form>
</div>
<%@ include file="footer.jsp" %>
</body>
</html>                                  
