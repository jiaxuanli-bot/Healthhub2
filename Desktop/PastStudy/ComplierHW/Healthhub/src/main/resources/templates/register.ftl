<!DOCTYPE html>
<html lang="en">
<head>
    <style type ="text/css" >
        .i{
            border: none;
            border-radius: 3px;
            padding: 15px 20px;
            width: 100%;
            outline: 0;
            background-color:#C0C0C0;
        }

         .lowin .lowin-box label.error {
      color: #ff0000;
   }
    </style>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="/auth.css">
    <script type="text/javascript" src="/jquery-2.1.3.min.js"></script>
    <script type="text/javascript" src="/Chart.min.js"></script>
    <script type="text/javascript" src="/bootstrap-select.min.js"></script>
    <script type="text/javascript" src="/main.js"></script>
    <script type="text/javascript" src="/index.js"></script>
    <script src="https://static.runoob.com/assets/jquery-validation-1.14.0/lib/jquery.js"></script>
    <script src="https://static.runoob.com/assets/jquery-validation-1.14.0/dist/jquery.validate.min.js"></script>
    <script src="https://static.runoob.com/assets/jquery-validation-1.14.0/dist/localization/messages_zh.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="/build.css"/>
    <link rel="stylesheet" type="text/css" href="https://cdn.bootcss.com/font-awesome/4.6.0/css/font-awesome.min.css"/>
   <script>
       $().ready(function() {
            $.validator.addMethod("phoneUS",
                function(phone_number, element)
                {
                    phone_number = phone_number.replace(/\s+/g, "");
                    return this.optional(element) || phone_number.length > 9 &&
                        phone_number.match(/^(1-?)?(\([2-9]\d{2}\)|[2-9]\d{2})-?[2-9]\d{2}-?\d{4}$/);
                },
                "Please specify a valid phone number");
            $.validator.addMethod("password",
                function(password, element)
                {
                    password = password.replace(/\s+/g,"");
                    return this.optional(element) ||
                        password.match(/^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{6,}$/);
                },
                "Password has six character,and contain one number and one letter at least");

           $.validator.addMethod("username",
               function(username, element)
               {
                   username = username.replace(/\s+/g,"");
                   return this.optional(element) ||
                       username.match(/^([A-Za-z])(?=.*\d)[A-Za-z\d]{6,}$/);
               },
               "username must start with charcater");

            $("#signupForm").validate({
                rules: {
                    realname: "required",
                    username: {
                        required: true,
                        minlength: 2
                    },
                    password: {
                        required: true,
                        minlength: 6
                    },
                    confirm_password: {
                        required: true,
                        minlength: 6,
                        equalTo: "#password"
                    },
                    email: {
                        required: true,
                        email: true
                    },
                },
                messages: {
                    realname: "Please enter your username",
                    username: {
                        required: "Please enter your realname",
                        minlength: "Invalid name format"
                    },
                    password: {
                        required: "Please enter the password",
                        minlength: "Password at least has six character,and contain one number and one letter at least"
                    },
                    confirm_password: {
                        required: "Please enter the password again",
                        minlength: "Password must longger than six",
                        equalTo: "The two passwords you entered did not match"
                    },
                    email: "Please enter a valid email",
                },
                errorClass: "error"
            });
        });
    </script>

</head>
<!--<link rel="stylesheet" href="test.css" type="text/css" />-->
<body style="background:url('/background.png') no-repeat top left; background-size: cover;">
<div class="lowin lowin-green">
    <div class="lowin-brand">
        <img src="/kodinger.jpg" alt="logo">
    </div>

   <div class="lowin-wrapper">
        <div class="lowin-box lowin-login">
            <div class="lowin-box lowin-register">
                <div class="lowin-box-inner">
                    <form action="/users/reg"  id="signupForm" method="post">
                        <p>Create New Account</p>

                        <div class="lowin-group">
                            <label>UserName</label>
                            <input type="text" name="id" id="username" autocomplete="name" class="lowin-input">
                        </div>

                        <div class="lowin-group">
                            <label>Email</label>
                            <input type="text" name="email" id="email" autocomplete="name" class="lowin-input">
                        </div>

                        <div class="lowin-group">
                            <label>Telephone</label>
                            <input type="text" name="telephone" id="telephone" autocomplete="name" class="lowin-input phoneUS">
                        </div>

                        <div class="lowin-group">
                            <label>Full name</label>
                            <input type="text" name="realname" id="realname" autocomplete="name" class="lowin-input">
                        </div>

                        <label for="sel1">Type:</label>
                        <select class="form-control" id="sel1" name="type">
                            <option>Patient</option>
                            <option>Nurse</option>
                            <option id="do">Physician</option>
                        </select>

                        <div id="sel2d">
                        <label for="sel2">Physician:</label>
                        <select class="form-control" name="physicion" id="sel2">
                        </select>
                        <br>
                        </div>
                        <div>
                            <label>Additional</label>
                            <textarea type="text" name="additional" id="additional" class="context-input"></textarea>
                        </div>
                        <button class="lowin-btn" id="login">
                            Register
                        </button>
                        <div class="text-foot">
                            Don't have an account? <a href="/templates/register.html" class="register-link">Register</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>


<script>
    $("#sel1").change(function(){
        if (    $("#sel1 option:selected").text()!="Physician"){
            $("#sel2d").attr("style","display:none;");
        }
        else {
            $("#sel2d").attr("style","display:block;");
        }
    })
    var users = ${docs};
    $(document).ready(function () {
        var tablecontext="";
        for (var i=0;i<users.length;i++){
            tablecontext = tablecontext+"<option>"+users[i].id+"</option>"
        }
        $("#sel2").append(tablecontext);
    });
</script>
</body>
</html>