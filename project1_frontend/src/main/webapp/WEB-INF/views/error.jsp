<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href='<c:url value="/resources/css/bootstrap.min.css"></c:url>'>
<link rel="stylesheet" href='<c:url value="/resources/css/mdb.min.css"></c:url>'>
<link rel="stylesheet" href='<c:url value="/resources/css/footer.css"></c:url>'>

<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" 
      type="image/jpg" 
      href='<c:url value="/resources/images/faviccon.png"></c:url>'>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Shop+ : ${title }</title>
</head>
<body>

<nav class="navbar fixed-top navbar-expand-lg navbar-light scrolling-navbar white">
<a class="navbar-brand" href='<c:url value="/home"></c:url>'><img src='<c:url value="/resources/images/logo.png"></c:url>' alt="image" class="img-fluid" height="100px" width="100px"></a>
		<div class="container">
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
        aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
     	 
		<div  class="collapse navbar-collapse" id="navbarSupportedContent">
		
		<ul class="navbar-nav mr-auto">
		<c:url value="/home" var="homeUrl"></c:url>
			<li class="nav-item" id="home">
			<a class="nav-link"  href="${homeUrl }">Home<span class="sr-only">You are in home page link</span></a>
			</li>
			</ul>
        	</div>
	 </div>
	</nav>



<div class="container" style="padding-top:100px;">
	<div class="row">
		<div class="col-sm-12">
			<div class="jumbotron">
				<h3>${errorTitle }</h3>
				<hr/>
				<blockquote>${errorDescription }</blockquote>
			</div>
		</div>
	</div>
</div>

<%@include file="footer.jsp" %>



	<!-- jQuery library -->
<script src='<c:url value="/resources/js/jquery-3.2.1.min.js"></c:url>'></script>
	<!-- Popper -->
	<script src='<c:url value="/resources/js/popper.min.js"></c:url>'></script>
<!-- Latest compiled Bootstrap JS -->
<script src='<c:url value="/resources/js/bootstrap.min.js"></c:url>'></script>

	<!-- MDB BootStrap -->
	<script src='<c:url value="/resources/js/mdb.min.js"></c:url>'></script>
</body>
</html>