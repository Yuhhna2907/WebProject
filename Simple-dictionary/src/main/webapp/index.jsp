<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Simple Dictionary</title>
</head>
<body>
<h2>Vietnamese Dictionary</h2>
<form action="${pageContext.request.contextPath}/translate" method="post">
    <label>
        <input type="text" name="txtSearch" placeholder="Enter your word: "/>
    </label>
    <input type = "submit" id = "submit" value = "Search"/>
</form>
</body>
</html>