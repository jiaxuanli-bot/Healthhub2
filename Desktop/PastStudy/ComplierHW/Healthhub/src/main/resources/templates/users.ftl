<!DOCTYPE html>
<html lang="en">
<head>
    <title>Delete</title>
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
    <script type="text/javascript" src="/Chart.min.js"></script>
    <script type="text/javascript" src="/bootstrap-select.min.js"></script>
    <script type="text/javascript" src="/main.js"></script>
    <script type="text/javascript" src="/index.js"></script>
</head>
<body class="flat-blue sidebar-collapse">
<div class="sidebar">
    <div class="menu-control toggle-sidebar">
        <a class="navbar-brand" href="#"><i class="fa fa-bar-chart"></i>Dentist</a>
        <i class="fa fa-bars navicon"></i>
    </div>
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
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa fa-comments"></i> 0</a>
                        <ul class="dropdown-menu">
                            <li class="dropdown-title-bar">
                                Notification ( 0 )
                            </li>
                            <li class="message">
                                No new notification
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown notification-alert">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-exclamation-circle"></i> 0</a>
                        <ul class="dropdown-menu">
                            <li class="dropdown-title-bar">
                                Notification ( 0 )
                            </li>
                            <li>
                                <ul class="notification-list">
                                    <li>
                                        <a href="#">
                                            <div class="noti-icon noti-primary">
                                                <i class="fa fa-comments fa-2x"></i>
                                            </div>
                                            <div class="noti-message">0 messages</div>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Admin <span class="caret"></span></a>
                        <ul class="dropdown-menu user-info">
                            <li class="dropdown-title-bar">
                                <img src="/admin.jpg" class="profile-img">
                            </li>
                            <li>
                                <div class="navbar-login">
                                    <h4 class="user-name">Admin</h4>
                                    <p>admin@email.com</p>
                                    <div class="btn-group margin-bottom-2x" role="group">
                                        <button type="button" class="btn btn-default"><i class="fa fa-user"></i> Profile</button>
                                        <button type="button" class="btn btn-default"><i class="fa fa-sign-out"></i> Logout</button>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="container-fluid">
        <div class="row">
            <div class="col-xs-12">
                <span class="page-title red"><h2>Welcome Admin</h2></span>
            </div>
        </div>
        <form name="frmLogin" action="/calendar/search/id">
            <input type="text" name="ID" id="ID"/> <input type="submit">
        </form>>

        <div class="row">
            <div class="col-xs-12">

                <ol class="breadcrumb">
                    <li><a href="admin-index.html">Home</a> >
                        <a href="users.ftl">Delete</a>
                    </li>
                </ol>
            </div>
        </div>
        <div class="row">
        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
            <div class="panel panel-success">
                <div class="panel-heading">
                    <h3 class="panel-title"><i class="fa fa-users"></i> New User</h3>
                </div>
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th>Name</th>
                        <th>Type</th>
                        <th>Delete</th>
                    </tr>
                    </thead>
                    <tbody>
                    <#list users as user>
                    <tr><form name="frmLogin" action="/users/Delete" method="post">
                        <td><input type="hidden" name="uid" id="uid" value="${user.id}" />${user.id}</td>
                        <td><input type="hidden" name="type" value="${user.type}" />${user.type}</td>
                        <td><input value='Delete' type='submit'></td>
                        </form>
                    </tr>
                    </#list>
                    </tbody>
                </table>
            </div>
        </div>
</div>
    </div>
</div>
</body>
</html>