<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Shop+ : ${title }</title>
</head>
<body>
<div class="container" style="padding-top:100px;">
<div class="card border-primary mt-5 hoverable mx-auto" style="padding:10px 50px 10px 50px; max-width:500px;">
<!-- Form contact -->
<form>

    <h3 class="card-title" align="center"><strong>Contact Us</strong></h3>

    <div class="md-form">
        <i class="fa fa-user prefix grey-text"></i>
        <input type="text" id="name" class="form-control" required autofocus>
        <label for="name">Your name</label>
    </div>

    <div class="md-form">
        <i class="fa fa-envelope prefix grey-text"></i>
        <input type="email" id="email" class="form-control" required>
        <label for="email">Your email</label>
    </div>

    <div class="md-form">
        <i class="fa fa-tag prefix grey-text"></i>
        <input type="text" id="subject" class="form-control" required>
        <label for="subject">Subject</label>
    </div>

    <div class="md-form">
        <i class="fa fa-pencil prefix grey-text"></i>
        <textarea type="text" id="message" class="md-textarea" style="height: 100px" required></textarea>
        <label for="message">Your message</label>
    </div>

    <div class="text-center">
        <button class="btn btn-primary btn-rounded">Send <i class="fa fa-paper-plane-o ml-1"></i></button>
    </div>

</form>
<!-- Form contact -->
</div>
</div>
<%@include file="footer.jsp" %>
</body>
</html>