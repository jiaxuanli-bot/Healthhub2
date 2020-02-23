<!DOCTYPE html>
<html>
<head>
    <title>Send message</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="Free Flat Admin Bootstrap Themes">
    <meta name="author" content="Charuwit Nodthaisong">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,900' rel='stylesheet' type='text/css'>
    <link href="/styles.css" rel="stylesheet">
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
<body>

<input type="hidden" id="ID" name="type" value=${ID}/>
    <div id="context">
   </div>
    <div class="full col-sm-20" id="sender">
        <div class="row">
            <div class="col-sm-5">
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
        </div><!-- /col-9 -->
    </div>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script>
    $('#cp').on('click' , function() {
        alert("CP");
        window.location.href="/changePW.html";
    })
    var userID="admin";
    var websocket=null;

    $(function(){
        alert("connect")
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
            var html = "<div class=\"  padding-top: 10px; mes\">\n" +
                "    <div class=\"col-sm-20\">\n" +
                "        <div class=\"row\">\n" +
                "            <div class=\"col-sm-9\">\n" +
                "                <div class=\"col-sm-7\">\n" +
                "                    <div class=\"panel panel-default\">\n" +
                "                        <div class=\"panel-heading\"><a href=\"#\" class=\"pull-right\">View all</a> <h4>Stackoverflow</h4></div>\n" +
                "                        <div class=\"panel-body\">\n" +
                "                            <a href=\"#\">Keyword: Bootstrap</a>\n" +
                "                            <div class=\"clearfix\"></div>\n" +
                "                            <hr>\n" +
                "                            <p>"+msg.data+"</p>\n" +
                "                            <hr>\n" +
                "                            <form>\n" +
                "                                <div class=\"input-group\">\n" +
                "                                    <div class=\"input-group-btn\">\n" +
                "                                        <button class=\"btn btn-default\">+1</button><button class=\"btn btn-default\"><i class=\"glyphicon glyphicon-share\"></i></button>\n" +
                "                                    </div>\n" +
                "                                    <input type=\"text\" class=\"form-control\" placeholder=\"Add a comment..\">\n" +
                "                                </div>\n" +
                "                            </form>\n" +
                "                        </div>\n" +
                "                    </div>\n" +
                 "                </div>\n" +
                "            </div><!--/row-->\n" +
                "        </div>\n" +
                "    </div>\n" +
                "</div>";
            $("#context").append(html);
            alert(msg.data);
        }
    }
    //发送消息
    function send(){
        var postValue;
        postValue=$("#ID").val()+$("#text").val();
        websocket.send(postValue);
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