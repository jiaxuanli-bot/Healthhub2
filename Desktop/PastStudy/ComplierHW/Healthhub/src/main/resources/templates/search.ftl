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
    </style>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <title>MainPage</title>
    <meta name="generator" content="Bootply" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link href="/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="/search.css">
    <script
            src="https://code.jquery.com/jquery-3.1.1.js"
            integrity="sha256-16cdPddA6VdVInumRGo6IbivbERE8p7CQR3HzTBuELA="
            crossorigin="anonymous">
    </script>
    <script src="js/app.js">
    </script>
    <!--[if lt IE 9]>
    <script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <script type="text/javascript" src="/jquery-2.1.3.min.js"></script>
    <![endif]-->
    <link href="/styles.css" rel="stylesheet">
    <script type="text/javascript" src="/jquery-2.1.3.min.js"></script>
    <link rel="stylesheet" type="text/css" href="/common.css" />
</head>
<body>
<input type="hidden" id="ID" name="type" value=${ID}>
<input type="hidden" id="utype" name="type" value=${utype}>
<a href="/blog/view"></a>

<div class="wrapper">
    <div class="box">
        <div class="row row-offcanvas row-offcanvas-left">
            <!-- sidebar -->
            <div class="column col-sm-2 col-xs-1 sidebar-offcanvas" id="sidebar">
                <div id="personInfor">
                    <p>
                    </p>
                </div>
                <div class="btn" data-toggle="modal" data-target="#creatDisM" id="creatDis">Create  Disscussion</div>
                <div class="btn" data-toggle="modal" id="cp">Change Password</div>
                <div class="btn" data-toggle="modal" id="VD">View  Disscussion</div>
                <div class="btn" data-toggle="modal" id="VDm">View  Dissemination</div>
                <div class="btn" data-toggle="modal" id="MMD">Manage My Disscussion</div>
                <div class="btn" data-toggle="modal" id="SP">Search Posting</div>
            </div>
            <!-- /sidebar -->
            <div class="modal fade" id="creatDisM" role="dialog" aria-labelledby="gridSystemModalLabel">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title">Create Discussion</h4>
                        </div>
                        <div class="modal-body">
                            <div class="container-fluid">
                                <form class="form-horizontal">
                                    <div class="form-group">
                                        <label class="col-xs-3 control-label">Name:</label>
                                        <div class="col-xs-2 ">
                                            <div class="col-xs-2 duiqi" >${UID}</div>
                                            <input type="hidden" id="duname" name="type" value=${UID}>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-xs-3 control-label">Type:</label>
                                        <div class="col-xs-2 ">
                                            <div class="col-xs-2 duiqi" >Discussion</div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-xs-3 control-label">Date: </label>
                                        <div class="col-xs-4 ">
                                            <div id="dtime" class="duiqi" id="ddate"></div>
                                            <input type="hidden" id="ddate" name="type">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-xs-3 control-label">Group:</label>
                                        <div class="col-xs-5 ">
                                            <select class="form-control col-xs-5 input-sm duiqi" id="dsel2" name="type">
                                                <option>physicians, patients and administrators</option>
                                                <option>physicians, nurses and administrators</option>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-xs-3 control-label">Topic:</label>
                                        <div class="col-xs-3">
                                            <input type="input" name="topic" id="dtopic" class="form-control col-xs-3 input-sm context-input duiqi"></input>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-xs-3 control-label">Message:</label>
                                        <div class="col-xs-3">
                                            <textarea name="message" id="dmessage" class="duiqi" rows="4" cols="25"></textarea>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-xs btn-xs btn-white" data-dismiss="modal">Cancle</button>
                            <button type="button" class="btn btn-xs btn-xs btn-green" data-dismiss="modal" id="dsenddis">Send</button>
                        </div>
                    </div>
                    <!-- /.modal-content -->
                </div>
                <!-- /.modal-dialog -->
            </div>
            <!-- main right col -->
            <div class="column col-sm-10 col-xs-11" id="main">
                <!-- top nav -->
                <div class="navbar navbar-static-top" id="navtop" style="width: 82.2%">
                    <div class="navbar-header">
                        <button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">Toggle</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a href="#" class="navbar-brand logo">Hub</a>
                    </div>
                    <nav class="collapse navbar-collapse" role="navigation">
                        <form class="navbar-form navbar-left">
                            <div class="input-group input-group-sm" style="max-width:360px;">
                            </div>
                        </form>
                        <ul class="nav navbar-nav">
                            <li>
                                <a href="#"><i class="glyphicon glyphicon-home"></i>Home</a>
                            </li>
                        </ul>
                        <ul class="nav navbar-nav navbar-right">
                            <li>
                                <a><span class="badge">${UID}</span></a>
                            </li>
                            <li>
                                <a href="http://138.49.101.84"><span class="badge">Log Out</span></a>
                            </li>
                        </ul>
                    </nav>
                </div>
                <!-- /top nav -->
                <div>
                    <div class="full col-sm-10">
                        <!-- content -->
                        <div class="row">
                            <!-- main col left -->
                            <!-- main col right -->
                            <div id="outside">
                                <div class="container-fluid">
                                    <div id="content">
                                        <div class="well well-sm">
                                            <div class="form-inline">
                                                Date:<input type="date" class="form-control" id="sdate">
                                                Topic:<input type="text" id="stopic"class="ml-4 form-control">
                                                Name:<input type="text" class="ml-4 form-control"id="sname">
                                                <button class="btn-sm btn-primary" id="SearchPosts">
                                                    Search
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-sm-7">
                                <div id="indatabase">
                                </div>

                                <div id="context">
                                </div>
                            </div>
                        </div><!--/row-->

                        <div class="row">
                        </div>

                        <div class="row" id="footer">
                        </div>

                    </div><!-- /col-9 -->
                    <div class="row">
                        <!-- main col left -->
                        <div class="col-sm-5">
                            <h1>Disseminations</h1>
                            <div id="Descontext">
                            </div>
                        </div>

                        <!-- main col right -->
                        <div class="col-sm-5">
                            <h1>Disscussions</h1>
                            <div id="Discontext">
                            </div>
                        </div>
                    </div><!--/row-->
                </div><!-- /padding -->
                <!-- content -->
            </div>
            <!-- /main -->

        </div>
    </div>
</div>


<!--post modal-->
<div id="postModal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                Update Status
            </div>
           <div class="modal-body">
                <form class="form center-block">
                    <div class="form-group">
                        <textarea class="form-control input-lg" autofocus="" placeholder="What do you want to share?"></textarea>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <div>
                    <button class="btn btn-primary btn-sm" data-dismiss="modal" aria-hidden="true">Post</button>
                    <ul class="pull-left list-inline"><li><a href=""><i class="glyphicon glyphicon-upload"></i></a></li><li><a href=""><i class="glyphicon glyphicon-camera"></i></a></li><li><a href=""><i class="glyphicon glyphicon-map-marker"></i></a></li></ul>
                </div>
            </div>
        </div>
    </div>
</div>
<script>

    Date.prototype.Format = function (fmt) { // author: meizz
        var o = {
            "M+": this.getMonth() + 1, // 月份
            "d+": this.getDate(), // 日
            "h+": this.getHours(), // 小时
            "m+": this.getMinutes(), // 分
            "s+": this.getSeconds(), // 秒
            "q+": Math.floor((this.getMonth() + 3) / 3), // 季度
            "S": this.getMilliseconds() // 毫秒
        };
        if (/(y+)/.test(fmt))
            fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
        for (var k in o)
            if (new RegExp("(" + k + ")").test(fmt)) fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
        return fmt;
    }
    $('#cp').on('click' , function() {
        window.location.href="/changePW.html";
    })
    $('#VD').on('click' , function() {
        window.location.href="/disscussion/View/${UID}";
    })
    $("#namebarb").on('click' , function() {
        window.location.href="http://138.49.101.84";
    })
    $("#VDm").on('click' , function() {
        window.location.href="/dissemination/uview/${UID}";
    })
    $("#SP").on('click' , function() {
        window.location.href="/disscussion/search/${UID}";
    })
    $("#MMD").on('click' , function() {
        window.location.href="/disscussion/manmy/${UID}";
    })
    if ($("#utype").val()=="tpatient"){
        //alert("patient")
        $("#navtop").height("50px");
        $("#navtop").addClass("navbar-green");
    }else if ($("#utype").val()=="tnurse"){
        //alert("nurse")
        $("#navtop").height("50px");
        $("#navtop").addClass("navbar-pink");
    }else {
        $("#navtop").height("50px");
        $("#navtop").addClass("navbar-blue");
    }
    var ID;
    var userID=$("#ID").val();
    var websocket=null;
    $(function(){
        $('#creatDis').on('click' , function() {
            $("#dtime").empty();
            var time2 = new Date().Format("MM/dd/yyyy hh:mm");
            $("#ddate").val(time2.toString());
            $('#dtime').append("  "+time2);
        })

        $('#SearchPosts').on('click' , function() {
            $("#Discontext").empty();
            $("#Descontext").empty();
            $.ajax({
                type:"POST",
                url:"/ajax/search/${UID}",
                data: {
                    "time":""+$("#sdate").val() ,
                    "username":""+$("#sname").val() ,
                    "topic":""+$("#stopic").val() ,
                },
                success:function(data){
                    updatedes(data.des);
                    updatedis(data.dis);
                },
                error:function(jqXHR){
                    alert("发生错误："+ jqXHR.status);
                }
            });
        })

        $('#dsenddis').on('click' , function() {
            if ($("#dsel2 option:selected").text()=="physicians, nurses and administrators") {
                $.ajax({
                    type:"POST",
                    url:"/ajax/admin/disscussion",
                    data: {
                        "time":""+$("#ddate").val(),
                        "username":""+$("#duname").val(),
                        "message":""+$("#dmessage").val(),
                        "topic":""+$("#dtopic").val(),
                        "keyword":""+$("#dkeyword").val(),
                        "group":"nurse",
                        "status":"0",
                    },
                    success:function(data){
                        if (data == "1"){
                            $("#"+id).remove();
                        }
                    },
                    error:function(jqXHR){
                        alert("发生错误："+ jqXHR.status);
                    }
                });
            }
            else {
                $.ajax({
                    type:"POST",
                    url:"/ajax/admin/disscussion",
                    data: {
                        "time":""+$("#ddate").val(),
                        "username":""+$("#duname").val(),
                        "message":""+$("#dmessage").val(),
                        "topic":""+$("#dtopic").val(),
                        "keyword":""+$("#dkeyword").val(),
                        "group":"patient",
                        "status":"0",
                    },
                    success:function(data){
                        if (data == "1"){
                            $("#"+id).remove();
                        }
                    },
                    error:function(jqXHR){
                        alert("发生错误："+ jqXHR.status);
                    }
                });
            }

        })

        connectWebSocket();
    })

</script>

<script>
    function updatedis(dis) {
        $("#Discontext").empty();
        for (var i=0;i<dis.length;i++){
            var html =  " <div class=\"panel panel-default\">\n" +
                "                                    <div class=\"panel-heading\"><a href=\"/blog/view/${UID}?ID="+dis[i].disid+"\" class=\"pull-right\">View Detail</a> <h4>Topic:</h4>"+dis[i].distopic+"</div>\n" +
                "                                    <div class=\"panel-body\">\n" +
                "                                        <p4><b>Name</b>:"+dis[i].disname+"</p4>\n" +
                "                                        <p><b>Type of posting:</b>Disscussion</p>\n" +
                "                                        <div class=\"clearfix\"></div>\n" +
                "                                        <p><b>Time:</b>"+dis[i].disdate+"</p>\n" +
                "                                        <hr>\n" +
                "                                        <p><b>Message:</b>"+dis[i].dismessage+"</p>\n" +
                "                                        <hr>\n" +
                "                                        <div class=\"input-group-btn\">\n" +
                "                                        <button class=\"btn-danger btn-sm\" onclick='citedis("+dis[i].disid+")'>cite</button>\n" +
                "                                    </div>\n" +

                "                                    </div>\n" +
                "                                </div>";
            $("#Discontext").append(html);
        }
    }
    function cite(post) {
        $.ajax({
            url:"/ajax/cite/${UID}",
            type:"POST",
            data: {
                "id": ""+post,
                "type": "des",
            },
            success:function (text) {
            }
        });
    }
    function citedis(post) {
        $.ajax({
            url:"/ajax/cite/${UID}",
            type:"POST",
            data: {
                "id": ""+post,
                "type": "dis",
            },
            success:function (text) {
            }
        });
    }
    function updatedes(des) {
        $("#Descontext").empty();
        for (var j=0;j<des.length;j++){
            var html =  " <div class=\"panel panel-default\">\n" +
                "                                    <div class=\"panel-heading\"><a href=\"/blog/view?ID="+des[j].disid+"\" class=\"pull-right\"></a> <h4>Topic:</h4>"+des[j].distopic+"</div>\n" +
                "                                    <div class=\"panel-body\">\n" +
                "                                        <p4><b>Name</b>:"+des[j].disname+"</p4>\n" +
                "                                        <p><b>Type of posting:</b>dessimination</p>\n" +
                "                                        <div class=\"clearfix\"></div>\n" +
                "                                        <p><b>Time:</b>"+des[j].disdate+"</p>\n" +
                "                                        <hr>\n" +
                "                                        <p><b>Message:</b>"+des[j].dismessage+"</p>\n" +
                "                                        <hr>\n" +
                "                                        <div class=\"input-group-btn\">\n" +
                "                                        <button class=\"btn-danger btn-sm\" onclick='cite("+des[j].disid+")'>cite</button>\n" +
                "                                    </div>" +
                "                                    </div>\n" +
                "                                </div>";
            $("#Descontext").append(html);
        }
    }
</script>
<script src="/bootstrap.min.js"></script>
<script src="/scripts.js"></script>
</body>
</html>