<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" type="image/ico" href="images/favicon.ico">
<title>Login Failed</title>

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
        rgba(0,0,0,.55),
        rgba(0,0,0,.55)
    ),
    url('https://images.unsplash.com/photo-1556742049-0cfed4f6a45d?w=1600');

    background-size:cover;
    background-position:center;
    background-repeat:no-repeat;

    padding:20px;
}

.container{
    width:100%;
    max-width:500px;

    background:rgba(255,255,255,.97);
    backdrop-filter:blur(12px);

    padding:80px 40px 40px;

    border-radius:25px;

    text-align:center;

    position:relative;

    box-shadow:
    0 20px 60px rgba(0,0,0,.25);

    animation:fadeUp .6s ease;
}

.icon{
    width:100px;
    height:100px;

    border-radius:50%;

    background:linear-gradient(
        135deg,
        #ff5252,
        #d32f2f
    );

    color:white;

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
    0 10px 30px rgba(255,82,82,.4);
}

h1{
    color:#d32f2f;
    margin-bottom:15px;
    font-size:34px;
}

p{
    color:#555;
    font-size:17px;
    line-height:1.7;
    margin-bottom:35px;
}

.btn-group{
    display:flex;
    justify-content:center;
    gap:15px;
    flex-wrap:wrap;
}

.btn{
    text-decoration:none;

    padding:14px 28px;

    border-radius:12px;

    font-size:15px;
    font-weight:600;

    transition:.3s;
}

.login-btn{
    background:linear-gradient(
        135deg,
        #2874f0,
        #0b57d0
    );

    color:white;
}

.register-btn{
    background:#f5f5f5;
    color:#333;
    border:1px solid #ddd;
}

.btn:hover{
    transform:translateY(-3px);

    box-shadow:
    0 10px 25px rgba(0,0,0,.15);
}

@keyframes fadeUp{
    from{
        opacity:0;
        transform:translateY(40px);
    }
    to{
        opacity:1;
        transform:translateY(0);
    }
}

@media(max-width:600px){

    .container{
        padding:70px 25px 30px;
    }

    h1{
        font-size:28px;
    }

    p{
        font-size:15px;
    }

    .btn{
        width:100%;
    }
}
</style>
</head>

<body>

<div class="container">

    <div class="icon">✕</div>

    <h1>Login Failed</h1>

    <p>
        Seller account not found in our system.
        Please register as a seller before attempting to log in.
    </p>

    <div class="btn-group">

        <a href="sellerLogin.jsp" class="btn login-btn">
            Back to Login
        </a>

        <a href="sellerRegister.jsp" class="btn register-btn">
            Register Seller
        </a>

    </div>

</div>

</body>
</html>