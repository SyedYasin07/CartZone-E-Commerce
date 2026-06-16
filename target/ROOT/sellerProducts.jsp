<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" type="image/ico" href="images/favicon.ico">
<title>SellProduct</title>
</head>
<style>*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Segoe UI',sans-serif;
}

body{
    background:#eef2f7;
    padding:40px;
}

h1{
    text-align:center;
    color:#1e293b;
    margin-bottom:40px;
    font-size:38px;
    font-weight:700;
}

div{
    background:#fff;
    max-width:1000px;
    margin:25px auto;
    padding:30px;

    border-radius:20px;

    box-shadow:
    0 10px 30px rgba(0,0,0,0.08);

    transition:.3s;
}

div:hover{
    transform:translateY(-5px);

    box-shadow:
    0 20px 40px rgba(0,0,0,0.12);
}

img{
    width:220px;
    height:220px;

    object-fit:cover;

    border-radius:15px;

    display:block;
    margin-bottom:20px;
}

h3{
    color:#111827;
    font-size:28px;
    margin-bottom:10px;
}

p{
    color:#64748b;
    font-size:18px;
    margin-bottom:8px;
}

input[type="text"]{
    width:100%;
    padding:14px;

    border:1px solid #dbe2ea;
    border-radius:12px;

    margin-top:8px;
    margin-bottom:18px;

    font-size:15px;

    transition:.3s;
}

input[type="text"]:focus{
    outline:none;

    border-color:#2563eb;

    box-shadow:
    0 0 0 4px rgba(37,99,235,.12);
}

button{
    border:none;
    cursor:pointer;

    padding:13px 24px;

    border-radius:12px;

    font-size:15px;
    font-weight:600;

    transition:.3s;
}

form:first-of-type button{
    background:#ef4444;
    color:white;
}

form:first-of-type button:hover{
    background:#dc2626;
}

form:last-of-type button{
    background:#2563eb;
    color:white;
}

form:last-of-type button:hover{
    background:#1d4ed8;
}

form{
    margin-top:15px;
}

hr{
    display:none;
}</style>
<body>
<%@ page import="java.util.List" %>
<%@ page import="com.pst.flip.DTO.Flipkart_Dto" %>

<%
List<Flipkart_Dto> products =
(List<Flipkart_Dto>) request.getAttribute("products");
%>

<h1>My Products</h1>

<%
for(Flipkart_Dto p : products){
%>

<div>

    <img src="<%= p.getImage() %>" width="120">

    <h3><%= p.getName() %></h3>

    <p>₹<%= p.getPrice() %></p>

    <p><%= p.getCategory() %></p>

    <form action="deleteProduct" method="post">

        <input type="hidden"
               name="productId"
               value="<%= p.getId() %>">

        <button type="submit">
            Delete Product
        </button>

    </form>
    <form action="updateProduct" method="post">

<input type="hidden"
       name="id"
       value="<%= p.getId() %>">

Name:
<input type="text"
       name="name"
       value="<%= p.getName() %>">

Price:
<input type="text"
       name="price"
       value="<%= p.getPrice() %>">

Image:
<input type="text"
       name="image"
       value="<%= p.getImage() %>">

Category:
<input type="text"
       name="category"
       value="<%= p.getCategory() %>">

<button type="submit">
Update
</button>

</form>

</div>

<hr>
<%
}
%>

</body>
</html>