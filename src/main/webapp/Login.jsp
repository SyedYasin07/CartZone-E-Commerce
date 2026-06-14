<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Flipkart Clone - Login</title>

<!-- Bootstrap 5 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Bootstrap Icons -->
<link rel="stylesheet"
href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

<style>

body{
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
}

</style>

</head>

<body>

<div class="card login-card">

    <div class="row g-0">

        <!-- Left Side -->
        <div class="col-md-5 left-panel d-flex flex-column justify-content-center">

            <h1>Login</h1>

            <p>
                Get access to your Orders, Wishlist and Recommendations.
            </p>

        </div>

        <!-- Right Side -->
        <div class="col-md-7 right-panel">

            <h3 class="text-center mb-4">
                Welcome Back
            </h3>

            <%
                String msg = (String) request.getAttribute("msg");

                if(msg != null){
            %>

            <div class="alert alert-danger">
                <%= msg %>
            </div>

            <%
                }
            %>

            <form action="<%=request.getContextPath()%>/login"
                  method="post">

                <div class="mb-4">

                    <input type="email"
                           class="form-control"
                           name="email"
                           placeholder="Enter Email"
                           required>

                </div>

                <div class="mb-4 password-wrapper">

                    <input type="password"
                           class="form-control"
                           id="password"
                           name="password"
                           placeholder="Enter Password"
                           required>

                    <i class="bi bi-eye-slash toggle-password"
                       id="togglePassword"></i>

                </div>

                <button type="submit"
                        class="login-btn">

                    Login

                </button>

            </form>

            <div class="text-center mt-4 register-link">

                New to Flipkart?

                <a href="Register.jsp">

                    Create an account

                </a>

            </div>

        </div>

    </div>

</div>

<script>

const togglePassword =
      document.getElementById("togglePassword");

const password =
      document.getElementById("password");

togglePassword.addEventListener("click", () => {

    if(password.type === "password"){

        password.type = "text";

        togglePassword.classList.remove("bi-eye-slash");

        togglePassword.classList.add("bi-eye");

    }
    else{

        password.type = "password";

        togglePassword.classList.remove("bi-eye");

        togglePassword.classList.add("bi-eye-slash");
    }

});

</script>

</body>
</html>