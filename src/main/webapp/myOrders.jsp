<%@page import="com.pst.flip.DTO.OrderDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" type="image/png" href="images/zone.png">
<title>My Orders</title>

<style>
body {
    font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
    background: linear-gradient(135deg, #f5f7fa, #c3cfe2);
    padding: 30px;
}

h2 {
    text-align: center;
    color: #333;
    margin-bottom: 25px;
    font-size: 28px;
}

table {
    width: 90%;
    margin: auto;
    border-collapse: collapse;
    background-color: #ffffff;
    border-radius: 12px;
    overflow: hidden;
    box-shadow: 0 10px 25px rgba(0,0,0,0.15);
}

th {
    background: linear-gradient(135deg, #667eea, #764ba2);
    color: white;
    padding: 14px;
    text-transform: uppercase;
    font-size: 14px;
    letter-spacing: 1px;
}

td {
    padding: 12px;
    text-align: center;
    color: #333;
    font-size: 15px;
    border-bottom: 1px solid #eaeaea;
}

tr:hover {
    background-color: #f2f4ff;
    transition: 0.3s ease;
}

td:nth-child(5) {
    font-weight: bold;
    color: #0a7a2f;
}
</style>

</head>

<body>

<h2>📦 My Orders</h2>

<%
List<OrderDTO> orders = (List<OrderDTO>) request.getAttribute("orders");
%>

<table>

<tr>
    <th>Order ID</th>
    <th>Product Name</th>
    <th>Address</th>
    <th>Payment</th>
    <th>Status</th>
    <th>Order Date</th>
    <th>Actions</th>
</tr>

<%
if (orders != null && !orders.isEmpty()) {

    for (OrderDTO o : orders) {
%>

<tr>
    <td><%= o.getOrderId() %></td>
    <td><%= o.getProductName() %></td>
    <td><%= o.getAddress() %></td>
    <td><%= o.getPaymentMode() %></td>
    <td><%= o.getOrderStatus() %></td>
    <td><%= o.getOrderDate() %></td>
    <td>
        <a href="orderAction?action=view&id=<%= o.getOrderId() %>">👁️</a>
        &nbsp;
        <a href="orderAction?action=delete&id=<%= o.getOrderId() %>"
           onclick="return confirm('Are you sure you want to delete?');">
            🗑️
        </a>
    </td>
</tr>

<%
    }

} else {
%>

<tr>
    <td colspan="7" style="text-align:center; color:red;">
        No Orders Found
    </td>
</tr>

<%
}
%>

</table>

</body>
</html>