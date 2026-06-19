<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" type="image/png" href="images/zone.png">
<title>CartZone-Login</title>

<!-- Bootstrap 5 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Bootstrap Icons -->
<link rel="stylesheet"
href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

<style>

/* body{
    min-height:100vh;
    background:#f1f3f6;
    display:flex;
    justify-content:center;
    align-items:center;
    padding:20px;
}

.login-card{
    width:100%;
    max-width:900px;
    border:none;
    border-radius:15px;
    overflow:hidden;
    box-shadow:0 10px 30px rgba(0,0,0,0.15);
}

.left-panel{
    background:#2874f0;
    color:white;
    padding:60px 40px;
}

.left-panel h1{
    font-size:2.2rem;
    font-weight:bold;
}

.left-panel p{
    margin-top:20px;
    font-size:1rem;
    line-height:1.8;
}

.right-panel{
    background:white;
    padding:50px 40px;
}

.form-control{
    border:none;
    border-bottom:2px solid #d6d6d6;
    border-radius:0;
    padding:12px 5px;
}

.form-control:focus{
    box-shadow:none;
    border-bottom-color:#2874f0;
}

.login-btn{
    background:#fb641b;
    color:white;
    font-weight:600;
    padding:12px;
    border:none;
    width:100%;
    border-radius:8px;
    transition:0.3s;
}

.login-btn:hover{
    background:#e55b16;
    transform:translateY(-2px);
}

.register-link a{
    text-decoration:none;
    font-weight:600;
}

.register-link a:hover{
    text-decoration:underline;
}

.password-wrapper{
    position:relative;
}

.toggle-password{
    position:absolute;
    top:50%;
    right:10px;
    transform:translateY(-50%);
    cursor:pointer;
    color:#6c757d;
}

@media(max-width:768px){

    .left-panel{
        text-align:center;
        padding:40px 25px;
    }

    .right-panel{
        padding:35px 25px;
    }
} */
body{
    margin:0;
    height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;
    background:#f1f3f6;
    font-family:Arial, sans-serif;
}

.login-card{
    display:flex;
    width:850px;
    height:500px;
    border-radius:12px;
    overflow:hidden;
    box-shadow:0 10px 30px rgba(0,0,0,0.2);
}

/* LEFT PANEL */
.left-panel{
    width:40%;
    background:#2874f0;
    color:white;
    padding:40px;
    display:flex;
    flex-direction:column;
    justify-content:center;
}

.logo{
    width:120px;
    margin-bottom:20px;
}

.left-panel h2{
    font-size:28px;
    font-weight:700;
}

.left-panel p{
    margin-top:15px;
    font-size:14px;
    opacity:0.9;
    line-height:1.5;
}

.footer-note{
    margin-top:auto;
    font-size:12px;
    opacity:0.8;
}

/* RIGHT PANEL */
.right-panel{
    width:60%;
    background:white;
    padding:50px 40px;
}

.right-panel h3{
    margin-bottom:5px;
}

.subtext{
    font-size:13px;
    color:gray;
    margin-bottom:25px;
}

/* INPUTS */
.form-control{
    border:none;
    border-bottom:2px solid #ddd;
    border-radius:0;
    padding:10px;
    margin-bottom:25px;
}

.form-control:focus{
    box-shadow:none;
    border-bottom:2px solid #2874f0;
}

/* PASSWORD */
.password-box{
    position:relative;
}

.toggle-password{
    position:absolute;
    right:10px;
    top:12px;
    cursor:pointer;
}

/* BUTTON */
.login-btn{
    width:100%;
    background:#fb641b;
    color:white;
    border:none;
    padding:12px;
    font-weight:600;
    border-radius:6px;
}

.login-btn:hover{
    background:#e85a16;
}

/* OTP BUTTON */
.otp-btn{
    width:100%;
    margin-top:10px;
    padding:12px;
    border:1px solid #ddd;
    background:white;
    font-weight:600;
}

/* DIVIDER */
.divider{
    text-align:center;
    margin:15px 0;
    color:gray;
}

/* REGISTER */
.register-text{
    text-align:center;
    margin-top:20px;
    font-size:14px;
}

.register-text a{
    color:#2874f0;
    text-decoration:none;
    font-weight:600;
}
@media (max-width:768px){

    .login-card{
        flex-direction:column;
        height:auto;
    }

    .left-panel{
        width:100%;
        text-align:center;
        padding:30px 20px;
    }

    .right-panel{
        width:100%;
        padding:30px 20px;
    }

    .logo{
        width:90px;
        margin-bottom:15px;
    }

    .left-panel h2{
        font-size:22px;
    }

    .left-panel p{
        font-size:13px;
    }
}

/* SMALL MOBILE */
@media (max-width:480px){

    .right-panel{
        padding:20px;
    }

    .login-card{
        border-radius:10px;
    }

    .form-control{
        font-size:14px;
    }

    .login-btn{
        padding:10px;
    }
}
</style>

</head>
<body>

<div class="login-wrapper">

    <div class="login-card">

        <!-- LEFT BLUE PANEL -->
        <div class="left-panel">

            <img src="images/zone.png" class="logo" alt="CartZone Logo">

            <h2>Login</h2>

            <p>
                Get access to your Orders,<br>
                Wishlist and Recommendations
            </p>

            <div class="footer-note">
                CartZone Account
            </div>

        </div>

        <!-- RIGHT FORM PANEL -->
        <div class="right-panel">

            <h3>Sign in</h3>

            <p class="subtext">
                Use your email or mobile number
            </p>

            <form action="<%=request.getContextPath()%>/login" method="post">

                <input type="email"
                       class="form-control"
                       name="email"
                       placeholder="Email or Mobile Number"
                       required>

                <div class="password-box">

                    <input type="password"
                           class="form-control"
                           id="password"
                           name="password"
                           placeholder="Password"
                           required>

                    <i class="bi bi-eye-slash toggle-password"
                       id="togglePassword"></i>

                </div>

                <button type="submit" class="login-btn">
                    Login
                </button>

            </form>
<!-- 
            <div class="divider">
                OR
            </div>

            <button class="otp-btn">
                Request OTP
            </button> -->

            <p class="register-text">
                New to CartZone?
                <a href="Register.jsp">Create an account</a>
            </p>

        </div>

    </div>

</div>
</body>
</html>