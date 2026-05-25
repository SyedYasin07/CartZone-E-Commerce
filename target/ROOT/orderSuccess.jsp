<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Order Success</title>

<style>
body{
    margin:0;
    height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;
    background:#f1f3f6;
    font-family: Arial, sans-serif;
}

.success-box{
    background:#fff;
    width:420px;
    padding:35px;
    border-radius:10px;
    text-align:center;
    box-shadow:0 6px 15px rgba(0,0,0,0.2);
    animation:pop 0.5s ease;
}

@keyframes pop{
    0%{transform:scale(0.7); opacity:0;}
    100%{transform:scale(1); opacity:1;}
}

.check{
    font-size:60px;
    color:#4CAF50;
    margin-bottom:15px;
}

h2{
    color:#2e7d32;
    margin-bottom:10px;
}

p{
    color:#555;
    font-size:15px;
}

.order-id{
    background:#e8f5e9;
    padding:10px;
    border-radius:6px;
    margin:15px 0;
    font-size:14px;
}

button{
    margin-top:15px;
    padding:12px 22px;
    border:none;
    border-radius:6px;
    background:#2874f0;
    color:#fff;
    font-size:15px;
    cursor:pointer;
    transition:0.3s;
}

button:hover{
    background:#1b5fd6;
}

.secure{
    font-size:12px;
    color:gray;
    margin-top:15px;
}
</style>
</head>

<body>

<div class="success-box">
    <div class="check">✔</div>
    <h2>Order Placed Successfully!</h2>
    <p>Thank you for shopping with us ❤️</p>

    <div class="order-id">
        Order ID: <b>#ORD${System.currentTimeMillis()}</b>
    </div>

    <button onclick="location.href='intro.jsp'">
        Continue Shopping
    </button>

    <div class="secure">📦 You will receive delivery updates soon</div>
</div>

</body>
</html>
