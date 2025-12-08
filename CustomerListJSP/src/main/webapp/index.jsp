<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.customerlistjsp.Customer" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
    // Tạo danh sách khách hàng (TẠM – theo yêu cầu)
    List<Customer> customers = new ArrayList<>();
    customers.add(new Customer("Mai Văn Hoan", "1983-08-20", "Hà Nội", "images/hoan.jpg"));
    customers.add(new Customer("Nguyễn Văn Nam", "1983-08-21", "Bắc Giang", "images/nam.jpg"));
    customers.add(new Customer("Nguyễn Thái Hòa", "1983-08-22", "Nam Định", "images/hoa.jpg"));
    customers.add(new Customer("Trần Đăng Khoa", "1983-08-17", "Hà Tây", "images/khoa.jpg"));
    customers.add(new Customer("Nguyễn Đình Thi", "1983-08-19", "Hà Nội", "images/thi.jpg"));

    request.setAttribute("customers", customers);
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Danh sách khách hàng</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f2f2f2;
            padding: 20px;
        }
        h2 {
            text-align: center;
            margin-bottom: 20px;
        }
        table {
            width: 80%;
            margin: auto;
            border-collapse: collapse;
            background: white;
        }
        th, td {
            border: 1px solid #ccc;
            padding: 12px;
            text-align: center;
        }
        th {
            background-color: #333;
            color: white;
        }
        img {
            width: 100px;
        }
    </style>
</head>
<body>

<h2>Danh sách khách hàng</h2>

<table>
    <tr>
        <th>Tên</th>
        <th>Ngày sinh</th>
        <th>Địa chỉ</th>
        <th>Ảnh</th>
    </tr>

    <c:forEach var="cus" items="${customers}">
        <tr>
            <td>${cus.name}</td>
            <td>${cus.dob}</td>
            <td>${cus.address}</td>
            <td>
                <img src="${pageContext.request.contextPath}/${cus.image}" alt="Ảnh khách hàng"/>
            </td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
