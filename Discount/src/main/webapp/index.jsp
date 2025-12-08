<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Product Discount Calculator</title>
</head>
<body>
<h2>Product Discount Calculator</h2>

<form action="${pageContext.request.contextPath}/discount" method="post">
    <label>Product Description:</label><br>
    <label>
        <input type="text" name="description" required>
    </label><br><br>

    <label>List Price:</label><br>
    <label>
        <input type="number" step="0.01" name="price" required>
    </label><br><br>

    <label>Discount Percent (%):</label><br>
    <label>
        <input type="number" step="0.01" name="discount" required>
    </label><br><br>

    <button type="submit">Calculate Discount</button>
</form>
</body>
</html>