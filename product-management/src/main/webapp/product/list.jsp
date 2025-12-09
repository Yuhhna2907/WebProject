<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
        <title>Product List</title>
</head>
<body>
<h1>Product List</h1>
<p><a href="${pageContext.request.contextPath}/products?action=create">Create New Product</a></p>
<form method="get" action="${pageContext.request.contextPath}/products">
    <input type="hidden" name="action" value="search">
    <label>
        <input type="text" name="keyword" placeholder="Search by name">
    </label>
    <input type="submit" value="Search">
</form>
<table border="1">
    <tr>
        <th>ID</th><th>Name</th><th>Price</th><th>Manufacturer</th><th>Edit</th><th>Delete</th><th>View</th>
    </tr>
    <jsp:useBean id="products" scope="request" type="java.util.List"/>
    <c:forEach var="product" items="${products}">
        <tr>
            <td>${product.id}</td>
            <td>${product.name}</td>
            <td>${product.price}</td>
            <td>${product.manufacturer}</td>
            <td><a href="${pageContext.request.contextPath}/products?action=edit&id=${product.id}">Edit</a></td>
            <td><a href="${pageContext.request.contextPath}/products?action=delete&id=${product.id}">Delete</a></td>
            <td><a href="${pageContext.request.contextPath}/products?action=view&id=${product.id}">View</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>