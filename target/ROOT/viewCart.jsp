<%@page import="com.pst.flip.DTO.CartDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>viewing cart</title>
<style>
body {
    margin: 0;
    font-family: 'Segoe UI', Tahoma, sans-serif;
    background: linear-gradient(120deg, #eef2f7, #f8f9fb);
}

.cart-container {
    max-width: 1100px;
    margin: 40px auto;
    background: #ffffff;
    padding: 30px;
    border-radius: 16px;
    box-shadow: 0 12px 30px rgba(0,0,0,0.08);
}

h2 {
    text-align: center;
    color: #2874f0;
    font-size: 30px;
    margin-bottom: 10px;
}

.cart-count {
    text-align: center;
    font-size: 16px;
    color: #555;
    margin-bottom: 25px;
}

/* Table Design */
table {
    width: 100%;
    border-collapse: collapse;
    overflow: hidden;
    border-radius: 12px;
}

thead {
    background: linear-gradient(90deg, #2874f0, #5aa2ff);
    color: #fff;
}

th, td {
    padding: 14px 12px;
    text-align: center;
    font-size: 15px;
}

th {
    font-weight: 600;
    letter-spacing: 0.5px;
}

tbody tr {
    border-bottom: 1px solid #eaeaea;
    transition: all 0.3s ease;
}

tbody tr:hover {
    background: #f0f7ff;
    transform: scale(1.01);
}

.price {
    color: #2e7d32;
    font-weight: bold;
}

/* Image */
td img {
    width: 70px;
    height: 70px;
    object-fit: contain;
    border-radius: 10px;
    background: #f9f9f9;
    padding: 6px;
}

/* Empty Cart */
.empty {
    text-align: center;
    padding: 50px;
    font-size: 18px;
    color: #777;
}

/* Buttons */
.actions {
    display: flex;
    justify-content: space-between;
    margin-top: 25px;
}

.btn {
    padding: 12px 28px;
    border-radius: 8px;
    font-weight: 600;
    text-decoration: none;
    transition: 0.3s;
}

.btn-shop {
    background: #2874f0;
    color: white;
}

.btn-shop:hover {
    background: #1c5dc9;
}

.btn-checkout {
    background: #fb641b;
    color: white;
}

.btn-checkout:hover {
    background: #e55b17;
}

/* Responsive */
@media (max-width: 768px) {
    table {
        font-size: 13px;
    }

    td img {
        width: 55px;
        height: 55px;
    }

    .actions {
        flex-direction: column;
        gap: 15px;
    }
}
</style>


</head>
<body>
<div class="cart-container">

<h2>🛒 My Cart</h2>
<%
List<CartDTO> cart = (List<CartDTO>) request.getAttribute("cart");
%>

<p class="cart-count">
    Total Items in Cart: <b><%= (cart == null ? 0 : cart.size()) %></b>
</p>

<%
if (cart == null || cart.isEmpty()) {
%>
    <div class="empty">
        🛒 Your cart is empty <br><br>
        <a class="btn btn-shop" href="intro.jsp">Continue Shopping</a>
    </div>
<%
} else {
%>

<table>
    <thead>
        <tr>
            <th>#</th>
            <th>Product</th>
            <th>Price</th>
            <th>Image</th>
            <th>Category</th>
            <th>Checkout</th>
        </tr>
    </thead>
    <tbody>
<%
int i = 1;
for (CartDTO c : cart) {
%>
        <tr>
            <td><%= i++ %></td>
            <td><%= c.getName() %></td>
            <td class="price">₹ <%= c.getPrice() %></td>
            <td>
                <img src="<%= c.getImage() %>" alt="Product Image">
            </td>
            <td><%= c.getCatageory() %></td>
            <td>
    
    <form action="buy" method="post" style="display:inline;">
        <input type="hidden" name="productId" value="<%=c.getProductId()%>">
        <button style="border:none; background:none; cursor:pointer;" title="Buy">
            🛒
        </button>
    </form>

    <!-- DELETE BUTTON -->
    <a href="cartAction?action=delete&id=<%=c.getProductId()%>"
       onclick="return confirm('Remove this item?');"
       title="Delete">
        🗑️
    </a>
</td>
        </tr>
<%
}
%>
    </tbody>
</table>

<div class="actions">
    <a class="btn btn-shop" href="intro.jsp">← Continue Shopping</a>
    <a class="btn btn-checkout" href="Payment.jsp">Proceed to Checkout →</a>
</div>

<%
}
%>



</div>
</body>
</html>