<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" type="image/png" href="images/zone.png">
<title>Seller Dashboard</title>

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Segoe UI',sans-serif;
}

body{
    min-height:100vh;
    background:#f4f7fc;
    display:flex;
    justify-content:center;
    align-items:center;
    padding:30px;
}

/* Main Dashboard Card */
.card{
    width:900px;
    background:white;
    border-radius:25px;
    overflow:hidden;
    box-shadow:0 20px 50px rgba(0,0,0,0.12);
}

/* Header */
.header{
    background:linear-gradient(135deg,#2874f0,#0d47a1);
    color:white;
    padding:40px;
    text-align:center;
}

.header h1{
    font-size:38px;
    margin-bottom:10px;
}

.header p{
    opacity:0.9;
    font-size:16px;
}

/* Dashboard Content */
.dashboard-content{
    padding:40px;
}

.section-title{
    text-align:center;
    color:#1e293b;
    margin-bottom:30px;
    font-size:24px;
}

/* Action Cards */
.actions{
    display:flex;
    justify-content:center;
    gap:30px;
    flex-wrap:wrap;
}

.action-card{
    width:280px;
    text-decoration:none;
    color:#1e293b;
    background:white;
    border:2px solid #eef2f7;
    border-radius:20px;
    padding:35px 25px;
    text-align:center;
    transition:.3s;
}

.action-card:hover{
    transform:translateY(-8px);
    border-color:#2874f0;
    box-shadow:0 15px 30px rgba(40,116,240,.15);
}

.icon{
    font-size:55px;
    margin-bottom:15px;
}

.action-card h3{
    margin-bottom:10px;
    color:#2874f0;
}

.action-card p{
    color:#64748b;
    font-size:14px;
    line-height:1.5;
}

/* Footer */
.footer{
    padding:20px;
    text-align:center;
    background:#f8fafc;
    color:#64748b;
    font-size:14px;
}

</style>

</head>

<body>

<%
    // Integer sellerId = (Integer) session.getAttribute("sellerId");
%>

<div class="card">

    <div class="header">
        <h1>Seller Dashboard</h1>
        <p>Manage your products and grow your business</p>
    </div>

    <div class="dashboard-content">

        <h2 class="section-title">Product Management</h2>

        <div class="actions">

            <a href="addProduct.jsp" class="action-card">
                <div class="icon">➕</div>
                <h3>Add Product</h3>
                <p>Add new products to your store and make them available to customers.</p>
            </a>

            <a href="ViewSellerProductsServlet" class="action-card">
                <div class="icon">📦</div>
                <h3>View Products</h3>
                <p>Manage, update, and delete your existing products.</p>
            </a>

        </div>

    </div>

    <div class="footer">
        Seller Management Portal
    </div>

</div>

</body>
</html>