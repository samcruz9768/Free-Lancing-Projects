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



</head>
<body>
<div class="container" style="padding-top:120px;">
<c:if test="${not empty error }">
<div class="alert alert-danger" role="alert">
  <p class="text-center">${error }</p>
</div>
</c:if>
<section id="registerform" class="pb-5">
<c:url value="/j_spring_security_check" var="loginUrl"></c:url>
<form action="${loginUrl }" method="POST">
<div class="card border-primary mt-5 hoverable mx-auto" style="padding:10px 50px 10px 50px; max-width:500px;">
<h3 class="card-title" align="center"><strong>Login</strong></h3>
    <div class="md-form">
        <i class="fa fa-user prefix grey-text"></i>
        <input type="text" name="j_username" class="form-control" required autofocus>
        <label for="orangeForm-name">Username</label>
    </div>

    <div class="md-form">
        <i class="fa fa-lock prefix grey-text"></i>
        <input type="password" name="j_password" class="form-control" required>
        <label for="orangeForm-pass">Password</label>
    </div>
    	
        <div class="text-center">
       <button type="submit" class="btn btn-primary btn-rounded">Login</button>
    </div>
</div>
</form>

</section>
                                <div class="md-form">
                                    <div class="col-md-12 control">
                                        <div style="border-top: 1px solid#888; padding-top:15px; font-size:85%" >
                                            Don't have an account! 
                                        <a href="<c:url value="all/registrationform"></c:url>">
                                            Sign Up Here
                                        </a>
                                        </div>
                                    </div>
                                </div> 
</div>

<%@include file="footer.jsp" %>
</body>
</html>

 