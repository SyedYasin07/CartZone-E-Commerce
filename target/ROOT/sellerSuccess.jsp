<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" type="image/png" href="images/zone.png">
<title>sellerSuccess</title>
</head>
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
    flex-direction:column;
    justify-content:center;
    align-items:center;

    background:
    linear-gradient(
    135deg,
    #00c853,
    #009624
    );

    overflow:hidden;
}

/* Success Card */
h1{
    background:white;

    padding:40px 60px;

    border-radius:25px 25px 0 0;

    color:#00a63e;

    font-size:38px;
    font-weight:700;

    text-align:center;

    box-shadow:
    0 20px 50px rgba(0,0,0,.15);

    position:relative;
}

/* Success Tick */
h1::before{
    content:"✓";

    display:flex;
    justify-content:center;
    align-items:center;

    width:100px;
    height:100px;

    background:white;

    border-radius:50%;

    color:#00c853;

    font-size:55px;
    font-weight:bold;

    position:absolute;

    top:-60px;
    left:50%;

    transform:translateX(-50%);

    box-shadow:
    0 10px 30px rgba(0,0,0,.12);
}

a{
    background:white;

    padding:18px 35px;

    color:#00a63e;

    text-decoration:none;

    font-size:17px;
    font-weight:600;

    border-radius:0 0 25px 25px;

    transition:.3s;

    box-shadow:
    0 20px 50px rgba(0,0,0,.15);
}

a:hover{
    background:#f5f5f5;

    transform:translateY(-3px);
}

/* Floating Circles */
body::before{
    content:"";

    width:350px;
    height:350px;

    border-radius:50%;

    background:rgba(255,255,255,.08);

    position:absolute;

    top:-120px;
    right:-120px;
}

body::after{
    content:"";

    width:250px;
    height:250px;

    border-radius:50%;

    background:rgba(255,255,255,.08);

    position:absolute;

    bottom:-80px;
    left:-80px;
}
</style>
<body>

<h1>
Seller Registration Successful
</h1>

<a href="intro.jsp">
Back To Home
</a>

</body>
</html>