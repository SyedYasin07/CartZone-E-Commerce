<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" type="image/ico" href="images/favicon.ico">
<title>Contact Us</title>

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Segoe UI',sans-serif;
}

body{
    background:#f1f3f6;
    min-height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;
    padding:20px;
}

.contact-card{
    background:#fff;
    width:100%;
    max-width:800px;
    border-radius:20px;
    overflow:hidden;
    box-shadow:0 10px 25px rgba(0,0,0,.1);
}

.header{
    background:#2874f0;
    color:white;
    text-align:center;
    padding:35px;
}

.header h1{
    margin-bottom:10px;
}

.content{
    padding:35px;
}

.grid{
    display:grid;
    grid-template-columns:repeat(auto-fit,minmax(220px,1fr));
    gap:20px;
}

.card{
    background:#fafafa;
    padding:20px;
    border-radius:12px;
    text-align:center;
    transition:.3s;
}

.card:hover{
    transform:translateY(-5px);
}

.icon{
    font-size:40px;
    margin-bottom:10px;
}

.title{
    font-size:18px;
    font-weight:bold;
    margin-bottom:10px;
}

.info{
    color:#555;
}

.footer{
    text-align:center;
    padding:20px;
    background:#fafafa;
    color:#777;
}

</style>
</head>

<body>

<div class="contact-card">

    <div class="header">
        <h1>📧 Contact Us</h1>
        <p>We're here to help you</p>
    </div>

    <div class="content">

        <div class="grid">

            <div class="card">
                <div class="icon">📞</div>
                <div class="title">Phone Support</div>
                <div class="info">
                    +91 9876543210
                </div>
            </div>

            <div class="card">
                <div class="icon">📧</div>
                <div class="title">Email</div>
                <div class="info">
                    support@flipkartclone.com
                </div>
            </div>

            <div class="card">
                <div class="icon">📍</div>
                <div class="title">Address</div>
                <div class="info">
                    Mumbai, Maharashtra, India
                </div>
            </div>

            <div class="card">
                <div class="icon">🕒</div>
                <div class="title">Working Hours</div>
                <div class="info">
                    Mon - Sat<br>
                    9:00 AM - 6:00 PM
                </div>
            </div>

        </div>

    </div>

    <div class="footer">
        Thank you for shopping with us ❤️
    </div>

</div>

</body>
</html>