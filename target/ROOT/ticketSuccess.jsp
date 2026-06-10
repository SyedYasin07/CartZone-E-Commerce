
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ticket Submitted</title>

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
    background:#f1f3f6;
    padding:20px;
}

.success-card{
    width:100%;
    max-width:550px;
    background:white;
    border-radius:20px;
    padding:40px;
    text-align:center;
    box-shadow:0 10px 30px rgba(0,0,0,.1);
    animation:fadeIn .5s ease;
}

@keyframes fadeIn{
    from{
        opacity:0;
        transform:translateY(20px);
    }
    to{
        opacity:1;
        transform:translateY(0);
    }
}

.icon{
    width:90px;
    height:90px;
    margin:auto;
    border-radius:50%;
    background:#e8f5e9;
    display:flex;
    align-items:center;
    justify-content:center;
    font-size:45px;
    color:#2e7d32;
    margin-bottom:20px;
}

h1{
    color:#2e7d32;
    margin-bottom:10px;
}

.message{
    color:#666;
    line-height:1.7;
    margin-bottom:25px;
}

.ticket-box{
    background:#f8f9fa;
    border-left:5px solid #2874f0;
    padding:18px;
    border-radius:10px;
    margin-bottom:25px;
}

.ticket-title{
    font-weight:600;
    color:#444;
}

.ticket-id{
    color:#2874f0;
    font-size:20px;
    font-weight:bold;
    margin-top:5px;
}

.btn-group{
    display:flex;
    justify-content:center;
    gap:15px;
    flex-wrap:wrap;
}

.btn{
    text-decoration:none;
    padding:12px 22px;
    border-radius:8px;
    font-weight:600;
    transition:.3s;
}

.primary{
    background:#2874f0;
    color:white;
}

.primary:hover{
    background:#0d5be1;
}

.secondary{
    background:#eceff1;
    color:#333;
}

.secondary:hover{
    background:#dfe3e6;
}

.footer-text{
    margin-top:20px;
    color:#888;
    font-size:14px;
}

@media(max-width:600px){

    .success-card{
        padding:25px;
    }

    h1{
        font-size:24px;
    }

    .btn{
        width:100%;
    }
}

</style>
</head>

<body>

<div class="success-card">

    <div class="icon">
        ✓
    </div>

    <h1>Ticket Submitted Successfully</h1>

    <p class="message">
        Thank you for contacting support.
        Your issue has been registered successfully and our team
        will review it shortly.
    </p>

    <div class="ticket-box">
        <div class="ticket-title">
            Support Request Status
        </div>

        <div class="ticket-id">
            OPEN
        </div>
    </div>

    <div class="btn-group">

        <a href="helpCenter.jsp" class="btn secondary">
            Raise Another Ticket
        </a>

        <a href="intro.jsp" class="btn primary">
            Back To Home
        </a>

    </div>

    <div class="footer-text">
        Our support team usually responds within 24 hours.
    </div>

</div>

</body>
</html>

