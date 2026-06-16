<%@page import="com.pst.flip.DTO.NotificationDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" type="image/ico" href="images/favicon.ico">
<title>Notifications</title>

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
        #f1f5f9,
        #dbeafe
    );

    padding:40px 20px;
}

.container{
    max-width:900px;
    margin:auto;
}

.header{
    text-align:center;
    margin-bottom:35px;
}

.header h1{
    color:#2874f0;
    font-size:38px;
    margin-bottom:10px;
}

.header p{
    color:#666;
    font-size:16px;
}

.notifications-box{
    background:white;
    border-radius:20px;
    overflow:hidden;

    box-shadow:
    0 15px 40px rgba(0,0,0,.08);
}

.notification-card{
    display:flex;
    align-items:center;
    gap:18px;

    padding:22px;

    border-bottom:1px solid #ececec;

    transition:.3s;
}

.notification-card:hover{
    background:#f8fbff;
    transform:translateX(5px);
}

.notification-card:last-child{
    border-bottom:none;
}

.icon{
    width:55px;
    height:55px;

    border-radius:50%;

    display:flex;
    justify-content:center;
    align-items:center;

    font-size:24px;

    background:#e8f1ff;
}

.message{
    flex:1;
}

.message h3{
    color:#222;
    font-size:17px;
    margin-bottom:5px;
}

.message p{
    color:#666;
    font-size:14px;
}

.empty{
    text-align:center;
    padding:60px 20px;
    color:#777;
}

.back-btn{
    display:inline-block;

    margin-top:25px;

    padding:12px 25px;

    background:#2874f0;

    color:white;

    text-decoration:none;

    border-radius:10px;

    transition:.3s;
}

.back-btn:hover{
    background:#0b57d0;
}

@media(max-width:768px){

    .header h1{
        font-size:30px;
    }

    .notification-card{
        padding:18px;
    }

    .icon{
        width:48px;
        height:48px;
        font-size:20px;
    }
}
</style>

</head>
<body>

<%
List<NotificationDTO> list =
(List<NotificationDTO>)request.getAttribute("notifications");
%>

<div class="container">

    <div class="header">
        <h1>🔔 Notifications</h1>
        <p>Stay updated with the latest offers, announcements and order updates.</p>
    </div>

    <div class="notifications-box">

        <%
        if(list != null && !list.isEmpty()){
            for(NotificationDTO n : list){
        %>

        <div class="notification-card">

            <div class="icon">
                🔔
            </div>

            <div class="message">
                <h3>New Notification</h3>
                <p><%= n.getMessage() %></p>
            </div>

        </div>

        <%
            }
        }else{
        %>

        <div class="empty">
            <h2>No Notifications Available</h2>
            <p>You are all caught up for now.</p>
        </div>

        <%
        }
        %>

    </div>

    <center>
        <a href="intro.jsp" class="back-btn">
            ← Back to Home
        </a>
    </center>

</div>

</body>
</html>