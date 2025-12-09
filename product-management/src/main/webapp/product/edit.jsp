<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Edit Product</title>
    <style>.message { color: green; }</style>
</head>
<body>
<h1>Edit Product</h1>

<c:if test="${not empty message}">
    <p class="message">${message}</p>
</c:if>

<form method="post" action="${pageContext.request.contextPath}/products">
    <input type="hidden" name="action" value="edit"/>
    <input type="hidden" name="id" value="${product.id}"/>
    <table>
        <tr>
            <td>Name:</td>
            <td><input type="text" name="name" value="${product.name}" required/></td>
        </tr>
        <tr>
            <td>Price:</td>
            <td><input type="number" step="0.01" name="price" value="${product.price}" required/></td>
        </tr>
        <tr>
            <td>Description:</td>
            <td><input type="text" name="description" value="${product.description}" required/></td>
        </tr>
        <tr>
            <td>Manufacturer:</td>
            <td><input type="text" name="manufacturer" value="${product.manufacturer}" required/></td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value="Update Product"/></td>
        </tr>
    </table>
</form>

<p><a href="${pageContext.request.contextPath}/products">Back to product list</a></p>
</body>
</html>

