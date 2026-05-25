<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Added to Cart</title>

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

.cart-box{
    background:#fff;
    width:420px;
    padding:35px;
    border-radius:10px;
    text-align:center;
    box-shadow:0 6px 15px rgba(0,0,0,0.2);
    animation:pop 0.4s ease;
}

@keyframes pop{
    0%{transform:scale(0.7); opacity:0;}
    100%{transform:scale(1); opacity:1;}
}

.icon{
    font-size:55px;
    color:#2874f0;
    margin-bottom:15px;
}

h2{
    color:#2e2e2e;
    margin-bottom:10px;
}

p{
    color:#666;
    font-size:14px;
}

.btn{
    display:inline-block;
    margin-top:20px;
    padding:12px 22px;
    border-radius:6px;
    background:#fb641b;
    color:#fff;
    text-decoration:none;
    font-size:15px;
    transition:0.3s;
}

.btn:hover{
    background:#e55b17;
}

.secondary{
    margin-top:12px;
    display:block;
    font-size:14px;
    color:#2874f0;
    text-decoration:none;
}

.secondary:hover{
    text-decoration:underline;
}
</style>
</head>

<body>

<div class="cart-box">
    <div class="icon">🛒</div>
    <h2>Product Added to Cart!</h2>
    <p>Your item has been successfully added.</p>

    <a href="viewCart" class="btn">Go to Cart</a>
    <a href="intro.jsp" class="secondary">Continue Shopping</a>
</div>

</body>
</html>
