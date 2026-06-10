<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="com.pst.flip.DTO.Flipkart_Dto"%>

<%
List<Flipkart_Dto> products =
(List<Flipkart_Dto>)request.getAttribute("products");

String msg=(String)request.getAttribute("message");
%>

<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Search Results</title>

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Segoe UI',sans-serif;
}

body{
    background:#f1f3f6;
}

/* HEADER */

.header{
    background:#2874f0;
    color:white;
    padding:18px 50px;
    display:flex;
    justify-content:space-between;
    align-items:center;
    box-shadow:0 2px 12px rgba(0,0,0,.15);
}

.logo{
    font-size:28px;
    font-weight:bold;
}

.search-title{
    font-size:24px;
}

/* CONTAINER */

.container{
    width:95%;
    margin:25px auto;
}

/* MESSAGE */

.message{
    background:#fff3cd;
    color:#856404;
    padding:15px;
    border-left:5px solid #ffc107;
    border-radius:8px;
    margin-bottom:20px;
    font-weight:600;
}

/* COUNT */

.result-count{
    margin-bottom:20px;
    color:#555;
    font-size:18px;
    font-weight:bold;
}

/* GRID */

.product-grid{
    display:grid;
    grid-template-columns:repeat(auto-fill,minmax(280px,1fr));
    gap:25px;
}

/* CARD */

.card{
    background:white;
    border-radius:15px;
    overflow:hidden;
    transition:.3s;
    box-shadow:0 3px 15px rgba(0,0,0,.12);
}

.card:hover{
    transform:translateY(-8px);
    box-shadow:0 10px 30px rgba(0,0,0,.18);
}

/* IMAGE AREA */

.image-box{
    background:#fff;
    height:280px;
    display:flex;
    justify-content:center;
    align-items:center;
    padding:15px;
    border-bottom:1px solid #eee;
}

.image-box img{
    max-width:100%;
    max-height:100%;
    object-fit:contain;
}

/* DETAILS */

.details{
    padding:18px;
}

.product-name{
    font-size:20px;
    font-weight:600;
    color:#212121;
    margin-bottom:10px;
    min-height:50px;
}

.price{
    color:#388e3c;
    font-size:28px;
    font-weight:bold;
    margin-bottom:10px;
}

.category{
    color:#777;
    margin-bottom:18px;
}

/* BUTTON */

.btn{
    width:100%;
    border:none;
    padding:12px;
    background:#ff9f00;
    color:white;
    border-radius:8px;
    cursor:pointer;
    font-size:16px;
    font-weight:bold;
}

.btn:hover{
    background:#fb8c00;
}

/* NO PRODUCT */

.no-product{
    background:white;
    padding:80px;
    text-align:center;
    border-radius:15px;
    box-shadow:0 2px 10px rgba(0,0,0,.1);
}

.no-product h2{
    color:#e53935;
    margin-bottom:10px;
}

.no-product p{
    color:#666;
}

/* HOME BUTTON */

.bottom{
    text-align:center;
    margin-top:35px;
}

.home-btn{
    display:inline-block;
    padding:12px 30px;
    background:#2874f0;
    color:white;
    text-decoration:none;
    border-radius:8px;
    font-weight:bold;
}

.home-btn:hover{
    background:#0d5be1;
}

</style>

</head>

<body>

<div class="header">
    <div class="logo">Flipkart Clone</div>
    <div class="search-title">Search Results</div>
</div>

<div class="container">

<%
if(msg!=null){
%>

<div class="message">
    <%=msg%>
</div>
<%
}
%>

<%
if(products!=null && !products.isEmpty()){
%>

<div class="result-count">
    <%=products.size()%> Product(s) Found
</div>

<div class="product-grid">

<%
for(Flipkart_Dto p : products){
%>

<div class="card">

```
<div class="image-box">
    <img src="<%=p.getImage()%>" alt="Product">
</div>

<div class="details">

    <div class="product-name">
        <%=p.getName()%>
    </div>

    <div class="price">
        ₹<%=String.format("%.0f",p.getPrice())%>
    </div>

    <div class="category">
        Category : <%=p.getCategory()%>
    </div>

    <form action="productDetails.jsp" method="get">
    <input type="hidden" name="id" value="<%=p.getId()%>">
    <button class="btn">View Product</button>
</form>

</div>
```

</div>

<%
}
%>

</div>

<%
}else{
%>

<div class="no-product">
    <h2>No Products Found</h2>
    <p>Try searching for another product.</p>
</div>

<%
}
%>

<div class="bottom">
    <a href="intro.jsp" class="home-btn">
        Back To Home
    </a>
</div>

</div>

</body>
</html>
