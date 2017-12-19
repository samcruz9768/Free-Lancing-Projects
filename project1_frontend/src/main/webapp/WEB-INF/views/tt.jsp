<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container mt-5 pt-3">

        <!-- Section: product details -->
        <section id="productDetails" class="pb-5">

            <!--News card-->
            <div class="card border-primary mt-5 hoverable">
            <div class="card-title">Product Details</div>
            	<form method="post" action="<c:url value='/cart/addtocart/${product.id }'></c:url>" >
                <div class="row mt-5">
                    <div class="col-lg-6">
                        <div class="row mx-2">
                            <img src='<c:url value='/resources/images/${product.id }.png'></c:url>' class="img-fluid" height="500px" width="500px" alt="Image Not Available">
                        </div> 
                    </div>

                    <div class="col-lg-5 mr-3 center-on-small-only">
                        <h2 class="h2-responsive center-on-small-only product-name font-bold dark-grey-text mb-1">
                            <strong> ${product.productname }</strong>
                        </h2>
                        <c:if test="${product.quantity == 0 }">
                        <span class="badge badge-danger" style="">Sold Out</span></c:if>
                        
                        
                        
                        <h3 class="h3-responsive center-on-small-only mb-5">
                            <span class="red-text font-bold">
                                <strong>${product.price }</strong>
                            </span>
                        </h3>

                        <p>${product.productDescription }</p>
                        <c:if test="${product.quantity == 0 }">
                        <p>
                            <strong>Stock:</strong>Out Of Stock</p></c:if>
                        <p>
                            <strong>Stock:</strong>${product.quantity }</p>
                        <!-- Add to Cart -->
                        <section class="color">
                            <div class="mt-5">
                                <p class="grey-text">Enter Quantity:</p>
                                <div class="row center-on-small-only">

                                    <div class="col-md-12 ">
	                                    <c:if test="${product.quantity > 0 }">
										<security:authorize access="hasRole('ROLE_USER')">
										<div class="md-form">
										<p style="color: red;">${message }</p>
										<b>Enter Quantity:</b><input type="number" name="quantity" id="quantity" class="form-control" required>
										
										</div>
										<button type="submit"  value='Add To Cart' name="pass" class="btn btn-info btn-lg glyphicon" >
										<span class="glyphicon-shopping-cart"></span>Add to Cart 
										</button>
										</security:authorize>
										</c:if>
                                    </div>  
                                </div>
                            </div>
                        </section>
                        <!-- /.Add to Cart -->
                    </div>
                </div>
            </div>
            <!--News card-->
        </section>
 </div>
</body>
</html>