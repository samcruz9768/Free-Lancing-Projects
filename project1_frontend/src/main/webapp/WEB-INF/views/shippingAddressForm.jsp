<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container" style="padding-top: 150px;">
<div>
<div class="col-md-6">

</div>
<div class="col-md-6">
<c:url value="/cart/createorder/${cartId }" var="url"></c:url>
<form:form action="${url }" modelAttribute="shippingaddress">

<div class="card border-primary mt-5 hoverable mx-auto" style="padding:10px 50px 10px 50px; max-width:900px;">
<h4 class="card-title" align="center"><strong>Shipping Address</strong></h4>
<div class="md-form">
<form:label path="apartmentnumber">Apartment Number</form:label>
<form:input path="apartmentnumber"  class="form-control" ></form:input>
<form:errors path="apartmentnumber" cssStyle="color:red"></form:errors>
</div>

<div class="md-form">
<form:label path="streetname">Streetname</form:label>
<form:input path="streetname"  class="form-control" ></form:input>
<form:errors path="streetname" cssStyle="color:red"></form:errors>
</div>

<div class="md-form">
<form:label path="city">City</form:label>
<form:input path="city"  class="form-control" ></form:input>
<form:errors path="" cssStyle="color:red"></form:errors>
</div>

<div class="md-form">
<form:label path="state">State</form:label>
<form:input path="state"  class="form-control" ></form:input>
<form:errors path="" cssStyle="color:red"></form:errors>
</div>

<div class="md-form">
<form:label path="zipcode">Zipcode</form:label>
<form:input path="zipcode"  class="form-control" ></form:input>
<form:errors path="" cssStyle="color:red"></form:errors>
</div>
</div>

<div class="text-center">
<button type="submit" class="btn btn-primary btn-rounded">Place Order</button>
</div>
</form:form>
</div>
</div>
</div>
<%@include file="footer.jsp" %>
</body>
</html>