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
${UID}
<input type="hidden" id="uid" name="type" value=${UID}>
<div class="lowin lowin-green">
    <div class="lowin-brand">
        <img src="kodinger.jpg" alt="logo">
    </div>
    <div class="lowin-wrapper">
        <div class="lowin-box lowin-login">

            <div class="lowin-box lowin-register">
                <div class="lowin-box-inner">
                    <form id="myForm" method="get">
                        <p>Verification</p>
                        <div class="lowin-group">
                            <label>SafeCode</label>
                            <input type="hidden" name="id" id="id" value=${UID}>
                            <input type="text" name="SafeCode"id="checkCode" name="checkCode" autocomplete="current-password" class="lowin-input">
                            <button id="sendCheckCode" type="button" class="lowin-btn">Get Safe Code</button>
                        </div>
                        <button class="lowin-btn" id="loggin">
                            Login
                        </button>
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
        var id = $("#uid").val();
        if (id == null || id == ""){
            alert("Please enter name!!");
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
            $("#myForm").attr('action',"/users/verification");
            $("#myForm").submit();
        }else {
            $("#myForm").attr('action',"/users/wrong");
            $("#myForm").submit();
            alert("Wrong verifu code");
        }
    });
</script>
</body>
</html>