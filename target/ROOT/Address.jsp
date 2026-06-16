<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" type="image/ico" href="images/favicon.ico">
<title>Delivery Address</title>

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

.address-box{
    background:#fff;
    width:450px;
    padding:30px;
    border-radius:10px;
    box-shadow:0 6px 15px rgba(0,0,0,0.2);
}

h2{
    text-align:center;
    color:#2874f0;
    margin-bottom:20px;
}

label{
    font-weight:bold;
    color:#333;
}

textarea{
    width:100%;
    height:120px;
    padding:12px;
    margin-top:8px;
    border:1px solid #ccc;
    border-radius:6px;
    resize:none;
    font-size:14px;
}

textarea:focus{
    outline:none;
    border-color:#2874f0;
}

button{
    margin-top:20px;
    width:100%;
    padding:12px;
    background:#fb641b;
    color:#fff;
    border:none;
    border-radius:6px;
    font-size:16px;
    cursor:pointer;
    transition:0.3s;
}

button:hover{
    background:#e55b17;
}

.secure{
    text-align:center;
    font-size:12px;
    color:gray;
    margin-top:15px;
}
</style>

</head>
<body>

<div class="address-box">
    <h2>📍 Delivery Address</h2>

   <form action="payment" method="post">

    <input type="hidden" name="productId" value="${productId}">

    

    <label>Enter your full address</label>

    <textarea name="address"
        placeholder="House No, Street, Area, City, State - Pincode"
        required></textarea>

    <button>Continue to Payment</button>

</form>

    <div class="secure">🔒 Your address is safe with us</div>
</div>

</body>
</html>
