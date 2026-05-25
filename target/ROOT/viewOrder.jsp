<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.pst.flip.DTO.OrderDTO"%>

<%
OrderDTO o = (OrderDTO) request.getAttribute("order");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Order</title>

<style>
body {
    margin: 0;
    font-family: 'Segoe UI', Tahoma, sans-serif;
    background: linear-gradient(135deg, #dfe9f3, #ffffff);
}

/* Main Card */
.container {
    max-width: 700px;
    margin: 50px auto;
    background: rgba(255, 255, 255, 0.95);
    backdrop-filter: blur(10px);
    padding: 30px;
    border-radius: 20px;
    box-shadow: 0 20px 40px rgba(0,0,0,0.1);
    animation: fadeIn 0.6s ease-in-out;
}

h2 {
    text-align: center;
    color: #2874f0;
    margin-bottom: 25px;
    font-size: 28px;
}

/* Image Section */
.image-box {
    text-align: center;
    margin-bottom: 25px;
}

.image-box img {
    width: 160px;
    height: 160px;
    object-fit: contain;
    border-radius: 15px;
    background: #f9f9f9;
    padding: 10px;
    box-shadow: 0 10px 25px rgba(0,0,0,0.15);
    transition: transform 0.3s ease;
}

.image-box img:hover {
    transform: scale(1.08);
}

/* Details Card */
.detail {
    display: flex;
    justify-content: space-between;
    padding: 14px 16px;
    margin: 10px 0;
    background: linear-gradient(120deg, #f5f7fa, #e4ecf7);
    border-radius: 12px;
    font-size: 15px;
    transition: 0.3s;
}

.detail:hover {
    transform: translateX(5px);
    box-shadow: 0 5px 15px rgba(0,0,0,0.1);
}

.label {
    font-weight: 600;
    color: #444;
}

.value {
    color: #111;
}

/* Status Badge */
.status {
    padding: 5px 12px;
    border-radius: 20px;
    background: #d4edda;
    color: #2e7d32;
    font-weight: bold;
    font-size: 13px;
}

/* Button */
.btn {
    display: block;
    text-align: center;
    margin-top: 30px;
    padding: 14px;
    background: linear-gradient(135deg, #2874f0, #5aa2ff);
    color: white;
    text-decoration: none;
    border-radius: 10px;
    font-weight: 600;
    letter-spacing: 0.5px;
    transition: 0.3s;
}

.btn:hover {
    transform: scale(1.05);
    box-shadow: 0 10px 20px rgba(0,0,0,0.2);
}

/* Animation */
@keyframes fadeIn {
    from { opacity: 0; transform: translateY(20px); }
    to { opacity: 1; transform: translateY(0); }
}

/* Responsive */
@media (max-width: 768px) {
    .container {
        margin: 20px;
        padding: 20px;
    }

    .image-box img {
        width: 130px;
        height: 130px;
    }
}
</style>

</head>

<body>

<div class="container">

    <h2>📦 Order Details</h2>

    <!-- Product Image -->
    <div class="image-box">
        <img src="<%= o.getProductImage() %>" alt="Product Image">
    </div>

    <div class="detail">
        <span class="label">Order ID:</span>
        <span class="value"><%=o.getOrderId()%></span>
    </div>

    <div class="detail">
        <span class="label">Product:</span>
        <span class="value"><%=o.getProductName()%></span>
    </div>

    <div class="detail">
        <span class="label">Address:</span>
        <span class="value"><%=o.getAddress()%></span>
    </div>

    <div class="detail">
        <span class="label">Payment:</span>
        <span class="value"><%=o.getPaymentMode()%></span>
    </div>

    <div class="detail">
        <span class="label">Status:</span>
        <span class="value status"><%=o.getOrderStatus()%></span>
    </div>

    <div class="detail">
        <span class="label">Date:</span>
        <span class="value"><%=o.getOrderDate()%></span>
    </div>

    <a href="myOrders" class="btn">⬅ Back to Orders</a>

</div>

</body>
</html>