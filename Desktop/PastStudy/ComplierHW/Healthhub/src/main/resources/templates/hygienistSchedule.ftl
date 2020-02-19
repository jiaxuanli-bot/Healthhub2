<!DOCTYPE html>
<html>
<head>
    <title>Admin index</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="Free Flat Admin Bootstrap Themes">
    <meta name="author" content="Charuwit Nodthaisong">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,900' rel='stylesheet' type='text/css'>

    <link rel="stylesheet" type="text/css" href="/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="/animate.css">
    <link rel="stylesheet" type="text/css" href="/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="/bootstrap-select.min.css">
    <link rel="stylesheet" type="text/css" href="/awesome-bootstrap-checkbox.css">
    <link rel="stylesheet" type="text/css" href="/select2.css">
    <link rel="stylesheet" type="text/css" href="/style.css">
    <link rel="stylesheet" type="text/css" href="/theme.css">

    <script type="text/javascript" src="/jquery-2.1.3.min.js"></script>
    <script type="text/javascript" src="/bootstrap.min.js"></script>
    <script type="text/javascript" src="/Chart.min.js"></script>
    <script type="text/javascript" src="/bootstrap-select.min.js"></script>
    <script type="text/javascript" src="/main.js"></script>
    <script type="text/javascript" src="/index.js"></script>
</head>
<body class="flat-blue sidebar-collapse">
<div class="sidebar">
    <div class="menu-control toggle-sidebar">
        <a class="navbar-brand" href="#"><i class="fa fa-bar-chart"></i>Admin</a>
        <i class="fa fa-bars navicon"></i>
    </div>
    <ul class="menu">

    </ul>
</div>
<div class="content-container wrap">
    <nav class="navbar navbar-default">
        <div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">Admin</a>
                </div>
                <ul class="nav navbar-nav navbar-right">
                </ul>
            </div>
        </div>
    </nav>
    <div class="container-fluid">
        <div class="row">
            <div class="col-xs-12">
                <span class="page-title red"><h2>Set up calender</h2></span>
            </div>
        </div><div class="row">
        <div class="col-xs-12">

            <ol class="breadcrumb">
                <li><a href="http://localhost:8089/admin-index.html">Home</a>
                <li class="active"><a href="schedule.ftl">Schedule</a>
                </li>
            </ol>
        </div>
    </div>
        <div class="row">
            <div class="col-xs-12">
            </div>
        </div>
        <form name="frmLogin" action="/calendar/hygienist">
            <br>
            Please select the hygienist work on Monday:
            <select name="mon" id="mon" style="width:178px;" value="">
                <option value="">--请选择--</option>
                <#list doctors as doctor>
                id ${doctor.username}
                <option value="${doctor.username}">${doctor.username}</option>
            </#list>
            </select>
            </br>
            <br>
            Please select the hygienist work on Tuesday:
            <select name="tues" id="tues" style="width:178px;" value="">
                <option value="">--请选择--</option>
                <#list doctors as doctor>
                id ${doctor.username}
                <option value="${doctor.username}">${doctor.username}</option>
            </#list>
            </select>
            </br>
            <br>
            Please select the hygienist work on wednesday:
            <select name="wednes" id="wednes" style="width:178px;" value="">
                <option value="">--请选择--</option>
                <#list doctors as doctor>
                id ${doctor.username}
                <option value="${doctor.username}">${doctor.username}</option>
            </#list>
            </select>
            </br>
            <br>
            Please select the hygienist work on Thursday:
            <select name="thurs" id="thurs" style="width:178px;" value="">
                <option value="">--请选择--</option>
                <#list doctors as doctor>
                id ${doctor.username}
                <option value="${doctor.username}">${doctor.username}</option>
            </#list>
            </select>
            </br>
            <br>
            Please select the hygienist work on Friday:
            <select name="fri" id="fri" style="width:178px;" value="">
                <option value="">--请选择--</option>
                <#list doctors as doctor>
                id ${doctor.username}
                <option value="${doctor.username}">${doctor.username}</option>
            </#list>
            </select>
            </br>
            <br>
            Please select the hygienist work on Saturday:
            <select name="sat" id="sat" style="width:178px; margin-left: 20px" value="">
                <option value="">--请选择--</option>
                <#list doctors as doctor>
                id ${doctor.username}
                <option value="${doctor.username}">${doctor.username}</option>
            </#list>
            </select>
            </br>
            <br>
            Please select the hygienist work on Sunday:
            <select name="sun" id="sun" style="width:178px;margin-left: 30px" value="">
                <option value="">--请选择--</option>
                <#list doctors as doctor>
                id ${doctor.username}
                <option value="${doctor.username}">${doctor.username}</option>
            </#list>
            </select>
            </br>
            <div style="margin-top: 10px">
                Please select the number of days you want to schedule: <input type="text" name="days" /><br />
            </div>
            <input type="submit">
        </form>
    </div>
</div>
</div>
</body>
</html>
