
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>View customer</title>
</head>
<body>
<h1>Customer details</h1>
<p>
    <a href="${pageContext.request.contextPath}/customers">Back to customer list</a>
</p>
<table>
    <tr>
        <td>Name: </td>
        <td>${requestScope["customer"].name}</td>
    </tr>
    <tr>
        <td>Email: </td>
        <td>${requestScope["customer"].email()}</td>
    </tr>
    <tr>
        <td>Address: </td>
        <td>${requestScope["customer"].address()}</td>
    </tr>
</table>
</body>
</html>
