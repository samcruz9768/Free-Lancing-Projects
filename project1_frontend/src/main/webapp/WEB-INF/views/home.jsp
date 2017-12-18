<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>E-Commerce ${title }</title>
</head>

<body>

<div id="myCarousel" class="carousel slide" data-ride="carousel" style="padding-top:30px">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  	<div class="carousel-inner">
    	<div class="item active">
      		<img src="${images }/car1.jpg" alt="First Slide" style="height:350px;width: 100%;margin: auto">
    	</div>

    	<div class="item">
      		<img src="${images }/car2.jpg" alt="Second Slide" style="height:350px;width: 100%;margin: auto">
    	</div>
asdasd
    	<div class="item">
     		 <img src="${images }/car3.jpg" alt="Third Slide" style="height:350px;width: 100%;margin: auto">
    	</div>
    	<div class="item">
     		 <img src="${images }/car4.jpg" alt="Fourth Slide" style="height:350px;width: 100%;margin: auto">
    	</div>
  	</div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
</body>
<%@include file="footer.jsp" %>
</html>



