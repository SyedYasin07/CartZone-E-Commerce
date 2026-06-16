<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" type="image/ico" href="images/favicon.ico">
<title>Login Failed</title>

<style>
    body{
        margin:0;
        padding:0;
        font-family:Arial,sans-serif;
        background-color:#f1f3f6;

        display:flex;
        justify-content:center;
        align-items:center;
        height:100vh;
    }

    .container{
        background:white;
        padding:40px;
        border-radius:12px;
        box-shadow:0 4px 15px rgba(0,0,0,0.2);
        text-align:center;
        width:350px;
    }

    h1{
        color:#d32f2f;
        margin-bottom:20px;
    }

    p{
        color:#555;
        font-size:18px;
        margin-bottom:25px;
    }

    a{
        display:inline-block;
        text-decoration:none;
        background-color:#2874f0;
        color:white;
        padding:12px 25px;
        border-radius:6px;
        transition:0.3s;
    }

    a:hover{
        background-color:#0d5fe5;
    }
</style>

</head>

<body>

<div class="container">

    <h1>❌ Login Failed</h1>

    <%
        String msg = request.getParameter("msg");

        if(msg == null){
            msg = "Invalid Email or Password.";
        }
    %>

    <p><%= msg %></p>

    <a href="Login.jsp">Try Again</a>

</div>

</body>
</html>