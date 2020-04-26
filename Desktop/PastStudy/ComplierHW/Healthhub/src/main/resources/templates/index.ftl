<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>Login</title>
    <link rel="stylesheet" href="/auth.css">
    <script type="text/javascript" src="/jquery-2.1.3.min.js"></script>
    <script type="text/javascript" src="/Chart.min.js"></script>
    <script type="text/javascript" src="/bootstrap-select.min.js"></script>
    <script type="text/javascript" src="/main.js"></script>
    <script type="text/javascript" src="/index.js"></script>
</head>

<body style="background:url('/background.png') no-repeat top left; background-size: cover;">
<div class="lowin lowin-green">
    <div class="lowin-brand">
        <img src="kodinger.jpg" alt="logo">
    </div>
    <div class="lowin-wrapper">
        <div class="lowin-box lowin-login">

            <div class="lowin-box lowin-register">
            <div class="lowin-box-inner">
                <form id="myForm" method="post" action="/users/login/id">
                    <p>Signin to continue</p>
                            <div class="lowin-group">
                        <label>Name</label>
                        <input type="text" name="id" id="id" autocomplete="name" class="lowin-input">
                    </div>
                    <div class="lowin-group">
                        <label>Password</label>
                        <input type="password" name="password"id="password" autocomplete="current-password" class="lowin-input">
                    </div>
                    <button class="lowin-btn" type="submit" id="loggin">
                        Login
                    </button>
                    <div class="text-foot">
                       Don't have an account? <a href="/users/register" class="register-link">Register</a>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
</div>
</body>
</html>