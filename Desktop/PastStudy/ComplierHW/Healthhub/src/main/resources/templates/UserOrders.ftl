<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/html" xmlns="http://www.w3.org/1999/html"
      xmlns="http://www.w3.org/1999/html">
<head>
    <title>Patient order information</title>
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
    <script>
        var orderindex = "";
        var docorderindex = "";
        function editWithHygienist(index){
            orderindex = ""+index;
            alert(orderindex);
            document.getElementById("selectBox").style.display = "block";
        }
        function editWithDoctor(index){
            docorderindex = "do"+index;
            alert(docorderindex);
            document.getElementById("selectBox2").style.display = "block";
        }
        function oldJump() {
            location = "new1.aspx";
        }
        function showSelectBox() {
            document.getElementById("selectBox").style.display = "block";
            document.getElementById("shelter").style.display = "block";
        }
        function cancel() {
            document.getElementById("selectBox").style.display = "none";
            document.getElementById("shelter").style.display = "none";
        }
        function ok() {
            var radios = document.getElementsByName("new");
            for(var i=0;i<radios.length;i++)
            {
                if(radios[i].checked)
                {
                    location = radios[i].value + ".aspx";
                    return true;
                }
            }
            alert("请选择");
            return false;
        }
    </script>
    <style>
        div.selectBox{display:none;position:fixed;top:30%;left:30%;width:250px;height:180px;border:3px solid black;background-color:white;z-index:1002}
        div.selectBox2{display:none;position:fixed;top:30%;left:30%;width:400px;height:200px;border:3px solid black;background-color:white;z-index:1002}
    </style>
</head>
<body class="flat-blue sidebar-collapse">

<div class="sidebar">
    <div class="menu-control toggle-sidebar">
        <a class="navbar-brand" href="#"><i class="fa fa-bar-chart"></i>Patient</a>
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
                    <a class="navbar-brand" href="#">Patient</a>
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
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Patient<span class="caret"></span></a>
                        <ul class="dropdown-menu user-info">
                            <li class="dropdown-title-bar">
                                <img src="/patient.jpeg" class="profile-img">
                            </li>
                            <li>
                                <div class="navbar-login">
                                    <h4 class="user-name">Patient</h4>
                                    <p>Patient@email.com</p>
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
                <span class="page-title red"><h2>Appointment With Doctor</h2></span>
            </div>
        </div><div class="row">
            <div class="col-xs-12">

                <ol class="breadcrumb">
                    <li><a href="http://localhost:8089/patient-index.html">Home</a>
                    <li class="active"><a href="schedule.ftl">Order</a>
                    </li>
                </ol>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-12">
            </div>
        </div>
        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
            <div class="panel panel-success">
                <div class="panel-heading">
                    <h3 class="panel-title"><i class="fa fa-users"></i> Order With Doctor</h3>
                </div>
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th>UserID</th>
                        <th>RoomID</th>
                        <th>DoctorID</th>
                        <th>OrderDate</th>
                        <th>Time</th>
                        <th>Edit</th>
                    </tr>
                    </thead>
                    <tbody>
                    <#list userorders as order>
                        <tr>
                            <td>${order.userid}</td>
                            <td>${order.place}</td>
                            <td>${order.doctorid}</td>
                            <td>${order.data}</td>
                            <td>${order.time}</td>
                            <input type="hidden" name="ordernum" id="do${order_index}" value="${order.ordernumber}" />
                            <td><a onclick="editWithDoctor(${order_index})">Edit</a></td>

                            <div id="selectBox2" class="selectBox2">
                                <p>Selectable Time：</p>
                                <p>
                                <form id="f2">
                                    <#list doctoraplist as d>
                                        ${d.doctorid}
                                        ${d.data}
                                        <select name="time2" id="ds${d_index}" style="width:178px;" value="">
                                                <option value="">--请选择--</option>
                                                <#list d.selectabletime as ds>
                                                    ${ds}
                                                    <option value="${ds}">  ${ds}</option>
                                                </#list>
                                            </select>
                                        <input type="hidden" name="odata" id="da${d_index}" value="${d.data}" />
                                        <input type="submit" onclick="setdocindex(${d_index})">
                                        <br/>
                                    </#list>
                                </form>
                                </p>
                            </div>

                            <script>
                                var dlistindex = "";
                                var dataindex = ""
                                function setdocindex(xindex) {
                                    dataindex = "da"+xindex
                                    dlistindex = "ds"+xindex;
                                }
                                $("#f2").submit(function() {
                                    var  c = docorderindex
                                    var did = document.getElementById(c).value
                                    var d =dlistindex;
                                    var time = document.getElementById(d).value
                                    var e = dataindex
                                    var day = document.getElementById(e).value
                                    $.ajax({
                                        type:"GET",
                                        url:"/ajax/dedit",
                                        data: {
                                            "id": ""+did,
                                            "data":""+day,
                                            "time":""+time,
                                        },
                                        dataType:"TEXT",
                                        success:function(data){
                                            if (data == "1"){
                                            //   alert("suc");
                                            }
                                        },
                                        error:function(jqXHR){
                                            alert("发生错误："+ jqXHR.status);
                                        }
                                    });
                                    //   $("#da"+orderindex).html("aaabb")
                                });
                            </script>

                        </tr>
                    </#list>
                   </tbody>

                </table>
            </div>
        </div>
        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
            <div class="panel panel-success">
                <div class="panel-heading">
                    <h3 class="panel-title"><i class="fa fa-users"></i> Order With Hygienistr</h3>
                </div>
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th>UserID</th>
                        <th>DoctorID</th>
                        <th>OrderDate</th>
                        <th>Edit</th>
                    </tr>
                    </thead>
                    <tbody>
                    <#list userhyorders as order2>
                        <tr>
                            <td>${order2.userid}</td>
                            <td>${order2.doctorid}</td>
                            <td id="da${order2_index}">${order2.data}</td>
                            <input type="hidden" name="odata" value="${order2.data}" />
                            <input type="hidden" name="ordernum" id="${order2_index}" value="${order2.ordernumber}" />
                            <input type="hidden" name="doctori" value="${order2.doctorid}" />
                            <td><a onclick="editWithHygienist(${order2_index})">Edit</a></td>
                            <div id="selectBox" class="selectBox">
                                <p>Selectable Time：</p>
                                <p>
                                    <form name="frmLogin" id="f1">
                                    <#list appointmentlist as x>
                                        ${x.data}
                                        ${x.hygienist}
                                        ${x.orderquantity}
                                        <input type="hidden" name="data"  id="a${x_index}" value="${x.data}" />
                                        <input type="hidden" name="doctorid" value="${x.hygienist}" />
                                        <input type="hidden" name="orderquantity" value="${x.orderquantity}"/>
                                        <input type="submit" onclick="setindex(${x_index})">
                                        <br/>
                                  </#list>
                                </form>
                                </p>
                            </div>

                        </tr>
                    </#list>
                    </tbody>
                    <script>
                        var xlistindex = "";
                        function setindex(xindex) {
                            xlistindex = "a"+xindex;
                        }
                       $("#f1").submit(function() {
                           var  a  = orderindex
                           var confCount = document.getElementById(a).value
                           var b =xlistindex;
                           var data = document.getElementById(b).value
                           alert(data)
                           $.ajax({
                               type:"GET",
                               url:"/ajax/edit",
                               data: {
                                   "id": ""+confCount,
                                   "data":""+data,
                               },
                               dataType:"TEXT",
                               success:function(data){
                                   if (data == "1"){
                                      alert("suc");
                                   }
                               },
                               error:function(jqXHR){
                                   alert("发生错误："+ jqXHR.status);
                              }
                           });
                       //   $("#da"+orderindex).html("aaabb")
                       });
                    </script>
                </table>
            </div>
        </div>
    </div>
</div>
</body>
</html>