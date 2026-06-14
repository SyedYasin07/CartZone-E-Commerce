<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.pst.flip.DTO.userDto" %>

<%
userDto user = (userDto) session.getAttribute("user");

if(user == null) {

    response.sendRedirect("Login.jsp");

    return;
}
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Flikart Clone</title>
  <link rel="icon" type="image/x-icon" href="images/favicon.ico">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
<style>
    *{
        margin: 0%;
        padding: 0%;
        box-sizing: border-box;
        font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
    }
    nav{
        display: flex;
        align-items: center;
        justify-content: space-between;
        position: fixed;
        background-color: blue;
        color: white;
        width: 100%;
        height: 55px;
        padding: 0 20px;
    }
    .logo {
        display: flex;
        align-items: center;
        gap: 10px;
    }
    .logo img {
        width: 120px;
    }
    .logo p{
        font-size: 18px;
    }
    .logo p span{
        color: rgb(255, 191, 0);
    }
    .flip
    {
      width: auto;
        height: 40%;
       margin: 0 10px;
        
    }
    .flip img{
        margin-bottom: 30px;
        object-fit: contain;

    }
    .box{
        position: relative;
        display: flex;
        align-items: center;
      
    }
    .box input{
        width:300px;
        height:35px;
        padding: 10px 40px 10px 10px;
        outline: none;
        border: none;
        border-radius: 4px;
        font-size: 15px;
    }
    .box i {
        position: absolute;
        right: 10px;
        color: blue;
        font-size: 16px;
        cursor: pointer;
    }

    nav ul{
        display: flex;
        align-items: center;
        list-style: none;
        gap: 20px;
    }
    nav ul li a{
     text-decoration: none;
     color:white;
     font-size: 16px;
     transition: 0.3s;
    }
    nav ul li a:hover{
        color:gray;
        border-bottom: 2px solid white;
    }
    .categories{
        display: flex;
        justify-content: center;
        align-items: center;
        background-color: white;
        padding:  10px;
        gap: 20px;
        box-shadow: 0 2px 4px rgba(0,0, 0,0.1);
    }
    .categories a{
        text-decoration: none;
        color: black;
        text-align:center;
        margin-top: 50px;
        font-size: 16px;
        transition: color 0.3s,transform 0.3s;
    
    }
    .categories img{
    	display:flex;
    }
    .categories a:hover{
        color:rgb(228, 131, 28);
        text-decoration: underline;
        transform: scale(1.05);
        cursor: pointer; ;
    }
    .container{
        display: flex;
        justify-content: center;
        gap: 20px;
       padding: 20px;
    }
    img{
        display: block;
        width: 100%;
        height: auto;
        justify-content: center;
        max-height: 300px;
        object-fit: cover;
    }
    .card {
        text-align: center;
        background: white;
        padding: 15px;
        border-radius: 8px;
        width: 250px;
        transition: transform 0.3s,box-shadow 0.3s;
    }
    .card img{
        width: 100%;
        border-radius: 5px;
        object-fit: contain;
        height: auto;
        max-width: 200px;
    }
    .card p{
        font-size: 20px;
        margin: 5px 0;
    }
    .card:hover{
        transform: scale(1.05);
        box-shadow: 0 4px 8px black;
    }
    .box2{
        display: flex;
        justify-content: center;
         gap: 20px;
         padding: 20px;
    }
    .Tv{
         text-align: center;
        background: white;
        padding: 15px;
        border-radius: 8px;
        width: 250px;
        transition: transform 0.3s,box-shadow 0.3s;
    }
    .Tv img{
        width: 100%;
        border-radius: 5px;
        object-fit: contain;
        height: auto;
        max-width: 200px;
    }
     .Tv p{
        font-size: 20px;
        margin: 5px 0;
    }
    .Tv:hover{
        transform: scale(1.05);
        box-shadow: 0 4px 8px black;
    }
    .box3{
        display: flex;
        justify-content: center;
         gap: 20px;
         padding: 20px;
    }
    .Mobile{
         text-align: center;
        background: white;
        padding: 15px;
        border-radius: 8px;
        width: 250px;
        transition: transform 0.3s,box-shadow 0.3s;
    }
    .Mobile img{
         width: 100%;
        border-radius: 5px;
        object-fit: contain;
        height: auto;
        max-width: 200px;
    }
     .Mobile:hover{
        transform: scale(1.05);
        box-shadow: 0 4px 8px black;
    }
    .Mobile p{
        font-size: 20px;
        margin: 5px 0;
    }
    
    .box4{
        display: flex;
        justify-content: center;
         gap: 20px;
         padding: 20px;
    }
    .Watches{
        text-align: center;
        background: white;
        padding: 15px;
        border-radius: 8px;
        width: 250px;
        transition: transform 0.3s,box-shadow 0.3s;
    }
    .Watches img{
        width: 100%;
        border-radius: 5px;
        object-fit: contain;
        height: auto;
        max-width: 200px;
    }
    .Watches p{
        font-size: 20px;
        margin: 5px 0;
    }
     .Watches:hover{
        transform: scale(1.05);
        box-shadow: 0 4px 8px black;
    }
    
    .box5{
        display: flex;
        justify-content: center;
         gap: 20px;
         padding: 20px;
    }
    .Buds{
         text-align: center;
        background: white;
        padding: 15px;
        border-radius: 8px;
        width: 250px;
        transition: transform 0.3s,box-shadow 0.3s;
    }
    .Buds img{
        width: 100%;
        border-radius: 5px;
        object-fit: contain;
        height: auto;
        max-width: 200px;
    }
    .Buds p{
        font-size: 20px;
        margin: 5px 0;
    }
     .Buds:hover{
        transform: scale(1.05);
        box-shadow: 0 4px 8px black;
    }
   footer{
    background: #172337;
    color: white;
    padding: 40px 50px 20px;
}

.fc{
    border-bottom: 1px solid rgba(255,255,255,0.2);
    padding-bottom: 30px;
}

.fl{
    display: flex;
    justify-content: space-between;
    flex-wrap: wrap;
    gap: 40px;
}

.fl div{
    display: flex;
    flex-direction: column;
}

.fl h3{
    color: #878787;
    font-size: 14px;
    margin-bottom: 15px;
}

.fl a{
    color: white;
    text-decoration: none;
    margin-bottom: 10px;
    font-size: 14px;
}

.fl a:hover{
    text-decoration: underline;
}

.fa{
    display: flex;
    justify-content: space-between;
    flex-wrap: wrap;
    gap: 50px;
    padding: 35px 0;
    border-bottom: 1px solid rgba(255,255,255,0.2);
}

.fa div{
    flex: 1;
    min-width: 300px;
}

.fa h3{
    color: #878787;
    margin-bottom: 15px;
}

.fa p{
    margin: 3px 0;
    line-height: 1.5;
}

.fa a{
    color: #6a1bff;
}

.fb{
    display: flex;
    justify-content: center;
    align-items: center;
    gap: 15px;
    padding-top: 20px;
    flex-wrap: wrap;
}

.fb p{
    margin-right: 20px;
    font-size: 18px;
}

.fb img{
    width: 40px;
    height: auto;
}

/* Mobile Responsive */

@media(max-width:768px){

    footer{
        padding: 30px 20px;
    }

    .fa{
        flex-direction: column;
        text-align: center;
    }

    .fl{
        flex-direction: column;
        text-align: center;
    }

    .fb{
        flex-direction: column;
        gap: 10px;
    }

    .fb p{
        margin-right: 0;
    }

    .fb img{
        width: 35px;
    }
}
          @media (max-width: 480px) {
    .logo {
        flex-direction: row;
        align-items: center;
        gap: 6px;
    }

    .flip-logo {
        width: 35px;
        height: 35px;
    }

    .flip-text {
        font-size: 14px;
    }

    .flip-text span {
        font-size: 12px;
    }
    .box{
     width:100%;
      justify-content:center; 
     }

    .box input {
        width: 100%;
        max-width: 180px;
        font-size: 14px;
    }
    .search-btn {
    position: absolute;
    right: 15px;
    top: 50%;
    transform: translateY(-50%);
    border: none;
    background: transparent;
    cursor: pointer;
    font-size: 22px;
    color: blue;
}

    nav {
        flex-direction: column;
        align-items: flex-start;
    }

  nav ul {
    display: flex;
    align-items: center;
    list-style: none;
    gap: 20px;
    margin: 0;
    padding: 0;
}


    nav ul li a {
        font-size: 14px;
    }
}
.cart-dropdown{
    position:relative;
}

.cart-dropdown:hover .dropdown-menu{
    display:block;
}
.button-container {
    display: flex;
    gap: 20px;          /* space between buttons */
    justify-content: center; /* center horizontally */
    align-items: center;     /* center vertically if needed */
    margin: 10px 0;
}

.button-container button {
    padding: 10px 10px;    /* comfortable button size */
    border-radius: 15px;   /* rounded corners */
    border: none;
    cursor: pointer;
    font-size: 16px;
    transition: 0.3s;
}

.b1 {
    background-color: #FFD700; /* green */
    color: black;
}

.b2 {
    background-color: #007bff;  /* blue */
    color: white;
}

.button-container button:hover {
    transform: scale(1.05);
    box-shadow: 0 4px 8px rgba(0,0,0,0.2);
}
.account-link {
    display: inline-flex;          /* 🔥 KEY FIX */
    align-items: center;           /* vertical alignment */
    gap: 6px;                      /* space between text & arrow */
    color: white;
    text-decoration: none;
    font-size: 16px;
    line-height: 1;                /* prevents wrapping */
}

/* ICON SIZE CONTROL */
.account-link i {
    font-size: 12px;
    margin-top: 1px;
}
.account-dropdown {
    position: relative;
}
.cart-dropdown{
    position: relative;
}

.cart-dropdown:hover .dropdown-menu2{
    display: block;
}
.dropdown-menu2 {
    position: absolute;
    top: 100%;
    right: 0;          /* align with right side */
    left: auto;        /* remove left alignment */

    background: white;
    min-width: 180px;

    border-radius: 8px;
    box-shadow: 0 4px 12px rgba(0,0,0,0.25);

    padding: 8px 0;
    display: none;
    z-index: 999;
}
.dropdown-menu2 li{
    list-style:none;
}

.dropdown-menu2 li a{
    display:block;
    padding:12px 18px;
    color:#333;
    text-decoration:none;
    font-size:15px;
    transition:0.3s;
}

.dropdown-menu2 li a:hover{
    background:#f5f5f5;
    color:#2874f0;
}

.dropdown-menu li a{
    display:flex;
    align-items:center;
    gap:10px;
}



.dropdown-menu {
    position: absolute;
    top: 100%;              /* 🔥 NO GAP */
    left: 0;
    background: white;
    min-width: 160px;
    border-radius: 6px;
    box-shadow: 0 4px 12px rgba(0,0,0,0.25);
    padding: 8px 0;
    display: none;
    z-index: 999;
}

.account-dropdown:hover .dropdown-menu {
    display: block;
}

.dropdown-menu li a {
    color: black;
    padding: 10px 16px;
    display: block;
    text-decoration: none;
}

.dropdown-menu li a:hover {
    background: #f1f3f6;
}

.account-dropdown:hover .dropdown-menu {
    display: block;
}
.seller-dropdown {
    position: relative;
}

/* show dropdown on hover */
.seller-dropdown:hover .dropdown-menu2 {
    display: block;
    position: absolute;
    top: 100%;
    left: 0;
    background: white;
    min-width: 180px;
    border-radius: 8px;
    box-shadow: 0 4px 12px rgba(0,0,0,0.25);
    z-index: 999;
}
@media screen and (max-width:1024px){

    .container,
    .box2,
    .box3,
    .box4,
    .box5{
        flex-wrap:wrap;
        justify-content:center;
    }

    .card,
    .Tv,
    .Mobile,
    .Watches,
    .Buds{
        width:45%;
    }
}


/* ===========================
   MOBILE RESPONSIVE
=========================== */
@media screen and (max-width:768px){

    nav{
        position:relative;
        height:auto;
        padding:15px;
        flex-direction:column;
        gap:15px;
    }

    .logo{
        width:100%;
        justify-content:center;
    }

    .box{
        width:100%;
        justify-content:center;
    }

    .box input{
        width:100%;
        max-width:100%;
    }

    nav ul{
        width:100%;
        flex-wrap:wrap;
        justify-content:center;
        gap:15px;
    }

    .categories{
        margin-top:0;
        flex-wrap:wrap;
        gap:15px;
    }

    .categories a{
        width:80px;
        font-size:14px;
        margin-top:0;
    }

    .categories img{
        width:60px;
        height:60px;
        object-fit:contain;
        margin:auto;
    }

    .container,
    .box2,
    .box3,
    .box4,
    .box5{
        flex-direction:column;
        align-items:center;
        padding:10px;
    }

    .card,
    .Tv,
    .Mobile,
    .Watches,
    .Buds{
        width:95%;
        max-width:350px;
    }

    .button-container{
        flex-direction:column;
        gap:10px;
    }

    .button-container form{
        width:100%;
    }

    .button-container button{
        width:100%;
    }

    img{
        max-height:none;
    }

    .fa{
        flex-direction:column;
        text-align:center;
    }

    .fl{
        flex-direction:column;
        text-align:center;
    }

    .fb{
        flex-direction:column;
        gap:10px;
    }

    .fb img{
        width:35px;
    }
}


/* ===========================
   SMALL MOBILE
=========================== */
@media screen and (max-width:480px){

    h1{
        font-size:24px;
    }

    .card p,
    .Tv p,
    .Mobile p,
    .Watches p,
    .Buds p{
        font-size:16px;
    }

    nav ul li a{
        font-size:14px;
    }

    .account-link{
        font-size:14px;
    }

    .dropdown-menu,
    .dropdown-menu2{
        min-width:150px;
    }
}
.more-dropdown{
    position:relative;
}

.more-dropdown:hover .dropdown-menu2{
    display:block;
}

</style>
</head>
<body>
    <nav>
       <div class="logo">
        <div class="flip"><img src="https://static.vecteezy.com/system/resources/previews/054/650/802/non_2x/flipkart-logo-rounded-flipkart-logo-free-download-flipkart-logo-free-png.png" alt="logo"></div>
            <img src="https://static-assets-web.flixcart.com/fk-p-linchpin-web/fk-cp-zion/img/flipkart-plus_8d85f4.png" alt="shirt">
            <p>Flipkart <span>plus</span></p>
        </div>

     <form action="searchProduct" method="get"> <div class="box"> <input type="text" name="keyword" placeholder="Search Product & More..." id="search"> <button type="submit" style="border:none;background:none;cursor:pointer;"> <i class="fa-solid fa-magnifying-glass"></i> </button> </div> </form>
        <ul>
       
   
	   <li>
    Welcome <%= user.getName() %>
</li>

<li class="account-dropdown">
    <a href="#" class="account-link">
        My Account
        <i class="fa-solid fa-caret-down"></i>
    </a>

    <ul class="dropdown-menu">

        <li><a href="myOrders">📦 My Orders</a></li>

        <li><a href="viewCart">🛒 My Cart</a></li>

        <li><a href="logout">🚪 Logout</a></li>

    </ul>
</li>

		

          <li class="seller-dropdown">

    <a href="#" class="account-link">
        Become a Seller
        <i class="fa-solid fa-caret-down"></i>
    </a>

    <ul class="dropdown-menu2">

        <li><a href="sellerRegister.jsp">📝 Seller Register</a></li>

        <li><a href="sellerLogin.jsp">🔐 Seller Login</a></li>

        <li><a href="sellerDashboard.jsp">🏪 Seller Dashboard</a></li>

    </ul>

</li>
         <li class="more-dropdown">

    <a href="#" class="account-link">
        More
        <i class="fa-solid fa-caret-down"></i>
    </a>

    <ul class="dropdown-menu2">

        <li><a href="notifications">🔔 Notifications</a></li>

        <li><a href="reviews">⭐ Product Reviews</a></li>

        <li>
    <a href="customerCare">
        🎧 Customer Care
    </a>
</li>

        <li><a href="trackOrders">🚚 Track Order</a></li>

        <li><a href="helpCenter.jsp">❓ Help Center</a></li>

        <li><a href="contact.jsp">📧 Contact Us</a></li>

    </ul>

</li>
         
  <li class="cart-dropdown">
    <a href="viewWishlist" class="account-link">
        🛒 Cart
        <i class="fa-solid fa-caret-down"></i>
    </a>

    <ul class="dropdown-menu2">
        <li><a href="viewCart">🛒 View Cart</a></li>
        <li><a href="viewWishlist">❤️ Wishlist</a></li>
        <li><a href="myOrders">📦 Orders</a></li>
    </ul>
</li>
        </ul>
    </nav>
    
            <div class="categories">
            <a href="#"><img alt="off" src="images/top.jpg">Top Offers</a>
        
           
            <a href="#"><img alt="gro" src="images/gro.jpeg">Grocery</a>
          
           <a href="#"><img alt="women" src="images/dre.jpeg">Womens</a>
           
             <a href="#"><img alt="men" src="images/men.jpeg">Mens</a>
           
             <a href="#"><img alt="elect" src="images/elect.jpeg">Electronics</a>
            
       
           <a href="#"><img alt="Fash" src="images/fash.jpeg">Fashions</a>
          
            <a href="#"><img alt="Home" src="images/home.jpeg">Home</a>
           
            <a href="#"><img alt="beauty" src="images/beauty.jpeg">Beauty</a>
           
             <a href="#"><img alt="Appli" src="images/appli.jpeg">Appliances</a>
            </div>
<img src="images/flip.png" alt="interact">
<div class="container">
    <div class="card"  onclick="location.href='productDetails.jsp?id=1'">
        <img src="https://rukminim1.flixcart.com/image/312/312/l4rd0280/t-shirt/l/n/s/s-402a-austiz-original-imagfh4fmsjbsy69.jpeg?q=70" alt="w">
        <p>Printed Round Neck</p>
        <p>₹999</p>
        <div class="button-container">
    <form action="addToCart" method="post"
              onclick="event.stopPropagation();">

            <input type="hidden" name="productId" value="1">
      </form>
  <form action="addToCart" method="post">
        <input type="hidden" name="productId" value="1">
        <button class="b2">ADD TO CART</button>
      </form>
      <form action="wishlist" method="post">
    <input type="hidden" name="productId" value="1">
    <button type="submit">❤️ Wishlist</button>
</form>
</div>

    </div>
    <div class="card" onclick="location.href='productDetails.jsp?id=2'">
        <img src="https://rukminim1.flixcart.com/image/312/312/l4rd0280/t-shirt/c/y/x/m-408a-austiz-original-imagfh43wzj6hvyv.jpeg?q=70" alt="y">
        <p>Printed Round Neck T-shirt</p>
        <p>₹899</p>
        <div class="button-container">
      <form action="addToCart" method="post"
              onclick="event.stopPropagation();">

            <input type="hidden" name="productId" value="2">
      </form>
   <form action="addToCart" method="post">
        <input type="hidden" name="productId" value="2">
        <button class="b2">ADD TO CART</button>
        
      </form>
      <form action="wishlist" method="post">
    <input type="hidden" name="productId" value="2">
    <button type="submit">❤️ Wishlist</button>
</form>
</div>

    </div>
    <div class="card" onclick="location.href='productDetails.jsp?id=3'">
        <img src="https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcQXbSgPQdhSMlrxUBc-1dIxciPpuYP_bdcwiMpVC_iue2-8N4FPXDE3oc3cRg5mPpVY7cKtV8AnMlz1kQXoSvk-2v1s6rN8BHAAkoNtU5dc3dcjtOsbY68eSw" alt="w">
        <p>Allen Solly Men's Printed Slim Fit Shirt</p>
        <p>₹763</p>
       <div class="button-container">
       <form action="addToCart" method="post"
              onclick="event.stopPropagation();">

            <input type="hidden" name="productId" value="3">
      </form>
  <form action="addToCart" method="post">
        <input type="hidden" name="productId" value="3">
        <button class="b2">ADD TO CART</button>
      </form>
      <form action="wishlist" method="post">
    <input type="hidden" name="productId" value="3">
    <button type="submit">❤️ Wishlist</button>
</form>
</div>

    </div>
    <div class="card" onclick="location.href='productDetails.jsp?id=4'">
        <img src="https://rukminim1.flixcart.com/image/312/312/xif0q/t-shirt/e/r/9/xl-st-smartees-pocket-black-smartees-original-imagh8ctwfczgdcx.jpeg?q=70" alt="b">
        <p>Printed Round Neck</p>
        <p>₹549</p>
       <div class="button-container">
        <form action="addToCart" method="post"
              onclick="event.stopPropagation();">

            <input type="hidden" name="productId" value="1">
      </form>
    <form action="addToCart" method="post">
        <input type="hidden" name="productId" value="4">
        <button class="b2">ADD TO CART</button>
      </form>
      <form action="wishlist" method="post">
    <input type="hidden" name="productId" value="4">
    <button type="submit">❤️ Wishlist</button>
</form>
</div>

    </div>
    </div>
    <div class="box2">
        <div class="Tv" onclick="location.href='productDetails.jsp?id=5'">
        <img src="https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcTmYfe28EaNPZRTAJYIpI7c4Y_tYC5hi5G2eckbE854PLqnGB48SaFtBOuMogFYf3vMgTEifeEbHAZqWGfQcYA09lMMyTcZlsUAQZq4yx0mWTbuhUN2SCrD" alt="samsung">
        <p>Samsung Crystal iSmart 4K Ultra HD Smart LED TV</p>
        <p>₹47,990</p>
       <div class="button-container">
       <form action="addToCart" method="post"
              onclick="event.stopPropagation();">

            <input type="hidden" name="productId" value="5">
      </form>
   <form action="addToCart" method="post">
        <input type="hidden" name="productId" value="5">
        <button class="b2">ADD TO CART</button>
      </form>
      <form action="wishlist" method="post">
    <input type="hidden" name="productId" value="5">
    <button type="submit">❤️ Wishlist</button>
</form>
</div>
</div>

    <div class="Tv" onclick="location.href='productDetails.jsp?id=6'">
        <img src="https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcQUo7RwJgye6ppHR1zoCAcsBW9H8I5LLRehQDcsUclyie4FmvnyGCO8D4IeJMpCzYo8EncHanTgASH18FdiRUq_NCJoEuyT_8ojKJYdCY4" alt="realme">
        <p>Realme Techlife Cinesonic 80 Cm 32 Inch Qled Hd Ready Smart Google Tv </p>
        <p>₹8,999</p>
        <div class="button-container">
       <form action="addToCart" method="post"
              onclick="event.stopPropagation();">

            <input type="hidden" name="productId" value="6">
      </form>
  <form action="addToCart" method="post">
        <input type="hidden" name="productId" value="6">
        <button class="b2">ADD TO CART</button>
      </form>
      <form action="wishlist" method="post">
    <input type="hidden" name="productId" value="6">
    <button type="submit">❤️ Wishlist</button>
</form>
</div>

    </div>
    <div class="Tv" onclick="location.href='productDetails.jsp?id=7'">
        <img src="https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcSFEBqbuXPFzz_agMhAmtW7o1BAGw96ssc5sB6_6tVe5B_gtCfC2rb6WEi5Mm-yZsYzAPInmCKHnX-SXTqCgTdG_JKpoiyaI8TyeMYIV8k6UnUyI_Tl8j1T" alt="lg">
        <p>LG UR75 Series 4K Ultra HD Smart LED TV</p>
        <p> ₹29,990</p>
        <div class="button-container">
      <form action="addToCart" method="post"
              onclick="event.stopPropagation();">

            <input type="hidden" name="productId" value="7">
      </form>
   <form action="addToCart" method="post">
        <input type="hidden" name="productId" value="7">
        <button class="b2">ADD TO CART</button>
      </form>
      <form action="wishlist" method="post">
    <input type="hidden" name="productId" value="7">
    <button type="submit">❤️ Wishlist</button>
</form>
</div>

    </div>
    <div class="Tv" onclick="location.href='productDetails.jsp?id=8'">
        <img src="https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcSVo2WpA8BWpZKfQnEfgnpwTJi43FH1-hrS-Sl2Vmlecm2CysSdewdR4OkoVq7MzVFT9rrrfEs8ICrzfCY8NlTwfQrcpIcs8VZ-hp4VC9PtLyEKQ38ZPskceA" alt="Sony">
        <p>Sony Bravia KD-50X64L 4k Ultra HD Smart LED</p>
        <p>₹35,590</p>
<div class="button-container">
       <form action="addToCart" method="post"
              onclick="event.stopPropagation();">

            <input type="hidden" name="productId" value="8">
      </form>
   <form action="addToCart" method="post">
        <input type="hidden" name="productId" value="8">
        <button class="b2">ADD TO CART</button>
      </form>
      <form action="wishlist" method="post">
    <input type="hidden" name="productId" value="8">
    <button type="submit">❤️ Wishlist</button>
</form>
</div>

    </div>
</div>
<div class="box3">
        <div class="Mobile"  onclick="location.href='productDetails.jsp?id=9'">
        <img src="https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcQfUjIJKZggue3C2k4dNNgcaymyDkqVn70sxiYgCGt9AGPhBLt3jJGs6-saYcB9E1jt9h7Kvxiy6bm9BNKkPG0vdSUa1GCEcKa7YSZb-Tju" alt="Realme">
        <p>Realme P3x 5G</p>
        <p> ₹11,999</p>
   <div class="button-container">
   <form action="addToCart" method="post"
              onclick="event.stopPropagation();">

            <input type="hidden" name="productId" value="9">
      </form>
     <form action="addToCart" method="post">
        <input type="hidden" name="productId" value="9">
        <button class="b2">ADD TO CART</button>
      </form>
      <form action="wishlist" method="post">
    <input type="hidden" name="productId" value="9">
    <button type="submit">❤️ Wishlist</button>
</form>
</div>
    </div>
        <div class="Mobile" onclick="location.href='productDetails.jsp?id=10'">
        <img src="https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcRrPnf2VYkna34m_JY4eNgJc-NF_NyeZOfAUft3_1Y5CusQpPXGx0dB8bnR0tA9mk-oGIImG18_BznCmV_xke8V0Yvqy-ZC_RQ4VAkiLUAj" alt="Poco">
        <p>Poco F6 5G</p>
        <p>₹23,999</p>
        <div class="button-container">
         <form action="addToCart" method="post"
              onclick="event.stopPropagation();">

            <input type="hidden" name="productId" value="10">
      </form>
          <form action="addToCart" method="post">
        <input type="hidden" name="productId" value="10">
        <button class="b2">ADD TO CART</button>
      </form>
      <form action="wishlist" method="post">
    <input type="hidden" name="productId" value="10">
    <button type="submit">❤️ Wishlist</button>
</form>
        </div>
    </div>

    <div class="Mobile" onclick="location.href='productDetails.jsp?id=11'">
        <img src="https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcSFuAft-aY4CjM0kE-ljn4thbRo30WNHbSI64GDfx_C2cDvLBah9WvPl90FuRx-Jg8vcqFmhCUfh6XeR7vps_dT2-M3CrsZgjZe8N3l6Y4" alt="vivo">
        <p>Vivo T4 5G</p>
        <p>₹21,999</p>
        <div class="button-container">
              <form action="addToCart" method="post"
              onclick="event.stopPropagation();">

            <input type="hidden" name="productId" value="11">
      </form>
           <form action="addToCart" method="post">
        <input type="hidden" name="productId" value="11">
        <button class="b2">ADD TO CART</button>
      </form>
      <form action="wishlist" method="post">
    <input type="hidden" name="productId" value="11">
    <button type="submit">❤️ Wishlist</button>
</form>
        </div>
    </div>

    <div class="Mobile" onclick="location.href='productDetails.jsp?id=12'">
        <img src="https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcSzIKShfxmasLUcJ7xgJ7gm5Qu0Rhjz5t1MqEx-VwlnUaAt6G96fJdBW_d-09OfMjXWKhSBU8bvQeTec2R6Y8m8u1vefAiobx6LPaGxSms" alt="iphone">
        <p>Apple iPhone 16 Plus</p>
        <p>₹84,900</p>
        <div class="button-container">
              <form action="addToCart" method="post"
              onclick="event.stopPropagation();">

            <input type="hidden" name="productId" value="12">
      </form>
           <form action="addToCart" method="post">
        <input type="hidden" name="productId" value="12">
        <button class="b2">ADD TO CART</button>
      </form>
      <form action="wishlist" method="post">
    <input type="hidden" name="productId" value="12">
    <button type="submit">❤️ Wishlist</button>
</form>
        </div>
    </div>
</div>

<div class="box4" >
    <div class="Watches" onclick="location.href='productDetails.jsp?id=13'">
        <img src="https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcS8nUCu3VSungzgsycwziq0NWTrvlqx6NJIfeY_Rpw13kYq5hIQEscyVFU_RJ7Np3avxt2_N3R4gjx_cZTANlxmOcm1MC1GIZAbwNZrCKWb" alt="Rolex">
        <p>Rolex Overfly Silver Gold Quartz Chain</p>
        <p>₹3,064</p>
        <div class="button-container">
               <form action="addToCart" method="post"
              onclick="event.stopPropagation();">

            <input type="hidden" name="productId" value="13">
      </form>
          <form action="addToCart" method="post">
        <input type="hidden" name="productId" value="13">
        <button class="b2">ADD TO CART</button>
      </form>
      <form action="wishlist" method="post">
    <input type="hidden" name="productId" value="13">
    <button type="submit">❤️ Wishlist</button>
</form>
        </div>
    </div>

    <div class="Watches" onclick="location.href='productDetails.jsp?id=14'">
        <img src="https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcQkPgU4BoshCubbve15dc0Ilxn3cLNnPbMXb9Y6pPmhSvos8P1EjvqHpKaYCnBO8TlUAQZuM-I26M1qm7slWNTIOrLz7LQRu2X9CFW1HPS96Vhk_fbB7vcl" alt="Titan">
        <p>Titan Men's Neo Splash Analog Watch</p>
        <p>₹7,295</p>
        <div class="button-container">
         <form action="addToCart" method="post"
              onclick="event.stopPropagation();">

            <input type="hidden" name="productId" value="14">
      </form>
           <form action="addToCart" method="post">
        <input type="hidden" name="productId" value="14">
        <button class="b2">ADD TO CART</button>
      </form>
      <form action="wishlist" method="post">
    <input type="hidden" name="productId" value="14">
    <button type="submit">❤️ Wishlist</button>
</form>
        </div>
    </div>

    <div class="Watches" onclick="location.href='productDetails.jsp?id=15'">
        <img src="https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcREjtqhZiys-IAN3r5uLi1b5odCfSdp1xJ2joh3t4LLIByGV6m4MVFqbDW5Eyp2ti8CiLHYXWvBLNoYKla1t-oOo6_xNBEXF8w3y6xYmpDf6FfC_DUjS5gNsw" alt="Timex">
        <p>Timex Men's Analog Black Dial Watch</p>
        <p>₹1,399</p>
        <div class="button-container">
               <form action="addToCart" method="post"
              onclick="event.stopPropagation();">

            <input type="hidden" name="productId" value="15">
      </form>
           <form action="addToCart" method="post">
        <input type="hidden" name="productId" value="15">
        <button class="b2">ADD TO CART</button>
      </form>
      <form action="wishlist" method="post">
    <input type="hidden" name="productId" value="15">
    <button type="submit">❤️ Wishlist</button>
</form>
        </div>
    </div>

    <div class="Watches" onclick="location.href='productDetails.jsp?id=16'">
        <img src="https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcQ3syisQYZC53GlcFnjLRK2I_thUhcPuGPAldJdhhcn4vS_b3o8v6bMTEwDJohYqgMhTS6clAoDL90gjipoVfLTP3XemroOM0e72tvqUDU" alt="Fastrack">
        <p>Fastrack Optimus 2 Pro Smartwatch</p>
        <p>₹2,499</p>
        <div class="button-container">
               <form action="addToCart" method="post"
              onclick="event.stopPropagation();">

            <input type="hidden" name="productId" value="16">
      </form>
          <form action="addToCart" method="post">
        <input type="hidden" name="productId" value="16">
        <button class="b2">ADD TO CART</button>
      </form>
      <form action="wishlist" method="post">
    <input type="hidden" name="productId" value="16">
    <button type="submit">❤️ Wishlist</button>
</form>
        </div>
    </div>
</div>

<div class="box5" >
    <div class="Buds" onclick="location.href='productDetails.jsp?id=17'">
        <img src="https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcTcW5UYSj3Da2J9FuNwFZH_w7nMubkNGL498tYWXSJBCC75XgHx3vAhHgdgn5XlqA6j96QqrLfGTPDNhUayMAyQugQuDhM42606Iz4dCoOTJs6sCjeMWwUa" alt="Airpods">
        <p>Apple Airpods</p>
        <p>₹8,999</p>
        <div class="button-container">
              <form action="addToCart" method="post"
              onclick="event.stopPropagation();">

            <input type="hidden" name="productId" value="17">
      </form>
           <form action="addToCart" method="post">
        <input type="hidden" name="productId" value="17">
        <button class="b2">ADD TO CART</button>
      </form>
      <form action="wishlist" method="post">
    <input type="hidden" name="productId" value="17">
    <button type="submit">❤️ Wishlist</button>
</form>
        </div>
    </div>
    

    <div class="Buds" onclick="location.href='productDetails.jsp?id=18'">
        <img src="https://s3bg.cashify.in/gpro/uploads/2024/06/25162613/boult-audio-mustang-torq-front.webp" alt="Boult">
        <p>Boult Audio Mustang Torq</p>
        <p>₹1,799</p>
        <div class="button-container">
              <form action="addToCart" method="post"
              onclick="event.stopPropagation();">

            <input type="hidden" name="productId" value="18">
      </form>
           <form action="addToCart" method="post">
        <input type="hidden" name="productId" value="18">
        <button class="b2">ADD TO CART</button>
      </form>
      <form action="wishlist" method="post">
    <input type="hidden" name="productId" value="18">
    <button type="submit">❤️ Wishlist</button>
</form>
        </div>
    </div>

    <div class="Buds" onclick="location.href='productDetails.jsp?id=19'">
        <img src="https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcS6z32ixOHBGZ3QuTirltE8IFvwaT83eZECh22c9LUGVk3Qa3HgWfIp06TqomNOOA9S9ZRQD1JhpD3jKYp2p48QVrnmbcd6_QdOO-YB95g" alt="Realme Buds">
        <p>Realme Buds T310</p>
        <p>₹2,199</p>
        <div class="button-container">
              <form action="addToCart" method="post"
              onclick="event.stopPropagation();">

            <input type="hidden" name="productId" value="19">
      </form>
           <form action="addToCart" method="post">
        <input type="hidden" name="productId" value="19">
        <button class="b2">ADD TO CART</button>
      </form>
      <form action="wishlist" method="post">
    <input type="hidden" name="productId" value="19">
    <button type="submit">❤️ Wishlist</button>
</form>
        </div>
    </div>

    <div class="Buds" onclick="location.href='productDetails.jsp?id=20'">
        <img src="https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcQVGijlUW_qkarCe5rot3RJ-8Ez9c04g8EijfWgaA6lmK_W8t1Y7fcA3CorXPG9yw3L6QH_7e80nz_5RC2aMQPDNNJ5J3Rm6LqafY0Yrpo" alt="OnePlus Buds">
        <p>OnePlus Buds Pro</p>
        <p>₹6,488</p>
        <div class="button-container">
              <form action="addToCart" method="post"
              onclick="event.stopPropagation();">

            <input type="hidden" name="productId" value="20">
      </form>
           <form action="addToCart" method="post">
        <input type="hidden" name="productId" value="20">
        <button class="b2">ADD TO CART</button>
      </form>
      <form action="wishlist" method="post">
    <input type="hidden" name="productId" value="20">
    <button type="submit">❤️ Wishlist</button>
</form>
        </div>
    </div>
</div>
<p></p>
<footer>
<div class="fc">
  <div class="fl">
    <div>
      <h3>ABOUT</h3>
      <a href="#">Contact Us</a>
      <a href="#">About Us</a>
      <a href="#">Careers</a>
      <a href="#">FlipKart Stories</a>
      <a href="#">Press</a>
      <a href="#">Corporate Information</a>
    </div>

    <div>
      <h3>HELP</h3>
      <a href="#">Payments</a>
      <a href="#">Shipping</a>
      <a href="#">Cancellation & Returns</a>
      <a href="#">FlipKart Stories</a>
      <a href="#">FAQ</a>
      <a href="#">Report Infringement</a>
    </div>

    <div>
      <h3>CONSUMER POLICY</h3>
      <a href="#">Return Policy</a>
      <a href="#">Terms of Use</a>
      <a href="#">Security</a>
      <a href="#">Sitemap</a>
      <a href="#">Grievance Redressal</a>
      <a href="#">EPR Compliance</a>
    </div>

    <div>
      <h3>SOCIAL</h3>
      <a href="#">Facebook</a>
      <a href="#">Twitter</a>
      <a href="#">YouTube</a>
    </div>
  </div>
</div>

<div class="fa">
<div>
<h3>Mail Us:</h3>
<p>FlipKart Internet Private Limited</p>
<p>Buildings Alyssa, Begonia &</p>
<p>Clove Embassy Tech Vilage</p>
<p>Outer Ring Road, Devarabeesanahalli Village</p>
<p>Bengaluru, 560103,</p>
<p>Karnataka,India</p>
</div>
<div>
	<h3>Registered Office Address:</h3>
<p>FlipKart Internet Private Limited</p>
<p>Buildings Alyssa, Begonia &</p>
<p>Clove Embassy Tech Vilage</p>
<p>Outer Ring Road, Devarabeesanahalli Village</p>
<p>Benguluru, 560103,</p>
<p>Karnataka,India</p>
<p>CIN : US1109KA2012PTC066107</p>
<P>Telephone: <a href="#">044-45614700</a></P>
</div>
</div>
<div class="fb">
<p>@ 2007-2026 FlipKart.com</p>
<img src="https://img.icons8.com/color/48/000000/visa.png" alt="visa">
<img src="https://img.icons8.com/color/48/000000/mastercard-logo.png" alt="mastercard">
<img src="https://img.icons8.com/color/48/000000/amex.png" alt="amex">
<img src="https://img.icons8.com/color/48/000000/rupay.png" alt="rupay">
</div>
</footer>
</body>
</html>
    
