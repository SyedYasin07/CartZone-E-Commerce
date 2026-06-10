<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Seller Registration Failed</title>

<style>
*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Segoe UI',sans-serif;
}

body{
    min-height:100vh;

    display:flex;
    justify-content:center;
    align-items:center;

    background:
    linear-gradient(
    135deg,
    #ff5252,
    #c62828
    );

    overflow:hidden;
}

/* Error Card */
.container{
    width:500px;

    background:white;

    padding:70px 40px 40px;

    text-align:center;

    border-radius:25px;

    position:relative;

    box-shadow:
    0 25px 60px rgba(0,0,0,.2);

    animation:slideUp .6s ease;
}

/* Error Icon */
.container::before{
    content:"✕";

    width:100px;
    height:100px;

    background:#ff5252;

    color:white;

    border-radius:50%;

    display:flex;
    justify-content:center;
    align-items:center;

    font-size:50px;
    font-weight:bold;

    position:absolute;

    top:-50px;
    left:50%;

    transform:translateX(-50%);

    box-shadow:
    0 10px 25px rgba(255,82,82,.4);
}

h1{
    color:#d32f2f;

    margin-bottom:15px;

    font-size:34px;
}

p{
    color:#666;

    font-size:17px;

    line-height:1.6;

    margin-bottom:30px;
}

a{
    display:inline-block;

    padding:14px 30px;

    background:
    linear-gradient(
    135deg,
    #2874f0,
    #0b57d0
    );

    color:white;

    text-decoration:none;

    border-radius:12px;

    font-size:16px;
    font-weight:600;

    transition:.3s;
}

a:hover{
    transform:translateY(-3px);

    box-shadow:
    0 12px 25px rgba(40,116,240,.35);
}

/* Background Shapes */
body::before{
    content:"";

    width:350px;
    height:350px;

    background:rgba(255,255,255,.08);

    border-radius:50%;

    position:absolute;

    top:-120px;
    right:-120px;
}

body::after{
    content:"";

    width:250px;
    height:250px;

    background:rgba(255,255,255,.08);

    border-radius:50%;

    position:absolute;

    bottom:-80px;
    left:-80px;
}

@keyframes slideUp{
    from{
        opacity:0;
        transform:translateY(40px);
    }

    to{
        opacity:1;
        transform:translateY(0);
    }
}
</style>

</head>

<body>

<div class="container">

    <h1>Registration Failed ❌</h1>

    <p>Something went wrong while registering your seller account.</p>

    <a href="sellerRegister.jsp">Try Again</a>

</div>

</body>
</html>