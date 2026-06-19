<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.List" %>
<%@ page import="com.pst.flip.DTO.CartDTO" %>

<%
List<CartDTO> wishlist =
(List<CartDTO>) request.getAttribute("wishlist");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" type="image/png" href="images/zone.png">
<title>My Wishlist</title>

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:Arial,sans-serif;
}

body{
    background:#f1f3f6;
}

.header{
    background:#2874f0;
    color:white;
    padding:15px;
    text-align:center;
}

.container{
    width:90%;
    margin:20px auto;
}

.card{
    background:white;
    border-radius:10px;
    padding:15px;
    margin-bottom:15px;
    display:flex;
    align-items:center;
    gap:20px;
    box-shadow:0 2px 8px rgba(0,0,0,0.1);
}

.card img{
    width:150px;
    height:150px;
    object-fit:contain;
}

.details{
    flex:1;
}

.details h2{
    margin-bottom:10px;
}

.price{
    color:green;
    font-size:20px;
    font-weight:bold;
}

.btn{
    background:#2874f0;
    color:white;
    border:none;
    padding:10px 20px;
    border-radius:5px;
    cursor:pointer;
}

.btn:hover{
    background:#0b57d0;
}

.empty{
    text-align:center;
    margin-top:50px;
    font-size:22px;
}

</style>

</head>
<body>

<div class="header">
    <h1>❤️ My Wishlist</h1>
</div>

<div class="container">

<%
if(wishlist != null && !wishlist.isEmpty()){

    for(CartDTO item : wishlist){
%>

<div class="card">

    <img src="<%= item.getImage() %>" alt="product">

    <div class="details">
        <h2><%= item.getName() %></h2>

        <p>Category :
           <%= item.getCatageory() %>
        </p>

        <p class="price">
            ₹<%= item.getPrice() %>
        </p>
    </div>

    <div>

       <div style="display:flex;flex-direction:column;gap:10px;">

    <form action="addToCart" method="post">
        <input type="hidden"
               name="productId"
               value="<%= item.getProductId() %>">

        <button type="submit" class="btn">
            🛒 Add To Cart
        </button>
    </form>

    <form action="removeWishlist" method="post">
        <input type="hidden"
               name="productId"
               value="<%= item.getProductId() %>">

        <button type="submit"
                style="background:red;
                       color:white;
                       border:none;
                       padding:10px 20px;
                       border-radius:5px;
                       cursor:pointer;">
            ❌ Remove
        </button>
    </form>

</div>

    </div>

</div>

<%
    }
}else{
%>

<div class="empty">
    ❤️ Your Wishlist is Empty
</div>

<%
}
%>

</div>

</body>
</html>