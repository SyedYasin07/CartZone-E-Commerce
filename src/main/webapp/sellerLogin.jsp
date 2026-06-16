<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <link rel="icon" type="image/ico" href="images/favicon.ico">
<title>Seller Login</title>
</head>
<style>*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Segoe UI',sans-serif;
}

body{
    min-height:100vh;
    background:
    linear-gradient(
        rgba(0,0,0,0.55),
        rgba(0,0,0,0.55)
    ),
    url('https://images.unsplash.com/photo-1556742049-0cfed4f6a45d?w=1600');
    
    background-size:cover;
    background-position:center;

    display:flex;
    justify-content:center;
    align-items:center;
}

form{
    width:420px;
    background:rgba(255,255,255,0.95);
    backdrop-filter:blur(15px);

    padding:45px;
    border-radius:20px;

    box-shadow:
    0 15px 40px rgba(0,0,0,.25);

    animation:slideUp .6s ease;
}

h2{
    position:absolute;
    top:80px;
    color:white;
    font-size:40px;
    font-weight:700;
    letter-spacing:1px;
}

input{
    width:100%;
    padding:15px;

    border:none;
    outline:none;

    border-radius:12px;

    background:#f5f7fb;

    margin-top:10px;
    margin-bottom:25px;

    font-size:15px;

    transition:.3s;
}

input:focus{
    background:white;
    box-shadow:
    0 0 0 3px rgba(40,116,240,.2);
}

button{
    width:100%;
    padding:15px;

    border:none;
    border-radius:12px;

    background:linear-gradient(
    135deg,
    #2874f0,
    #0b57d0
    );

    color:white;
    font-size:16px;
    font-weight:600;

    cursor:pointer;

    transition:.3s;
}

button:hover{
    transform:translateY(-3px);
    box-shadow:
    0 10px 20px rgba(40,116,240,.4);
}

@keyframes slideUp{
    from{
        opacity:0;
        transform:translateY(30px);
    }
    to{
        opacity:1;
        transform:translateY(0);
    }
}</style>
<body>

<h2>Seller Login</h2>

<form action="sellerLogin" method="post">

    Email:
    <input type="text" name="email"><br><br>

    <button type="submit">Login</button>

</form>

</body>
</html>