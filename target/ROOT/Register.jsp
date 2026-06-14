<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Flipkart Clone - Register</title>

<!-- Bootstrap 5 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css"
      rel="stylesheet">

<!-- Bootstrap Icons -->
<link rel="stylesheet"
href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

<style>

body{
    background:#f1f3f6;
    min-height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;
    padding:20px;
}

.register-card{
    max-width:950px;
    width:100%;
    border:none;
    border-radius:15px;
    overflow:hidden;
    box-shadow:0 10px 30px rgba(0,0,0,0.15);
}

.left-panel{
    background:#2874f0;
    color:white;
    padding:50px 35px;
}

.left-panel h1{
    font-weight:700;
}

.left-panel p{
    margin-top:20px;
    line-height:1.8;
}

.right-panel{
    background:white;
    padding:40px;
}

.input-wrapper{
    position:relative;
}

.input-wrapper i{
    position:absolute;
    left:12px;
    top:50%;
    transform:translateY(-50%);
    color:#6c757d;
}

/* Common styles */
.form-control{
    border: none !important;
    border-bottom: 2px solid #ced4da !important;
    border-radius: 0 !important;
    padding: 12px 12px 12px 40px;
    background: transparent;
}

.form-control:focus{
    box-shadow: none !important;
    border-bottom: 2px solid #2874f0 !important;
}

/* Input wrapper */
.input-wrapper{
    position: relative;
}

.input-wrapper i{
    position: absolute;
    left: 12px;
    top: 50%;
    transform: translateY(-50%);
    color: #6c757d;
    z-index: 2;
}

/* Address field */
.textarea-wrapper i{
    top: 16px;
    transform: none;
}

.address-field{
    min-height: 90px;
    padding-top: 10px !important;
    padding-left: 40px !important;
    resize: vertical;
}
.password-toggle{
    left:auto !important;
    right:10px;
    cursor:pointer;
}

.register-btn{
    background:#fb641b;
    border:none;
    color:white;
    font-weight:600;
    padding:12px;
    width:100%;
    border-radius:8px;
    transition:0.3s;
}

.register-btn:hover{
    background:#e55b16;
    transform:translateY(-2px);
}

.login-link a{
    text-decoration:none;
    font-weight:600;
}

.login-link a:hover{
    text-decoration:underline;
}

@media(max-width:768px){

    .left-panel{
        text-align:center;
        padding:35px 25px;
    }

    .right-panel{
        padding:30px 25px;
    }
}

</style>

</head>

<body>

<div class="card register-card">

    <div class="row g-0">

        <!-- Left Side -->
        <div class="col-md-5 left-panel d-flex flex-column justify-content-center">

            <h1>Looks like you're new here!</h1>

            <p>
                Sign up to get access to your orders,
                wishlist, recommendations, and enjoy
                a seamless shopping experience.
            </p>

        </div>

        <!-- Right Side -->
        <div class="col-md-7 right-panel">

            <h3 class="text-center mb-4">
                Create Your Account
            </h3>

            <form action="<%=request.getContextPath()%>/register"
                  method="post">

                <!-- Name -->
                <div class="mb-3 input-wrapper">

                    <i class="bi bi-person"></i>

                    <input type="text"
                           class="form-control"
                           name="name"
                           placeholder="Full Name"
                           required>

                </div>

                <!-- Email -->
                <div class="mb-3 input-wrapper">

                    <i class="bi bi-envelope"></i>

                    <input type="email"
                           class="form-control"
                           name="email"
                           placeholder="Email Address"
                           required>

                </div>

                <!-- Phone -->
                <div class="mb-3 input-wrapper">

                    <i class="bi bi-telephone"></i>

                    <input type="tel"
                           class="form-control"
                           name="phone"
                           pattern="[0-9]{10}"
                           placeholder="Mobile Number"
                           required>

                </div>

                <!-- Password -->
                <div class="mb-3 input-wrapper">

                    <i class="bi bi-lock"></i>

                    <input type="password"
                           class="form-control"
                           id="password"
                           name="password"
                           minlength="6"
                           placeholder="Create Password"
                           required>

                    <i class="bi bi-eye-slash password-toggle"
                       id="togglePassword"></i>

                </div>

                <!-- Address -->
<div class="mb-4 input-wrapper textarea-wrapper">

    <i class="bi bi-geo-alt"></i>

    <textarea class="form-control address-field"
              name="address"
              placeholder="Enter Address"
              required></textarea>

</div>         <button type="submit"
                        class="register-btn">

                    Create Account

                </button>

            </form>

            <div class="text-center mt-4 login-link">

                Already have an account?

                <a href="Login.jsp">

                    Login

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