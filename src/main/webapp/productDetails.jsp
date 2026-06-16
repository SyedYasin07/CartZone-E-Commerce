<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.pst.flip.DTO.Flipkart_Dto" %>

<%
Flipkart_Dto product =
        (Flipkart_Dto) request.getAttribute("product");
%>
<!DOCTYPE html>
<html>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" type="image/ico" href="images/favicon.ico">
<title>Product details</title>

<style>
body{
    font-family:Arial;
    background:#f1f3f6;
}

.container{
    width:80%;
    margin:50px auto;
    background:white;
    padding:30px;
    display:flex;
    gap:40px;
    border-radius:10px;
}

.container img{
    width:350px;
    object-fit:contain;
}

.details h1{
    color:#212121;
}

.price{
    color:green;
    font-size:30px;
    font-weight:bold;
}

button{
    padding:12px 30px;
    border:none;
    margin:10px;
    cursor:pointer;
}

.buy{
    background:#fb641b;
    color:white;
}

.cart{
    background:#ff9f00;
    color:white;
}
select{
    width:250px;
    padding:10px;
    margin-top:10px;
    border-radius:5px;
}

.buy:disabled{
    background:gray;
    cursor:not-allowed;
}
</style>

</head>

<body>

<%
String pid = request.getParameter("id");

String name = "";
String image = "";
String price = "";
String brand = "";
String specs = "";
String description = "";

if(pid != null){

    switch(pid){

        case "1":
            name = "Printed Round Neck T-Shirt";
            image = "https://rukminim1.flixcart.com/image/312/312/l4rd0280/t-shirt/l/n/s/s-402a-austiz-original-imagfh4fmsjbsy69.jpeg?q=70";
            price = "₹999";
            brand = "Austiz";
            specs = "Fabric : Cotton<br>Fit : Regular<br>Sleeve : Half Sleeve";
            description = "Comfortable printed round neck t-shirt suitable for daily wear.";
            break;
        case "2":
            name = "Printed Round Neck T-shirt";
            image = "https://rukminim1.flixcart.com/image/312/312/l4rd0280/t-shirt/c/y/x/m-408a-austiz-original-imagfh43wzj6hvyv.jpeg?q=70";
            price = "₹899";
            brand = "Austiz";
            specs = "Fabric : Cotton<br>Fit : Regular<br>Sleeve : Half Sleeve";
            description = "Stylish printed t-shirt for casual occasions.";
            break;

        case "3":
            name = "Allen Solly Men's Printed Slim Fit Shirt";
            image = "https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcQXbSgPQdhSMlrxUBc-1dIxciPpuYP_bdcwiMpVC_iue2-8N4FPXDE3oc3cRg5mPpVY7cKtV8AnMlz1kQXoSvk-2v1s6rN8BHAAkoNtU5dc3dcjtOsbY68eSw";
            price = "₹763";
            brand = "Allen Solly";
            specs = "Fabric : Cotton Blend<br>Fit : Slim Fit<br>Sleeve : Full Sleeve";
            description = "Premium slim fit shirt perfect for formal wear.";
            break;

        case "4":
            name = "Printed Round Neck T-Shirt";
            image = "https://rukminim1.flixcart.com/image/312/312/xif0q/t-shirt/e/r/9/xl-st-smartees-pocket-black-smartees-original-imagh8ctwfczgdcx.jpeg?q=70";
            price = "₹549";
            brand = "Smartees";
            specs = "Fabric : Cotton<br>Fit : Regular<br>Sleeve : Half Sleeve";
            description = "Comfortable t-shirt with modern design.";
            break;


        case "5":
            name = "Samsung Crystal iSmart 4K Ultra HD Smart LED TV";
            image = "https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcTmYfe28EaNPZRTAJYIpI7c4Y_tYC5hi5G2eckbE854PLqnGB48SaFtBOuMogFYf3vMgTEifeEbHAZqWGfQcYA09lMMyTcZlsUAQZq4yx0mWTbuhUN2SCrD";
            price = "₹47,990";
            brand = "Samsung";
            specs = "Display : 4K Ultra HD<br>OS : Tizen<br>Size : 55 Inch";
            description = "Crystal clear visuals with smart features.";
            break;
        case "6":
            name = "Realme Techlife Cinesonic Smart TV";
            image = "https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcQUo7RwJgye6ppHR1zoCAcsBW9H8I5LLRehQDcsUclyie4FmvnyGCO8D4IeJMpCzYo8EncHanTgASH18FdiRUq_NCJoEuyT_8ojKJYdCY4";
            price = "₹8,999";
            brand = "Realme";
            specs = "Display : HD Ready<br>OS : Google TV<br>Size : 32 Inch";
            description = "Affordable smart TV with Google features.";
            break;
        case "7":
            name = "LG UR75 Series 4K Ultra HD Smart LED TV";
            image = "https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcSFEBqbuXPFzz_agMhAmtW7o1BAGw96ssc5sB6_6tVe5B_gtCfC2rb6WEi5Mm-yZsYzAPInmCKHnX-SXTqCgTdG_JKpoiyaI8TyeMYIV8k6UnUyI_Tl8j1T";
            price = "₹29,990";
            brand = "LG";
            specs = "Display : 4K Ultra HD<br>OS : WebOS<br>Size : 43 Inch";
            description = "Experience stunning visuals with LG Smart TV.";
            break;

        case "8":
            name = "Sony Bravia KD-50X64L Smart LED TV";
            image = "https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcSVo2WpA8BWpZKfQnEfgnpwTJi43FH1-hrS-Sl2Vmlecm2CysSdewdR4OkoVq7MzVFT9rrrfEs8ICrzfCY8NlTwfQrcpIcs8VZ-hp4VC9PtLyEKQ38ZPskceA";
            price = "₹35,590";
            brand = "Sony";
            specs = "Display : 4K Ultra HD<br>OS : Android TV<br>Size : 50 Inch";
            description = "Premium entertainment with Sony Bravia.";
            break;

        case "9":
            name = "Realme P3x 5G";
            image = "https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcQfUjIJKZggue3C2k4dNNgcaymyDkqVn70sxiYgCGt9AGPhBLt3jJGs6-saYcB9E1jt9h7Kvxiy6bm9BNKkPG0vdSUa1GCEcKa7YSZb-Tju";
            price = "₹11,999";
            brand = "Realme";
            specs = "RAM : 8GB<br>Storage : 128GB<br>Battery : 5000mAh";
            description = "Fast 5G smartphone with excellent battery life.";
            break;
        case "10":
            name = "Poco F6 5G";
            image = "https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcRrPnf2VYkna34m_JY4eNgJc-NF_NyeZOfAUft3_1Y5CusQpPXGx0dB8bnR0tA9mk-oGIImG18_BznCmV_xke8V0Yvqy-ZC_RQ4VAkiLUAj";
            price = "₹23,999";
            brand = "Poco";
            specs = "RAM : 8GB<br>Storage : 256GB<br>Battery : 5000mAh";
            description = "High-performance 5G smartphone for gaming.";
            break;
        case "11":
            name = "Vivo T4 5G";
            image = "https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcSFuAft-aY4CjM0kE-ljn4thbRo30WNHbSI64GDfx_C2cDvLBah9WvPl90FuRx-Jg8vcqFmhCUfh6XeR7vps_dT2-M3CrsZgjZe8N3l6Y4";
            price = "₹21,999";
            brand = "Vivo";
            specs = "RAM : 8GB<br>Storage : 128GB<br>Battery : 5000mAh";
            description = "Sleek design with excellent camera performance.";
            break;

        case "12":
            name = "Apple iPhone 16 Plus";
            image = "https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcSzIKShfxmasLUcJ7xgJ7gm5Qu0Rhjz5t1MqEx-VwlnUaAt6G96fJdBW_d-09OfMjXWKhSBU8bvQeTec2R6Y8m8u1vefAiobx6LPaGxSms";
            price = "₹84,900";
            brand = "Apple";
            specs = "RAM : 8GB<br>Storage : 256GB<br>Camera : 48MP";
            description = "Latest iPhone with powerful performance.";
            break;


        case "13":
            name = "Rolex Overfly Silver Gold Quartz Chain";
            image = "https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcS8nUCu3VSungzgsycwziq0NWTrvlqx6NJIfeY_Rpw13kYq5hIQEscyVFU_RJ7Np3avxt2_N3R4gjx_cZTANlxmOcm1MC1GIZAbwNZrCKWb";
            price = "₹3,064";
            brand = "Rolex";
            specs = "Type : Analog<br>Strap : Metal<br>Warranty : 1 Year";
            description = "Stylish luxury watch for all occasions.";
            break;
        case "14":
            name = "Titan Men's Neo Splash Analog Watch";
            image = "https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcQkPgU4BoshCubbve15dc0Ilxn3cLNnPbMXb9Y6pPmhSvos8P1EjvqHpKaYCnBO8TlUAQZuM-I26M1qm7slWNTIOrLz7LQRu2X9CFW1HPS96Vhk_fbB7vcl";
            price = "₹7,295";
            brand = "Titan";
            specs = "Type : Analog<br>Strap : Leather<br>Warranty : 2 Years";
            description = "Elegant watch designed for professionals.";
            break;

        case "15":
            name = "Timex Men's Analog Black Dial Watch";
            image = "https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcREjtqhZiys-IAN3r5uLi1b5odCfSdp1xJ2joh3t4LLIByGV6m4MVFqbDW5Eyp2ti8CiLHYXWvBLNoYKla1t-oOo6_xNBEXF8w3y6xYmpDf6FfC_DUjS5gNsw";
            price = "₹1,399";
            brand = "Timex";
            specs = "Type : Analog<br>Strap : Leather<br>Warranty : 1 Year";
            description = "Classic black dial watch for everyday wear.";
            break;

        case "16":
            name = "Fastrack Optimus 2 Pro Smartwatch";
            image = "https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcQ3syisQYZC53GlcFnjLRK2I_thUhcPuGPAldJdhhcn4vS_b3o8v6bMTEwDJohYqgMhTS6clAoDL90gjipoVfLTP3XemroOM0e72tvqUDU";
            price = "₹2,499";
            brand = "Fastrack";
            specs = "Display : AMOLED<br>Bluetooth Calling : Yes<br>Battery : 7 Days";
            description = "Feature-packed smartwatch for fitness enthusiasts.";
            break;
        case "17":
            name = "Apple AirPods";
            image = "https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcTcW5UYSj3Da2J9FuNwFZH_w7nMubkNGL498tYWXSJBCC75XgHx3vAhHgdgn5XlqA6j96QqrLfGTPDNhUayMAyQugQuDhM42606Iz4dCoOTJs6sCjeMWwUa";
            price = "₹8,999";
            brand = "Apple";
            specs = "ANC : Yes<br>Battery : 30 Hours<br>Bluetooth : 5.3";
            description = "Premium wireless earbuds with immersive sound.";
            break;
        case "18":
            name = "Boult Audio Mustang Torq";
            image = "https://s3bg.cashify.in/gpro/uploads/2024/06/25162613/boult-audio-mustang-torq-front.webp";
            price = "₹1,799";
            brand = "Boult";
            specs = "Gaming Mode : Yes<br>Battery : 50 Hours<br>Bluetooth : 5.4";
            description = "Low-latency gaming earbuds with powerful bass.";
            break;
        case "19":
            name = "Realme Buds T310";
            image = "https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcS6z32ixOHBGZ3QuTirltE8IFvwaT83eZECh22c9LUGVk3Qa3HgWfIp06TqomNOOA9S9ZRQD1JhpD3jKYp2p48QVrnmbcd6_QdOO-YB95g";
            price = "₹2,199";
            brand = "Realme";
            specs = "ANC : Yes<br>Battery : 40 Hours<br>Bluetooth : 5.4";
            description = "Powerful sound and long battery life.";
            break;

       
        case "20":
            name = "OnePlus Buds Pro";
            price = "₹6,488";
            image = "https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcQVGijlUW_qkarCe5rot3RJ-8Ez9c04g8EijfWgaA6lmK_W8t1Y7fcA3CorXPG9yw3L6QH_7e80nz_5RC2aMQPDNNJ5J3Rm6LqafY0Yrpo";

            brand = "OnePlus";

            specs = "Bluetooth 5.3";

            description = "Premium TWS earbuds with ANC.";

            break;

        default:
            name = "Product Not Found";
    }
}
%>

<div class="container">

    <img src="<%=image%>" alt="Product">

    <div class="details">

        <h1><%=name%></h1>

        <h2 class="price"><%=price%></h2>

        <h3>Brand : <%=brand%></h3>

        <h3>Specifications</h3>

        <p><%=specs%></p>

        <h3>Description</h3>

        <p><%=description%></p>

       <%
boolean isShirt = pid.equals("1") || pid.equals("2") || pid.equals("3") || pid.equals("4");
boolean isTV = pid.equals("5") || pid.equals("6") || pid.equals("7") || pid.equals("8");
boolean isMobile = pid.equals("9") || pid.equals("10") || pid.equals("11") || pid.equals("12");
boolean isWatch = pid.equals("13") || pid.equals("14") || pid.equals("15") || pid.equals("16");
boolean isBuds = pid.equals("17") || pid.equals("18") || pid.equals("19") || pid.equals("20");
%>






	<form action="buy" method="post">

    <input type="hidden" name="productId"
       value="<%= pid %>">
	 <% if(isShirt){ %>

        <h3>Select Size</h3>

        <select name="size" required>
            <option value="">Choose Size</option>
            <option>S</option>
            <option>M</option>
            <option>L</option>
            <option>XL</option>
            <option>XXL</option>
        </select>

        <br><br>

        <h3>Select Color</h3>

        <select name="color" required>
            <option value="">Choose Color</option>
            <option>Black</option>
            <option>White</option>
            <option>Blue</option>
            <option>Red</option>
        </select>

    <% } %>

    <% if(isMobile){ %>

        <h3>Select RAM</h3>

        <select name="ram" required>
            <option value="">Choose RAM</option>
            <option>4 GB</option>
            <option>6 GB</option>
            <option>8 GB</option>
            <option>12 GB</option>
        </select>

        <br><br>

        <h3>Select Storage</h3>

        <select name="storage" required>
            <option value="">Choose Storage</option>
            <option>128 GB</option>
            <option>256 GB</option>
            <option>512 GB</option>
        </select>

        <br><br>

        <h3>Select Color</h3>

        <select name="color" required>
            <option value="">Choose Color</option>
            <option>Black</option>
            <option>Blue</option>
            <option>Silver</option>
        </select>

    <% } %>

    <% if(isTV){ %>

        <h3>Select Screen Size</h3>

        <select name="screenSize" required>
            <option value="">Choose Size</option>
            <option>32 Inch</option>
            <option>43 Inch</option>
            <option>55 Inch</option>
            <option>65 Inch</option>
        </select>

        <br><br>

        <h3>Select Color</h3>

        <select name="color" required>
            <option value="">Choose Color</option>
            <option>Black</option>
            <option>Silver</option>
        </select>

    <% } %>
    <% if(isWatch){ %>

    <h3>Select Color</h3>

    <select name="color" required>
        <option value="">Choose Color</option>
        <option>Black</option>
        <option>Silver</option>
        <option>Gold</option>
        <option>Rose Gold</option>
    </select>

<% } %>
<% if(isBuds){ %>

    <h3>Select Color</h3>

    <select name="color" required>
        <option value="">Choose Color</option>
        <option>White</option>
        <option>Black</option>
        <option>Blue</option>
    </select>

<% } %>

    <br><br>

    <button type="submit" class="buy" id="buyBtn">
        BUY NOW
    </button>

</form>

       <form action="addToCart" method="post">

    <input type="hidden"
           name="productId"
           value="<%= pid %>">

    <button type="submit" class="cart">
        ADD TO CART
    </button>

</form>

    </div>

</div>

</body>
</html>