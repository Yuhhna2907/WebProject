<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html>
<head>
    <title>User Management Application</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }

        /* ===== Header ===== */
        h1 {
            margin-bottom: 5px;
        }

        /* ===== Search Form ===== */

        .search-container input[type="text"] {
            padding: 6px 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            width: 200px;
        }

        .search-container input[type="submit"] {
            padding: 6px 14px;
            border: none;
            border-radius: 4px;
            background-color: #4CAF50;
            color: white;
            cursor: pointer;
        }

        .search-container input[type="submit"]:hover {
            background-color: #45a049;
        }

        /* ===== Sort Button ===== */

        /* ===== Table ===== */
        table {
            border-collapse: collapse;
            width: 80%;
        }

        th {
            background-color: #f2f2f2;
        }

        th, td {
            padding: 8px;
            text-align: center;
        }

        /* ===== Action links ===== */

    </style>
</head>
<body>
<div style="text-align: center;">
    <h1>User Management</h1>
    <h2>
        <a href="${pageContext.request.contextPath}/users?action=create">Add New User</a>
    </h2>
</div>
<form style="text-align: center" action="${pageContext.request.contextPath}/users" method="get">
    <input type="hidden" name="action" value="search">
    <label>
        <input type="text" name="country" placeholder="Enter country">
    </label>
    <input type="submit" value="Search">
</form>
<a style="text-align: center" href="${pageContext.request.contextPath}/users?action=sort">
    Sort by Name
</a>
<div align="center">
    <table border="1" cellpadding="5">
        <caption><h2>List of Users</h2></caption>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Country</th>
            <th>Actions</th>
        </tr>
        <c:forEach var="user" items="${listUser}">
            <tr>
                <td><c:out value="${user.id}"/></td>
                <td><c:out value="${user.name}"/></td>
                <td><c:out value="${user.email}"/></td>
                <td><c:out value="${user.country}"/></td>
                <td>
                    <a href="${pageContext.request.contextPath}/users?action=edit&id=${user.id}">Edit</a>
                    <a href="${pageContext.request.contextPath}/users?action=delete&id=${user.id}">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>