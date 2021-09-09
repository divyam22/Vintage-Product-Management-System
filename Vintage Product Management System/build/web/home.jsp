<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
</head>
<body>
<%@ include file="header.jsp" %>

<%
String userName = (String)session.getAttribute("userName");
%>

<div align="center">
    <h1 style="color : blueviolet">Vintage Product Management System</h1>
<h3><label><b>Welcome</b> <a style="color: rgb(203,75,27)"><%= userName %></a></label></h3><br><hr><br>
<h2 style="color : #3b5998">What is product management?</h2>
<h4>Product management is an organizational function that guides every step of a product's 
information: from availability, to storage and pricing, by focusing on the product and 
its customers first and foremost. To build the best possible product, product managers 
advocate for customers within the organization and make sure the voice of the market is
heard and needed. </h4> 
<br><hr><br>

<h4>To add new products click here - 
<button style="padding: 10px ; "> <a href="addProduct.jsp" style="text-decoration: none"><b>ADD PRODUCT</b></a></button><br><br></h4>

<h4>To view product details click here - 
    <button style="padding: 10px ; "> <a href="viewProducts.jsp" style="text-decoration: none"><b>VIEW PRODUCT</b></a></button><br><br></h4>
    
    <h4>To search any product click here - 
        <button style="padding: 10px ; "> <a href="searchProduct.jsp" style="text-decoration: none"><b>SEARCH PRODUCT</b></a></button></h4>
</div>

</body>
</html>