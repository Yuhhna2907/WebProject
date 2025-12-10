<%@ page contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>User Management Application</title>
</head>
<body>
<div style="text-align: center;">
    <h1>User Management</h1>
    <h2>
        <a href="users?action=users">List All Users</a>
    </h2>
</div>
<div align="center">
    <form method="post">
        <table border="1" cellpadding="5">
            <caption>
                <h2>
                    Edit User
                </h2>
            </caption>
            <c:if test="${user != null}">
                <input type="hidden" name="id" value="<c:out value='${user.id}' />"/>
            </c:if>
            <tr>
                <th>User Name:</th>
                <td>
                    <label>
                        <input type="text" name="name" size="45"
                               value="<c:out value='${user.name}' />"
                        />
                    </label>
                </td>
            </tr>
            <tr>
                <th>User Email:</th>
                <td>
                    <label>
                        <input type="text" name="email" size="45"
                               value="<c:out value='${user.email}' />"
                        />
                    </label>
                </td>
            </tr>
            <tr>
                <th>Country:</th>
                <td>
                    <label>
                        <input type="text" name="country" size="15"
                               value="<c:out value='${user.country}' />"
                        />
                    </label>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Save"/>
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
