<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Payment</title>

<style>
body{
    background:#f1f3f6;
    font-family: Arial, sans-serif;
    display:flex;
    justify-content:center;
    align-items:center;
    height:100vh;
}
.container{
    width:420px;
    padding:25px;
    border-radius:8px;
    background:#fff;
    box-shadow:0 4px 12px rgba(0,0,0,0.2);
}

/* Cash On Delivery Button */
.cod-btn{
    width:100%;
    padding:12px;
    background:#fff;
    color:#000;
    border:2px solid #fb641b;
    border-radius:6px;
    font-size:16px;
    cursor:pointer;
    transition:0.3s;
}

/* Hover ONLY on button */
.cod-btn:hover{
    background:#fb641b;
    color:#fff;
}

h2{
    color:#2874f0;
    text-align:center;
}
.option{
    border:1px solid #ccc;
    padding:12px;
    margin:10px 0;
    border-radius:6px;
    cursor:pointer;
   text-align:center;
    
}
.option:hover{
     background:#fb641b;
     color:white;
}
.card-icons{
    text-align:center;
    margin:10px 0;
}
.card-icons img{
    width:45px;
    margin:0 6px;
}
input[type="text"], input[type="password"]{
    width:100%;
    padding:10px;
    margin:8px 0;
    border:1px solid #ccc;
    border-radius:5px;
}
button{
    width:100%;
    padding:12px;
    background:#fb641b;
    color:#fff;
    border:none;
    border-radius:6px;
    font-size:16px;
    cursor:pointer;
}
button:hover{
    background:#e55b17;
}
.hidden{
    display:none;
}
.error{
    color:red;
    text-align:center;
    margin-top:10px;
}
.secure{
    text-align:center;
    font-size:12px;
    color:gray;
    margin-top:10px;
}
</style>

<script>
function showOnline(){
    document.getElementById("onlineForm").classList.remove("hidden");
}

function showOTP(){
    let card = document.getElementById("card").value;
    let cvv = document.getElementById("cvv").value;

    if(card.length !== 16 || cvv.length !== 3){
        alert("Invalid card details");
        return;
    }
    document.getElementById("onlineForm").classList.add("hidden");
    document.getElementById("otpForm").classList.remove("hidden");
}

function verifyOTP(){
    let otp = document.getElementById("otp").value;
    if(otp === "1234"){
        document.getElementById("finalForm").submit();
    } else {
        document.getElementById("err").innerText =
        "Wrong credentials, please try again later!";
    }
}
</script>

</head>
<body>

<div class="container">
<h2>Payment</h2>

<!-- COD -->
<form action="OrderController" method="post">

    <input type="hidden" name="productId"
           value="<%= session.getAttribute("productId") %>">

    <input type="hidden" name="address"
           value="<%= session.getAttribute("address") %>">

    <input type="hidden" name="color"
           value="<%= session.getAttribute("color") %>">

    <input type="hidden" name="size"
           value="<%= session.getAttribute("size") %>">

    <input type="hidden" name="ram"
           value="<%= session.getAttribute("ram") %>">

    <input type="hidden" name="storage"
           value="<%= session.getAttribute("storage") %>">

    <input type="hidden" name="screenSize"
           value="<%= session.getAttribute("screenSize") %>">

    <input type="hidden" name="payment" value="COD">

    <button type="submit">Cash On Delivery</button>

</form>





<hr>

<!-- Online Payment -->
<div class="option" onclick="showOnline()">💳 Online Payment</div>

<!-- Card Icons -->
<div class="card-icons">
    <img src="https://img.icons8.com/color/48/000000/visa.png">
    <img src="https://img.icons8.com/color/48/000000/mastercard.png">
    <img src="https://img.icons8.com/color/48/000000/rupay.png">
</div>

<!-- Card Details -->
<div id="onlineForm" class="hidden">
    <input type="text" id="card" placeholder="Card Number (16 digits)">
    <input type="text" placeholder="MM/YY">
    <input type="password" id="cvv" placeholder="CVV">
    <button onclick="showOTP()">Pay Securely</button>
</div>

<!-- OTP -->
<div id="otpForm" class="hidden">
    <p>Enter OTP (Hint: 1234)</p>
    <input type="text" id="otp" placeholder="Enter OTP">
    <button onclick="verifyOTP()">Verify OTP</button>
    <p id="err" class="error"></p>
</div>

<!-- Final Submit -->
<form id="finalForm" action="OrderController" method="post">

    <input type="hidden" name="productId"
           value="<%= session.getAttribute("productId") %>">

    <input type="hidden" name="address"
           value="<%= session.getAttribute("address") %>">

    

    <input type="hidden" name="payment" value="Online">

</form>



<div class="secure">🔒 100% Secure Payments</div>

</div>
</body>
</html>
