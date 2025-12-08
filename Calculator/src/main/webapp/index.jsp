<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Simple Calculator</title>
    <style>
        body {
            font-family: Arial, serif;
            background: #f4f4f4;
            padding: 30px;
        }

        .container {
            max-width: 500px;
            margin: auto;
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px #ccc;
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        label, select, input {
            display: block;
            width: 100%;
            margin-bottom: 15px;
            font-size: 16px;
        }

        button {
            width: 100%;
            padding: 10px;
            background: #0077cc;
            color: white;
            border: none;
            font-size: 16px;
            border-radius: 4px;
            cursor: pointer;
        }

        .result, .error {
            margin-top: 20px;
            font-size: 18px;
            text-align: center;
        }

        .error {
            color: red;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>Simple Calculator</h2>
    <form method="post" action="calculate">
        <label>First operand:</label>
        <label>
            <input type="text" name="first" required />
        </label>

        <label>Operator:</label>
        <label>
            <select name="operator">
                <option value="add">Addition</option>
                <option value="sub">Subtraction</option>
                <option value="mul">Multiplication</option>
                <option value="div">Division</option>
            </select>
        </label>

        <label>Second operand:</label>
        <label>
            <input type="text" name="second" required />
        </label>

        <button type="submit">Calculate</button>
    </form>

    <c:if test="${not empty result}">
        <div class="result">Result: <strong>${result}</strong></div>
    </c:if>
    <c:if test="${not empty error}">
        <div class="error">${error}</div>
    </c:if>
</div>
</body>
</html>
