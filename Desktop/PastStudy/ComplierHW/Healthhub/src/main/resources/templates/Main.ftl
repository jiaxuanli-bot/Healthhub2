<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <title>Faceboot - A Facebook style template for Bootstrap</title>
    <meta name="generator" content="Bootply" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link href="/bootstrap.min.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <script type="text/javascript" src="/jquery-2.1.3.min.js"></script>
    <![endif]-->
    <link href="/styles.css" rel="stylesheet">
    <script type="text/javascript" src="/jquery-2.1.3.min.js"></script>

</head>
<body>
<input type="hidden" id="blogID" name="type" value=${blogID}>
<input type="hidden" id="ID" name="type" value=${ID}>
<a href="/blog/view"></a>
<div class="wrapper">
    <div class="box">
        <div class="row row-offcanvas row-offcanvas-left">
            <!-- sidebar -->
            <div class="column col-sm-2 col-xs-1 sidebar-offcanvas" id="sidebar">
            </div>
            <!-- /sidebar -->

            <!-- main right col -->
            <div class="column col-sm-10 col-xs-11" id="main">

                <!-- top nav -->
                <div class="navbar navbar-blue navbar-static-top">
                    <nav class="collapse navbar-collapse" role="navigation">
                        <ul class="nav navbar-nav">
                            <li>
                                <a href="#">Home</a>
                            </li>
                        </ul>
                    </nav>
                </div>
                <!-- /top nav -->
                <div class="padding">
                    <div class="full col-sm-9">

                        <!-- content -->
                        <div class="row">

                            <!-- main col left -->
                            <div class="col-sm-5">
                                <div class="panel panel-default">
                                    <div class="panel-heading"><h4>Labels</h4></div>
                                    <div class="panel-body pl-2">
                                        <div class="list-group" id="label">
                                            <button class="btn-sm btn-info label">shengti</button>
                                            <button class="btn-sm btn-primary label">shengti</button>
                                            <button class="btn-sm btn-success label">shengti</button>
                                            <button class="btn-sm btn-warning label">shengti</button>
                                            <button class="btn-sm btn-danger label">shengti</button>
                                            <button class="btn-sm btn-warning label">shengti</button>
                                            <button class="btn-sm btn-success label">shengti</button>
                                            <button class="btn-sm btn-info label">shengti</button>
                                            <button class="btn-sm btn-primary label">shengti</button>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- main col right -->
                            <div class="col-sm-7">
                                <div id="indatabase">
                                </div>

                                <div id="context">
                                </div>
                                <div class="well">
                                    <form class="form-horizontal" role="form">
                                        <h4>What's New</h4>
                                        <div class="form-group" style="padding:14px;">
                                            <textarea id="text" class="form-control" placeholder="Update your status"></textarea>
                                        </div>
                                        <button class="btn btn-primary pull-right" type="button" onclick="send()">Post</button>
                                    </form>
                                </div>
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
    var ID;
    var blogs = ${blogs}
    var userID="admin";
    var websocket=null;
    $(function(){
        ID=parseInt(""+${blogID});
        alert("start");
        for (var i=0;i<blogs.length;i++){
            var inner = " <div class=\"panel panel-default\">\n" +
                "                                    <div class=\"panel-heading\"><a href=\"#\" class=\"pull-right\">View all</a> <h4>"+blogs[i].sender+"</h4></div>\n" +
                "                                    <div class=\"panel-body\">\n" +
                "                                        <p4>Label:</p4><button class=\"btn-sm btn-info\">XXX</button>\n" +
                "                                        <div class=\"clearfix\"></div>\n" +
                "                                        <hr>\n" +
                "                                        <p>"+blogs[i].context+"</p>\n" +
                "                                        <hr>\n" +
                "                                        <form>\n" +
                "                                            <div class=\"input-group\">\n" +
                "                                                <div class=\"input-group-btn\">\n" +
                "                                                    <button class=\"btn btn-default\">+1</button><button class=\"btn btn-default\"><i class=\"glyphicon glyphicon-share\"></i></button>\n" +
                "                                                </div>\n" +
                "                                                <input type=\"text\" class=\"form-control\" placeholder=\"Add a comment..\">\n" +
                "                                            </div>\n" +
                "                                        </form>\n" +
                "\n" +
                "                                    </div>\n" +
                "                                </div>";
            $("#indatabase").append(inner);
        }
        connectWebSocket();
    })

    //建立WebSocket连接
    function connectWebSocket(){

        console.log("开始...");

        //建立webSocket连接
        websocket = new WebSocket("ws://127.0.0.1:8089/myHandler/ID="+userID);

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
            alert("receive");

            var data = JSON.parse(msg.data);
            alert(data.id);
            var html = " <div class=\"panel panel-default\">\n" +
                "                                    <div class=\"panel-heading\"><a href=\"/blog/view?ID="+data.id+"\" class=\"pull-right\">View all</a> <h4>"+data.name+"</h4></div>\n" +
                "                                    <div class=\"panel-body\">\n" +
                "                                        <p4>Label:</p4><button class=\"btn-sm btn-info\">Heart</button>\n" +
                "                                        <div class=\"clearfix\"></div>\n" +
                "                                        <hr>\n" +
                "                                        <p>"+data.text+"</p>\n" +
                "                                        <hr>\n" +
                "                                        <form>\n" +
                "                                            <div class=\"input-group\">\n" +
                "                                                <div class=\"input-group-btn\">\n" +
                "                                                    <button class=\"btn btn-default\">+1</button><button class=\"btn btn-default\"><i class=\"glyphicon glyphicon-share\"></i></button>\n" +
                "                                                </div>\n" +
                "                                                <input type=\"text\" class=\"form-control\" placeholder=\"Add a comment..\">\n" +
                "                                            </div>\n" +
                "                                        </form>\n" +
                "\n" +
                "                                    </div>\n" +
                "                                </div>";
            $("#context").append(html);
        }
    }
    //发送消息
    function send(){
        ID=ID+1;
        var postValue = {};
        postValue.id = ID;//$("#blogID").val();
        postValue.name = $("#ID").val();
        postValue.text=$("#text").val();
        websocket.send(JSON.stringify(postValue));
        $.ajax({
            url:"/ajax/blog",
            type:"POST",
            data: {
                "id": ""+postValue.id,
                "name":""+postValue.name,
                "text":""+postValue.text,
            },
            success:function (text) {
                if (text != null && text != ""){
                    alert("succ in database");
                } else{
                    alert("获取失败，请重新获取")
                }
           }
        });
        $("#text").val("");
    }
    //关闭连接
    function closeWebSocket(){
        if(websocket != null) {
            websocket.close();
        }
    }
</script>
</body>
</html>