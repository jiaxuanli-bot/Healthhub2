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
                <form id="myForm" method="post">
                    <p>Signin to continue</p>
                    <div class="lowin-group">
                        <label>Name</label>
                        <input type="text" name="id" id="id" autocomplete="name" class="lowin-input">
                    </div>
                    <div class="lowin-group">
                        <label>Password</label>
                        <input type="password" name="password"id="password" autocomplete="current-password" class="lowin-input">
                    </div>
                    <div class="lowin-group">
                        <label>SafeCode</label>
                        <input type="text" name="SafeCode"id="checkCode" name="checkCode" autocomplete="current-password" class="lowin-input">
                        <button id="sendCheckCode" type="button" class="lowin-btn">Get Safe Code</button>
                    </div>
                    <button class="lowin-btn" id="loggin">
                        Login
                    </button>
                    <div class="text-foot">
                        Don't have an account? <a href="/register.html" class="register-link">Register</a>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
</div>
<script>
    //验证码
    var checkCode = "";
    $("#sendCheckCode").click(function () {
        alert("send");
        var id = $("#id").val();
        if (id == null || id == ""){
            alert("请输入邮箱！！！");
            return;
        }
        $.ajax({
            url:"/ajax/mail",
            type:"GET",
            data: {
                "id": ""+id,
            },
            success:function (text) {
                if (text != null && text != ""){
                    checkCode = text;
                    countDown();
                } else{
                    alert("获取失败，请重新获取")
                }
            }
        });
    });

    $("#loggin").click(function () {
        if($("#checkCode").val()+""==checkCode){
            $("#myForm").attr('action',"/users/login/id");
            $("#myForm").submit();
            alert("验证码通过");
        }else {
            $("#myForm").attr('action',"/users/wrong");
            $("#myForm").submit();
            alert("错误的验证码");
        }
    });
</script>
</body>
</html>