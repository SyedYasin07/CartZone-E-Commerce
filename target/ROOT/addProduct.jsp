<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" type="image/ico" href="images/favicon.ico">
<title>Add Products</title>
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
    justify-content:center;
    align-items:center;

    background:
    linear-gradient(
    135deg,
    #2874f0,
    #0d47a1
    );

    padding:30px;
}

/* Product Form Card */
form{
    width:650px;

    background:white;

    padding:45px;

    border-radius:25px;

    box-shadow:
    0 25px 60px rgba(0,0,0,.2);

    animation:fadeUp .6s ease;
}

/* Title */
form::before{
    content:"📦 Add New Product";

    display:block;

    text-align:center;

    font-size:34px;
    font-weight:700;

    color:#1565c0;

    margin-bottom:35px;
}

/* Inputs */
input{
    width:100%;

    padding:15px;

    margin-top:10px;
    margin-bottom:22px;

    border:2px solid #e2e8f0;

    border-radius:14px;

    font-size:15px;

    background:#fafbfc;

    transition:.3s;
}

input:focus{
    outline:none;

    border-color:#2874f0;

    background:white;

    box-shadow:
    0 0 0 5px rgba(40,116,240,.12);
}

/* Button */
button{
    width:100%;

    padding:16px;

    border:none;

    border-radius:14px;

    background:
    linear-gradient(
    135deg,
    #2874f0,
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
    0 15px 30px rgba(40,116,240,.35);
}

button:active{
    transform:scale(.98);
}

/* Animation */
@keyframes fadeUp{
    from{
        opacity:0;
        transform:translateY(40px);
    }

    to{
        opacity:1;
        transform:translateY(0);
    }
}</style>
<body>
<form action="AddProductServlet" method="post">

Product Name:
<input type="text" name="name"><br><br>

Price:
<input type="number" name="price"><br><br>

Image URL:
<input type="text" name="image"><br><br>

Category:
<input type="text" name="category"><br><br>

<button type="submit">
Add Product
</button>

</form>

</body>
</html>