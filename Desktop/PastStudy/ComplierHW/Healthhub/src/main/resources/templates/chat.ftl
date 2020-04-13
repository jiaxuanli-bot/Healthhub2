<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <title>Disscussion Details</title>
    <meta name="generator" content="Bootply" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link href="/bootstrap.min.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <script type="text/javascript" src="/jquery-2.1.3.min.js"></script>
    <![endif]-->
    <link href="/styles.css" rel="stylesheet">
    <script type="text/javascript" src="/jquery-2.1.3.min.js"></script>
    <link rel="stylesheet" type="text/css" href="/common.css"/>
</head>
<body>
<input type="hidden" id="utype" name="type" value=${utype}>
<input type="hidden" id="doc" name="type" value=${utype}>
<input type="hidden" id="blogID" name="type" value=${blogID}>
<input type="hidden" id="ID" name="type" value=${ID}>
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
                <div class="btn" data-toggle="modal" data-target="#creatDisM" id="creatDis">Create  Discussion</div>
                <div class="btn" data-toggle="modal" id="cp">Change Password</div>
                <div class="btn" data-toggle="modal" id="VD">View  Discussion</div>
                <div class="btn" data-toggle="modal" id="VDm">View  Dissemination</div>
                <div class="btn" data-toggle="modal" id="MMD">Manage My Discussion</div>
                <div class="btn" data-toggle="modal" id="SP">Search Posting</div>
                <div class="btn" data-toggle="modal" id="pm123">Private message</div>
                <div class="btn" data-toggle="modal" id="pm123">Private Conversation</div>

            </div>
            <!-- /sidebar -->
            <div class="modal fade" id="creatDisM" role="dialog" aria-labelledby="gridSystemModalLabel">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title">Creat Discussion</h4>
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
                       <ul class="nav navbar-nav ">
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
                <!-- top nav -->
                <#--                <div class="navbar navbar-green navbar-static-top">-->
                <#--                    <nav class="collapse navbar-collapse" role="navigation">-->
                <#--                        <h4>Dissemination View</h4>-->
                <#--                        <ul class="nav navbar-nav" id="namebar">-->
                <#--                            <span id="unamebar">${UID}</span>-->
                <#--                            <button id="namebarb" class="btn-sm btn-info label">Logout</button>-->
                <#--                        </ul>-->
                <#--                    </nav>-->
                <#--                </div>-->

                <!-- /top nav -->
                <div class="padding">
                    <div class="full col-sm-9">

                        <!-- content -->
                        <div class="row">

                            <!-- main col right -->
                            <div class="col-sm-7">
                                <div id="indatabase">
                                </div>
                                <div id="context">
                                    <h1>Private Conversation</h1>
                                </div>

                                <div id="replys">
                                </div>
                                <p>
                                    <input type="text" class="form-control" id="message"> </p>
                                <button type="button" id="replyb" class="btn-primary text-white ml-1" data-toggle="modal" data-target="#reply">Add</button>
                                <button type="button" id="terb" class="btn-danger text-white ml-1" data-toggle="modal" data-target="#reply">Terminate</button>
                            </div>
                        </div><!--/row-->

                        <div class="row">
                        </div>

                        <div class="row" id="footer">
                        </div>

                    </div><!-- /col-9 -->
                </div><!-- /padding -->
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
<script src="/bootstrap.min.js"></script>
<script src="/scripts.js"></script>
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
    $('#pm123').on('click' , function() {
        window.location.href="/disscussion/pm123/${UID}";
    })
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
    $("#MMD").on('click' , function() {
        window.location.href="/disscussion/manmy/${UID}";
    })
    $("#SP").on('click' , function() {
        window.location.href="/disscussion/search/${UID}";
    })
    $("#replyb").on('click' , function() {
        send();
    })
    $("#terb").on('click' , function() {
        ter();
    })
    $('#pm123').on('click' , function() {
        window.location.href="/disscussion/pm123/${UID}";
		
    })

    function cite(post) {
        $.ajax({
            url:"/ajax/cite/${UID}",
            type:"POST",
            data: {
                "id": ""+post,
                "type": "des",
            },
            success:function (text) {
                window.location.href="/dissemination/uview/${UID}";
            }
        });
    }

    var ID;
    var userID=$("#ID").val();
    var websocket=null;
    $(function(){

        if ($("#utype").val()=="tpatient"){
            $("#navtop").addClass("navbar-green");
        }else if ($("#utype").val()=="tnurse"){
            $("#navtop").addClass("navbar-pink");
        }else  if ($("#utype").val()=="tdoctor"){
            $("#navtop").addClass("navbar-blue");
        }else {
            $("#navtop").addClass("navbar-black");
        }

        connectWebSocket();
        $('#creatDis').on('click' , function() {
            $("#dtime").empty();
            var time2 = new Date().Format("MM/dd/yyyy hh:mm");
            $("#ddate").val(time2.toString());
            $('#dtime').append("  "+time2);
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
    })

    //建立WebSocket连接
    function connectWebSocket(){

        console.log("开始...");

        //建立webSocket连接
        websocket = new WebSocket("ws://138.49.101.84/myHandler/ID=${doc}");

        //打开webSokcet连接时，回调该函数
        websocket.onopen = function () {
            console.log("onpen");
        }
        //关闭webSocket连接时，回调该函数
        websocket.onclose = function () {
            //关闭连接
            console.log("onclose");
        }

        //接收信息
        websocket.onmessage = function (msg) {
            var data = JSON.parse(msg.data);
            var html ="<div class=\"panel panel-default\">\n" +
                "                                        <div class=\"panel-heading\">\n" +
                "                                            <h4>"+data.id+"</h4>\n" +
                "                                            <hr>\n" +
                "                                            <div class=\"panel-body\">\n" +
                "                                                <p><b>Message:</b>"+data.text+"</p>\n" +
                "                                            </div>\n" +
                "                                        </div>\n" +
                "                                    </div>";
            $("#replys").append(html);
        }
    }
    //发送消息
    function send(){
        ID=ID+1;
        var postValue = {};
        postValue.id = $("#ID").val();;//$("#blogID").val();
        postValue.name = "chat";
        postValue.text=$("#message").val();
        websocket.send(JSON.stringify(postValue));
        $("#message").val("");
    }
    //关闭连接
    function ter(){
        alert("terminate")
        ID=ID+1;
        var postValue = {};
        postValue.id = $("#ID").val();;//$("#blogID").val();
        postValue.name = "chat";
        postValue.text="I have closed the chat";
        websocket.send(JSON.stringify(postValue));
        $("#message").val("");
        closeWebSocket();
    }
    function closeWebSocket(){
        if(websocket != null) {
            websocket.close();
        }
    }
</script>
</body>
</html>
