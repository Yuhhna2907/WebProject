<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Delete Product</title>
</head>
<body>
<h1>Delete Product</h1>

<p>Are you sure you want to delete this product?</p>

<form method="post" action="${pageContext.request.contextPath}/products">
    <input type="hidden" name="action" value="delete"/>
    <input type="hidden" name="id" value="${product.id}"/>
    <table>
        <tr>
            <td>Name:</td>
            <td>${product.name}</td>
        </tr>
        <tr>
            <td>Price:</td>
            <td>${product.price}</td>
        </tr>
        <tr>
            <td>Description:</td>
            <td>${product.description}</td>
        </tr>
        <tr>
            <td>Manufacturer:</td>
            <td>${product.manufacturer}</td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="Delete Product"/>
                <a href="${pageContext.request.contextPath}/products">Cancel</a>
            </td>
        </tr>
    </table>
</form>
</body>
</html>
