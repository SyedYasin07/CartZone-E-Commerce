
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" type="image/ico" href="images/favicon.ico">
<title>Customer Care</title>
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
    rgba(0,0,0,.55),
    rgba(0,0,0,.55)),
    url('https://images.unsplash.com/photo-1516321318423-f06f85e504b3?w=1600');

    background-size:cover;
    background-position:center;

    display:flex;
    justify-content:center;
    align-items:center;

    padding:40px;
}

.container{
    width:650px;

    background:rgba(255,255,255,.96);

    backdrop-filter:blur(15px);

    padding:40px;

    border-radius:25px;

    box-shadow:
    0 20px 50px rgba(0,0,0,.25);

    animation:fadeUp .6s ease;
}

.title{
    text-align:center;

    color:#2874f0;

    font-size:35px;

    font-weight:700;

    margin-bottom:10px;
}

.subtitle{
    text-align:center;

    color:#666;

    margin-bottom:30px;
}

.success-box{
    background:#e8f5e9;

    color:#2e7d32;

    padding:15px;

    border-radius:10px;

    margin-bottom:20px;

    border-left:5px solid #2e7d32;

    font-weight:600;
}

label{
    display:block;

    margin-bottom:8px;

    font-weight:600;

    color:#444;
}

input,
textarea{
    width:100%;

    padding:15px;

    border:2px solid #e0e0e0;

    border-radius:12px;

    margin-bottom:20px;

    font-size:15px;

    transition:.3s;
}

input:focus,
textarea:focus{
    outline:none;

    border-color:#2874f0;

    box-shadow:
    0 0 0 4px rgba(40,116,240,.15);
}

textarea{
    resize:none;

    height:140px;
}

button{
    width:100%;

    padding:16px;

    border:none;

    border-radius:12px;

    background:
    linear-gradient(
    135deg,
    #2874f0,
    #0b57d0);

    color:white;

    font-size:17px;

    font-weight:600;

    cursor:pointer;

    transition:.3s;
}

button:hover{
    transform:translateY(-3px);

    box-shadow:
    0 12px 25px rgba(40,116,240,.35);
}

.help-box{
    margin-top:25px;

    background:#f8f9fa;

    padding:20px;

    border-radius:12px;

    text-align:center;
}

.help-box h4{
    color:#333;

    margin-bottom:10px;
}

.help-box p{
    color:#666;
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



<div class="container">

    <h1 class="title">
        🎧 Customer Care
    </h1>

    <p class="subtitle">
        Raise your complaint or query and our support team will assist you.
    </p>

    <%
    String success =
    (String)request.getAttribute("successMessage");

    if(success != null){
    %>

    <div class="success-box">
        ✅ <%= success %>
    </div>

    <%
    }
    %>

    <form action="addTicket" method="post">

        <label>Subject</label>

        <input type="text"
               name="subject"
               placeholder="Enter complaint subject"
               required>

        <label>Message</label>

        <textarea
            name="message"
            placeholder="Describe your issue here..."
            required></textarea>

        <button type="submit">
            Submit Ticket
        </button>

    </form>

    <div class="help-box">

        <h4>Need Immediate Assistance?</h4>

        <p>
            Contact our support team 24×7 for order, payment,
            refund and seller related queries.
        </p>

    </div>

</div>
</body>
</html>
</body>
</html>