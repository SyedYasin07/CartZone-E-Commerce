<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Help Center</title>

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Segoe UI',sans-serif;
}

body{
    background:#f1f3f6;
    min-height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;
    padding:20px;
}

.help-container{
    width:100%;
    max-width:700px;
    background:#fff;
    border-radius:20px;
    overflow:hidden;
    box-shadow:0 10px 30px rgba(0,0,0,.1);
}

.header{
    background:#2874f0;
    color:white;
    text-align:center;
    padding:30px;
}

.header h1{
    font-size:32px;
    margin-bottom:10px;
}

.header p{
    opacity:.9;
    font-size:15px;
}

.form-section{
    padding:35px;
}

.form-group{
    margin-bottom:25px;
}

label{
    display:block;
    margin-bottom:10px;
    font-weight:600;
    color:#333;
}

select,
textarea{
    width:100%;
    border:1px solid #ddd;
    border-radius:10px;
    padding:14px;
    font-size:15px;
    outline:none;
    transition:.3s;
}

select:focus,
textarea:focus{
    border-color:#2874f0;
    box-shadow:0 0 8px rgba(40,116,240,.2);
}

textarea{
    resize:vertical;
    min-height:140px;
}

.submit-btn{
    width:100%;
    border:none;
    background:#2874f0;
    color:white;
    padding:15px;
    font-size:16px;
    font-weight:600;
    border-radius:10px;
    cursor:pointer;
    transition:.3s;
}

.submit-btn:hover{
    background:#1259d6;
}

.quick-help{
    background:#fafafa;
    border-top:1px solid #eee;
    padding:25px;
}

.quick-help h3{
    margin-bottom:15px;
    color:#333;
}

.help-grid{
    display:grid;
    grid-template-columns:repeat(auto-fit,minmax(150px,1fr));
    gap:15px;
}

.help-card{
    background:white;
    padding:15px;
    border-radius:12px;
    text-align:center;
    box-shadow:0 3px 10px rgba(0,0,0,.06);
    transition:.3s;
}

.help-card:hover{
    transform:translateY(-4px);
}

.help-card span{
    font-size:28px;
    display:block;
    margin-bottom:8px;
}

.help-card p{
    font-size:14px;
    color:#555;
}

@media(max-width:768px){

    .header h1{
        font-size:26px;
    }

    .form-section{
        padding:25px;
    }

    .help-grid{
        grid-template-columns:1fr 1fr;
    }
}

@media(max-width:500px){

    .help-grid{
        grid-template-columns:1fr;
    }

    .header{
        padding:25px 15px;
    }

    .header h1{
        font-size:22px;
    }
}

</style>
</head>

<body>

<div class="help-container">

    <div class="header">
        <h1>🎫 Help Center</h1>
        <p>Tell us about your issue and our support team will assist you.</p>
    </div>

    <div class="form-section">

        <form action="RaiseTicketController" method="post">

            <div class="form-group">
                <label>Issue Type</label>

                <select name="issueType" required>
                    <option value="">Select Issue</option>
                    <option>Order Not Delivered</option>
                    <option>Refund Issue</option>
                    <option>Payment Failed</option>
                    <option>Wrong Product Received</option>
                    <option>Damaged Product</option>
                    <option>Account Issue</option>
                </select>
            </div>

            <div class="form-group">
                <label>Describe Your Problem</label>

                <textarea
                    name="description"
                    placeholder="Please explain your issue in detail..."
                    required></textarea>
            </div>

            <button type="submit" class="submit-btn">
                Submit Ticket
            </button>

        </form>

    </div>

    <div class="quick-help">

        <h3>Quick Help Topics</h3>

        <div class="help-grid">

            <div class="help-card">
                <span>📦</span>
                <p>Track Order</p>
            </div>

            <div class="help-card">
                <span>💰</span>
                <p>Refund Status</p>
            </div>

            <div class="help-card">
                <span>🚚</span>
                <p>Delivery Issues</p>
            </div>

            <div class="help-card">
                <span>💳</span>
                <p>Payment Problems</p>
            </div>

        </div>

    </div>

</div>

</body>
</html>