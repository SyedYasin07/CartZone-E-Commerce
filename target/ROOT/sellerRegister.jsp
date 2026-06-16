<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" type="image/ico" href="images/favicon.ico">
<title>becomeSeller</title>
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

    background:
    linear-gradient(
    135deg,
    rgba(13,71,161,.92),
    rgba(25,118,210,.92)
    ),
    url('https://images.unsplash.com/photo-1556742049-0cfed4f6a45d?w=1600');

    background-size:cover;
    background-position:center;

    display:flex;
    justify-content:center;
    align-items:center;

    padding:40px;
}

form{
    width:650px;

    background:rgba(255,255,255,.96);

    backdrop-filter:blur(20px);

    padding:45px;

    border-radius:25px;

    box-shadow:
    0 25px 60px rgba(0,0,0,.25);

    animation:fadeUp .7s ease;
}

form::before{
    content:"Become a Seller";
    display:block;

    text-align:center;

    font-size:34px;
    font-weight:700;

    color:#1565c0;

    margin-bottom:35px;
}

input,
textarea{
    width:100%;

    padding:15px;

    margin-top:10px;
    margin-bottom:20px;

    border:2px solid #e2e8f0;

    border-radius:14px;

    background:#fafbfc;

    font-size:15px;

    transition:.3s;
}

input:focus,
textarea:focus{
    outline:none;

    border-color:#1976d2;

    background:white;

    box-shadow:
    0 0 0 5px rgba(25,118,210,.12);
}

textarea{
    height:120px;
    resize:none;
}

button{
    width:100%;

    padding:16px;

    border:none;

    border-radius:14px;

    background:
    linear-gradient(
    135deg,
    #1976d2,
    #0d47a1
    );

    color:white;

    font-size:17px;
    font-weight:600;

    cursor:pointer;

    transition:.3s;
}

button:hover{
    transform:translateY(-3px);

    box-shadow:
    0 15px 30px rgba(25,118,210,.35);
}

button:active{
    transform:scale(.98);
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
</style>
<body>

	<form action="sellerRegister" method="post">

    Name :
   <input type="text" name="name" required><br><br>

    Email :
   <input type="email" name="email" required><br><br>

    Phone :
    <input type="text" name="phone" required><br><br>

    Business Name :
   <input type="text" name="business" required><br><br>

    GST Number :
    <input type="text" name="gst" required><br><br>

    Address :
   <textarea name="address" required></textarea><br><br>

    <button type="submit">
        Register Seller
    </button>

</form>
</body>
</html>