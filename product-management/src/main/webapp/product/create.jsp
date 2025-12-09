<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Create Product</title>
    <style>
        .message { color: green; }
    </style>
</head>
<body>
<h1>Create New Product</h1>

<c:if test="${not empty message}">
    <p class="message">${message}</p>
</c:if>

<form method="post" action="${pageContext.request.contextPath}/products">
    <input type="hidden" name="action" value="create"/>
    <table>
        <tr>
            <td>Name:</td>
            <td><label>
                <input type="text" name="name" required/>
            </label></td>
        </tr>
        <tr>
            <td>Price:</td>
            <td><label>
                <input type="number" step="0.01" name="price" required/>
            </label></td>
        </tr>
        <tr>
            <td>Description:</td>
            <td><label>
                <input type="text" name="description" required/>
            </label></td>
        </tr>
        <tr>
            <td>Manufacturer:</td>
            <td><label>
                <input type="text" name="manufacturer" required/>
            </label></td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value="Create Product"/></td>
        </tr>
    </table>
</form>
<p><a href="${pageContext.request.contextPath}/products">Back to product list</a></p>
</body>
</html>

