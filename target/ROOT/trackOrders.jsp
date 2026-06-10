<%@page import="java.util.List"%>
<%@page import="com.pst.flip.DTO.OrderDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
List<OrderDTO> orders =
(List<OrderDTO>)request.getAttribute("orders");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Track Orders</title>

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Segoe UI',sans-serif;
}

body{
    background:#f1f3f6;
    padding:40px 20px;
}

.container{
    max-width:1100px;
    margin:auto;
}

.page-title{
    text-align:center;
    font-size:38px;
    color:#2874f0;
    margin-bottom:35px;
    font-weight:700;
}

.order-card{
    background:white;
    border-radius:18px;
    padding:25px;
    margin-bottom:25px;

    box-shadow:
    0 8px 20px rgba(0,0,0,.08);

    transition:.3s;
}

.order-card:hover{
    transform:translateY(-4px);

    box-shadow:
    0 12px 30px rgba(0,0,0,.12);
}

.order-header{
    display:flex;
    justify-content:space-between;
    align-items:center;
    flex-wrap:wrap;

    margin-bottom:20px;
}

.order-id{
    font-size:22px;
    font-weight:700;
    color:#333;
}

.order-date{
    color:#777;
    font-size:14px;
}

.order-body{
    display:grid;
    grid-template-columns:repeat(auto-fit,minmax(220px,1fr));
    gap:20px;
}

.info-box{
    background:#fafafa;
    padding:15px;
    border-radius:12px;
}

.info-title{
    color:#888;
    font-size:13px;
    margin-bottom:8px;
}

.info-value{
    font-size:18px;
    font-weight:600;
    color:#222;
}

.status{
    display:inline-block;
    padding:10px 18px;
    border-radius:30px;
    font-weight:600;
    color:white;
}

.placed{
    background:#2196f3;
}

.packed{
    background:#ff9800;
}

.shipped{
    background:#673ab7;
}

.delivery{
    background:#009688;
}

.delivered{
    background:#4caf50;
}

.cancelled{
    background:#f44336;
}

.progress{
    margin-top:25px;
}

.progress-title{
    margin-bottom:15px;
    font-weight:600;
    color:#444;
}

.timeline{
    display:flex;
    justify-content:space-between;
    position:relative;
}

.timeline::before{
    content:"";
    position:absolute;
    top:14px;
    left:0;
    width:100%;
    height:4px;
    background:#ddd;
    z-index:0;
}

.step{
    position:relative;
    z-index:2;
    text-align:center;
    flex:1;
}

.circle{
    width:30px;
    height:30px;
    border-radius:50%;
    background:#ddd;
    margin:auto;
}

.active .circle{
    background:#4caf50;
}

.step p{
    margin-top:8px;
    font-size:12px;
}

.empty{
    background:white;
    padding:60px;
    text-align:center;
    border-radius:20px;
    box-shadow:0 5px 15px rgba(0,0,0,.08);
}

.empty h2{
    color:#666;
}

@media(max-width:768px){

    .page-title{
        font-size:28px;
    }

    .order-header{
        flex-direction:column;
        align-items:flex-start;
        gap:10px;
    }

    .timeline{
        overflow-x:auto;
        gap:30px;
    }
}

</style>
</head>

<body>

<div class="container">

<h1 class="page-title">
    📦 Track Your Orders
</h1>

<%
if(orders != null && !orders.isEmpty()){

for(OrderDTO o : orders){

String status = o.getOrderStatus();

int step = 1;

if("Packed".equalsIgnoreCase(status))
    step = 2;
else if("Shipped".equalsIgnoreCase(status))
    step = 3;
else if("Out For Delivery".equalsIgnoreCase(status))
    step = 4;
else if("Delivered".equalsIgnoreCase(status))
    step = 5;
%>

<div class="order-card">

    <div class="order-header">

        <div>
            <div class="order-id">
                Order #<%=o.getOrderId()%>
            </div>

            <div class="order-date">
                <%=o.getOrderDate()%>
            </div>
        </div>

        <div>

           <span class="status
<%=status.equalsIgnoreCase("PLACED")?"placed":
   status.equalsIgnoreCase("Packed")?"packed":
   status.equalsIgnoreCase("Shipped")?"shipped":
   status.equalsIgnoreCase("Out For Delivery")?"delivery":
   status.equalsIgnoreCase("Delivered")?"delivered":
   "cancelled"%>">
               <%=status%>

            </span>

        </div>

    </div>

 <div class="order-body">

    <div class="info-box">
        <div class="info-title">Product Name</div>
        <div class="info-value">
            <%=o.getProductName()%>
        </div>
    </div>

    <div class="info-box">
        <div class="info-title">Payment Mode</div>
        <div class="info-value">
            <%=o.getPaymentMode()%>
        </div>
    </div>

    <div class="info-box">
        <div class="info-title">Delivery Address</div>
        <div class="info-value">
            <%=o.getAddress()%>
        </div>
    </div>

</div>

    <div class="progress">

        <div class="progress-title">
            Order Progress
        </div>

        <div class="timeline">

          <div class="step <%=step >= 1 ? "active" : ""%>">
    <div class="circle"></div>
    <p>Placed</p>
</div>

<div class="step <%=step >= 2 ? "active" : ""%>">
    <div class="circle"></div>
    <p>Packed</p>
</div>

<div class="step <%=step >= 3 ? "active" : ""%>">
    <div class="circle"></div>
    <p>Shipped</p>
</div>

<div class="step <%=step >= 4 ? "active" : ""%>">
    <div class="circle"></div>
    <p>Out For Delivery</p>
</div>

<div class="step <%=step >= 5 ? "active" : ""%>">
    <div class="circle"></div>
    <p>Delivered</p>
</div>
            

        </div>

    </div>

</div>

<%
}
}else{
%>

<div class="empty">

    <h2>
        No Orders Found 📦
    </h2>

</div>

<%
}
%>

</div>

</body>
</html>