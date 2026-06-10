<%@page import="com.pst.flip.DTO.OrderDTO"%>
<%@page import="java.util.List"%>

<%
List<OrderDTO> orders = (List<OrderDTO>) request.getAttribute("orders");
%>

<h2 style="text-align:center;">📦 My Orders</h2>

<h3>DEBUG: <%= (orders == null ? "NULL" : orders.size()) %></h3>

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
if (orders == null || orders.isEmpty()) {
%>

<tr>
    <td colspan="7" style="color:red;">No Orders Found</td>
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
        <a href="orderAction?action=delete&id=<%=o.getOrderId()%>"
           onclick="return confirm('Are you sure?');">🗑️</a>
    </td>
</tr>

<%
    }
}
%>

</table>