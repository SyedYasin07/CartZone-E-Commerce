<%@page import="com.pst.flip.DTO.OrderDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
List<OrderDTO> orders = (List<OrderDTO>) request.getAttribute("orders");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MyOrders</title>
</head>

<body>

<h2 style="text-align:center;">📦 My Orders</h2>

<table border="2px">

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
        <a href="orderAction?action=view&id=<%=o.getOrderId()%>">👁️</a>
        <a href="orderAction?action=delete&id=<%=o.getOrderId()%>"
           onclick="return confirm('Are you sure?');">🗑️</a>
    </td>
</tr>

<%
    }
} else {
%>

<tr>
    <td colspan="7" style="text-align:center;">No Orders Found</td>
</tr>

<%
}
%>

</table>

</body>
</html>