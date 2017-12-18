<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@ page isELIgnored="false" %>
<html>
<head>
<script>
	window.menu = '${title}';
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!--CDn Data Table -->


<link rel="stylesheet" href='<c:url value="/resources/css/bootstrap.min.css"></c:url>'>
<link rel="stylesheet" href='<c:url value="/resources/css/mdb.min.css"></c:url>'>
<link rel="stylesheet" href='<c:url value="/resources/sass/mdb/free/mdb.scss"></c:url>'>
<link href="https://cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css" rel="stylesheet">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/ju/dt-1.10.16/datatables.min.css"/>
 


<style>
.navbar .btn-group .dropdown-menu a:hover {
background-color: #4285F4 !important;
}
</style>
</head>

<body>
<nav class="navbar fixed-top navbar-expand-lg navbar-light scrolling-navbar white">
		<div class="container">
		 <a class="navbar-brand" href="#">Navbar</a>
		<button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#collapse-example" aria-expanded="false" aria-label="Toggle navigation">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
     	 </button>
     	 
		<div  class="collapse navbar-collapse" id="collapse-example">
		
		<ul class="navbar-nav mr-auto">
		<c:url value="/home" var="homeUrl"></c:url>
			<li class="nav-item" id="home">
			<a class="nav-link"  href="${homeUrl }">Home<span class="sr-only">You are in home page link</span></a>
			</li>
			
			<c:url value="/aboutus" var="aboutUsUrl"></c:url>
			<li class="nav-item" id="about">
			<a class="nav-link"  href="${aboutUsUrl }">About</a>
			</li>
			
			<c:url value="/admin/getproductform?id=0" var="productForm"></c:url>
			<security:authorize access="hasRole('ROLE_ADMIN')">
			<li class="nav-item" id="productform">
			<a class="nav-link" href="${productForm }">Add Product</a>
			</li>
			</security:authorize>
			<c:url value="/all/getallproducts" var="productsUrl"></c:url>

	     	<li class="nav-item btn-group">
			<a href="" class="nav-link dropdown-toggle waves-effect waves-light" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Select by Category</a>
			<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink" style="position: absolute;">
		
			<c:forEach items="${categories }" var="c">
			<c:url value="/all/product/searchbycategory?searchCondition=${c.categoryname }" var="url" ></c:url>
        	<a class="dropdown-item waves-effect waves-light" href="${url }" >${c.categoryname } </a>
        	 </c:forEach>
         	<c:url value="/all/product/searchbycategory?searchCondition=All" var="url1"></c:url>
         	<a class="dropdown-item waves-effect waves-light" href="${url1 }">All</a>
        	</div>
        	</li>
        	
        </ul>
        </div>
		
		
	
	
			<ul class="navbar-nav ml-auto">
			<c:if test="${pageContext.request.userPrincipal.name==null }">
			<li class="nav-item" id="login"><span class="fa fa-user"></span>
			<a class="nav-link" href='<c:url value="/login"></c:url>'>Sign In</a>
			</li>
			</c:if>
			
			<li class="nav-item" id="cart">
			<a class="nav-link" href='<c:url value="/cart/getcart"></c:url>'>Cart</a></li>
			
			<c:if test="${pageContext.request.userPrincipal.name!=null }">
			<li class="nav-item btn-group">
			<a href="" class="nav-link dropdown-toggle waves-effect waves-light" id="navbarDropdownMenuProfile" data-toggle="dropdown">${pageContext.request.userPrincipal.name}<b class="caret"></b></a>
			<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuProfile">
			<a class="dropdown-item"href="<c:url value='/j_spring_security_logout'></c:url>">Logout</a>
			</div>
			</li>
			
			</c:if>
			
			</ul>
			</div>
	
	</nav>

	<!-- jQuery library -->
<script src='<c:url value="/resources/js/jquery-3.2.1.min.js"></c:url>'></script>
	<!-- Popper -->
	<script src='<c:url value="/resources/js/popper.min.js"></c:url>'></script>
<!-- Latest compiled Bootstrap JS -->
<script src='<c:url value="/resources/js/bootstrap.min.js"></c:url>'></script>

	<!-- MDB BootStrap -->
	<script src='<c:url value="/resources/js/mdb.min.js"></c:url>'></script>
	<script src='<c:url value="/resources/js/highlight.js"></c:url>'></script>
	  <!-- Angular Js -->
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>
      
       <!-- JQuery -->
    <script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
	<script type="text/javascript" src="https://cdn.datatables.net/v/ju/dt-1.10.16/datatables.min.js"></script>
</body>
</html>