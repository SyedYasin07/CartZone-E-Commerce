<%@page import="com.pst.flip.DTO.OrderDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MyOrders</title>
</head>
<style>
    body {
        font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
        background: linear-gradient(135deg, #f5f7fa, #c3cfe2);
        padding: 30px;
    }

    h2 {
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
        box-shadow: 0 10px 25px rgba(0, 0, 0, 0.15);
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
        transition: background-color 0.3s ease;
    }

    tr:last-child td {
        border-bottom: none;
    }

    /* Order Status Styling */
    td:nth-child(4) {
        font-weight: bold;
        color: #0a7a2f;
    }

    /* Responsive */
    @media (max-width: 768px) {
        table {
            width: 100%;
        }

        th, td {
            padding: 10px;
            font-size: 13px;
        }

        h2 {
            font-size: 22px;
        }
    }
</style>

<body>
<h2 style="text-align:center;">📦 My Orders</h2>
<table border="2px">

<!-- <%
List<OrderDTO> orders=(List<OrderDTO>) request.getAttribute("orders");
%>
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
for(OrderDTO o:orders){
%>
<tr>
<td><%=o.getOrderId()%></td>
<td><%=o.getProductName()%></td>
<td><%=o.getAddress() %></td>
<td><%=o.getPaymentMode() %></td>
<td><%=o.getOrderStatus() %></td>
<td><%=o.getOrderDate() %></td>
<td> -->
    <%
List<OrderDTO> orders = (List<OrderDTO>) request.getAttribute("orders");
%>

<!-- TABLE HEADER -->
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
    <a href="orderAction?action=view&id=<%=o.getOrderId()%>">
        👁️
    </a>

    <a href="orderAction?action=delete&id=<%=o.getOrderId()%>"
       onclick="return confirm('Are you sure to delete?');">
        🗑️
    </a>
</td>
</tr>

<%} %>

</table>
</body>
</html>