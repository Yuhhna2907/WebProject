<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>User Management Application</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <div class="card border-primary mb-3">
        <div class="card-header">User Management <a href="${pageContext.request.contextPath}/users?action=create"
                                                    class="btn btn-primary">Add New User</a></div>
        <div class="card-body text-primary">
            <table class="table table-striped">
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
                            <a href="${pageContext.request.contextPath}/users?action=edit&id=${user.id}"
                               class="btn btn-info">Edit</a>
                            <a href="${pageContext.request.contextPath}/users?action=delete&id=${user.id}"
                               class="btn btn-danger"
                               onclick="return confirm('Bạn có thực sự muốn xóa không?');">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>
</div>
</body>
</html>