<%@page import="com.pst.flip.DTO.OrderDTO"%>
<%@page import="java.util.List"%>

<%
List<OrderDTO> orders = (List<OrderDTO>) request.getAttribute("orders");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Orders</title>

<style>
body {
    font-family: "Segoe UI", sans-serif;
    background: #f5f7fa;
    padding: 20px;
}

h2 {
    text-align: center;
}

table {
    width: 90%;
    margin: auto;
    border-collapse: collapse;
}

th {
    background: #667eea;
    color: white;
    padding: 10px;
}

td {
    text-align: center;
    padding: 10px;
}
</style>

</head>

<body>

<h2>📦 My Orders</h2>

<table border="1">

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
if (orders == null || orders.isEmpty()) {
%>

<tr>
    <td colspan="7">No Orders Found</td>
</tr>

<%
} else {
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
        <a href="orderAction?action=delete&id=<%=o.getOrderId()%>">🗑️</a>
    </td>
</tr>

<%
    }
}
%>

</table>

</body>
</html>