<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>E-Commerce ${title }</title>
</head>
<body>
<c:url value='/all/registercustomer' var="url"></c:url>


<div id="signupbox" style="display:block; margin-top:50px" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
<div class="panel panel-info">
<div class="panel-heading">
 <div class="panel-title">Sign Up</div>
 <div style="float:right; font-size: 85%; position: relative; top:-10px"></div>
</div>  
<div class="panel-body" >
<form:form id="signupform" class="form-horizontal" role="form" action="${url }" modelAttribute="customer">
<div id="signupalert" style="display:none" class="alert alert-danger">
<p>Error:</p>
<span></span>
</div>



Enter Customer Details
<div class="form-group">
<form:label path="firstname" class="col-md-3 control-label">Enter Firstname</form:label>
<div class="col-md-9">
<form:input path="firstname" class="form-control"></form:input>
</div>
<form:errors path="firstname" ></form:errors>
</div>

<div class="form-group">
<form:label path="lastname" class="col-md-3 control-label">Enter Lastname</form:label>
<div class="col-md-9">
<form:input path="lastname"  class="form-control"></form:input>
</div>
</div>

<div class="form-group">
<form:label path="email" class="col-md-3 control-label">Enter Email</form:label>
<div class="col-md-9">
<form:input path="email" type="email" class="form-control" title="Please enter valid email address"></form:input>
</div>
<form:errors path="email" cssStyle="color:red"></form:errors>
<span style="color:red">${duplicateEmail }</span>
</div>

<div class="form-group">
<form:label path="phonenumber" class="col-md-3 control-label">PhoneNumber</form:label>
<div class="col-md-9">
<form:input path="phonenumber"  class="form-control" type="number"></form:input></div>
<form:errors path="phonenumber" cssStyle="color:red"></form:errors>
</div>
 <!-- Button --> 
<div class="form-group">
 <div class="col-md-offset-3 col-md-9">
<form:button id="btn-signup" class="btn btn-info"><i class="icon-hand-right"></i> &nbsp; Sign Up</form:button><span style="margin-left:8px;"></span> 
</div>
</div>
</form:form>
</div>
</div>
</div>
</body>
</html>                                  
