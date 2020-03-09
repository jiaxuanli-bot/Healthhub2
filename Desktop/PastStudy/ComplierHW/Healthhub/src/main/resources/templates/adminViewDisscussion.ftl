<!doctype html>
<html lang="ch">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <meta name="format-detection" content="telephone=no">
    <title>manage</title>
    <script src="/jquery-2.1.3.min.js"></script>
    <script src="/bootstrap.min.js"></script>

    <script src="/html5shiv.min.js"></script>
    <script src="/respond.min.js"></script>

    <link href="/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="/common.css" />
    <link rel="stylesheet" type="text/css" href="/slide.css" />
    <link rel="stylesheet" type="text/css" href="/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="/flat-ui.min.css" />
    <link rel="stylesheet" type="text/css" href="/jquery.nouislider.css">
</head>

<body>
<div id="topbar">
    <span id="unamnebtn" >${UID}</span>
    <button class="btn btn-primary btn-sm my-2 my-sm-0" type="submit" id="signoutbtn" >Log out</button>
</div>
<div id="wrap">
    <!-- 左侧菜单栏目块 -->
    <div class="leftMeun" id="leftMeun">
        <div id="personInfor">
        </div>
        <div role="tabpanel" class="tab-pane active" id="sour">
            <div class="btn" data-toggle="modal" data-target="#addSource" id="sendMB">Create  Dissemination</div>
            <div class="btn" data-toggle="modal" id="postMan" onclick="disMan()">Manage Disscussion</div>
            <div class="btn" data-toggle="modal" data-target="#creatDisM" id="creatDis">Create  Disscussion</div>
            <div class="btn" data-toggle="modal" onclick="DMV()">View Dissemination</div>
            <div class="btn" data-toggle="modal" id="VD">View Disscussion</div>
        </div>
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
                                    <div class="col-xs-5">
                                        <textarea type="text" name="message" id="dmessage" class="form-control context-input duiqi"></textarea>
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
        <div class="modal fade" id="addSource" role="dialog" aria-labelledby="gridSystemModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title">Create Dissemination</h4>
                    </div>
                    <div class="modal-body">
                        <div class="container-fluid">
                            <form class="form-horizontal">
                                <div class="form-group">
                                    <label class="col-xs-3 control-label">Name:</label>
                                    <div class="col-xs-2 ">
                                        <div class="col-xs-2 duiqi" >${UID}</div>
                                        <input type="hidden" id="uname" name="type" value=${UID}>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-xs-3 control-label">Type of posting:</label>
                                    <div class="col-xs-2 ">
                                        <div class="col-xs-2 duiqi" >Dissemination</div>
                                        <input type="hidden" id="uname" name="type" value=${UID}>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-xs-3 control-label">TimeStamp: </label>
                                    <div class="col-xs-4 ">
                                        <div id="time" class="duiqi" id="date"></div>
                                        <input type="hidden" id="date" name="type">
                                    </div>
                                </div>
                                <div class="form-group" id="sel2">
                                    <label class="col-xs-3 control-label">Group:</label>
                                    <div class="col-xs-5 ">
                                        <select class="form-control col-xs-5 input-sm duiqi" id="sel1" name="type">
                                            <option>physicians, patients and administrators</option>
                                            <option>physicians, nurses and administrators</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-xs-3 control-label">Topic:</label>
                                    <div class="col-xs-3">
                                        <input type="input" name="topic" id="topic" class="form-control col-xs-3 input-sm context-input duiqi"></input>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-xs-3 control-label">Message:</label>
                                    <div class="col-xs-5">
                                        <textarea type="text" name="message" id="message" class="form-control context-input duiqi"></textarea>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-xs btn-xs btn-white" data-dismiss="modal">Cancle</button>
                        <button type="button" class="btn btn-xs btn-xs btn-green" data-dismiss="modal" id="sendpost">Send</button>
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>







    </div>
    <!-- 右侧具体内容栏目 -->
    <div id="rightContent">
        <!-- Tab panes -->
        <div class="tab-content">
            <!-- 资源管理模块 -->

            <div class="column col-sm-12 col-xs-13" id="main">
                <!-- top nav -->
                <!-- /top nav -->
                <div class="padding">
                    <div class="full col-sm-11">

                        <!-- content -->
                        <div class="row">

                            <!-- main col left -->
                            <div class="col-sm-5">
                                <div class="panel panel-default">

                                </div>
                            </div>

                            <!-- main col right -->
                            <div class="col-sm-8">
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
                </div><!-- /padding -->
            </div>
            <!-- /.modal -->
        </div>
    </div>
</div>

<!-- 右侧具体内容栏目 -->


</div>
<script src="js/jquery.nouislider.js"></script>
<script type="text/javascript">
    $("#signoutbtn").on('click' , function() {
        window.location.href="http://138.49.101.84";
    })
    function postMan() {
        window.location.href="/dissemination/man";
    }
    function disMan() {
        window.location.href="/disscussion/mana";
    }
    function DMV() {
        window.location.href="/dissemination/adminview";
    }
    $('#VD').on('click' , function() {
        window.location.href="/disscussion/View";
    })
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

    $(document).ready(function () {
        var ID;
        var blogs = ${disscussions}
        var userID=$("#ID").val();
        var websocket=null;
        $(function(){
            connectWebSocket();
            ID=parseInt(""+${blogID});
            for (var i=0;i<blogs.length;i++){
                var html =   " <div class=\"panel panel-default\">\n" +
                    "                                    <div class=\"panel-heading\"><a href=\"/blog/view?ID="+blogs[i].disid+"\" class=\"pull-right\">View Detail</a> <h4>Topic:</h4>"+blogs[i].distopic+"</div>\n" +
                    "                                    <div class=\"panel-body\">\n" +
                    "                                        <p4><b>Name</b>:"+blogs[i].disname+"</p4>\n" +
                    "                                        <p><b>Type of posting:</b>dessimination</p>\n" +
                    "                                        <div class=\"clearfix\"></div>\n" +
                    "                                        <p><b>Time:</b>"+blogs[i].disdate+"</p>\n" +
                    "                                        <hr>\n" +
                    "                                        <p><b>Message:</b>"+blogs[i].dismessage+"</p>\n" +
                    "                                    </div>\n" +
                    "                                </div>";
                $("#context").append(html);
            }

        })
        var tablecontext="";
        $("#Usertable").append(tablecontext);
        $('#messagePage').on('click' , function() {
            window.location.href="/";
        })



        $('#sendMB').on('click' , function() {
            $("#time").empty();
            var time2 = new Date().Format("MM/dd/yyyy hh:mm");
            $("#date").val(time2.toString());
            $('#time').append("  "+time2);
        })

        $('#creatDis').on('click' , function() {
            $("#dtime").empty();
            var time2 = new Date().Format("MM/dd/yyyy hh:mm");
            $("#ddate").val(time2.toString());
            $('#dtime').append("  "+time2);
        })

        $('#sendpost').on('click' , function() {
            if ($("#sel2 option:selected").text()=="physicians, nurses and administrators") {
                sendtoNurse();
                $.ajax({
                    type:"POST",
                    url:"/ajax/admin/dissemination",
                    data: {
                        "time":""+$("#date").val(),
                        "username":""+$("#uname").val(),
                        "message":""+$("#message").val(),
                        "topic":""+$("#topic").val(),
                        "keyword":""+$("#keyword").val(),
                        "group":"nurse",
                        "status":"1",
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
                sendtoPatient();
                $.ajax({
                    type:"POST",
                    url:"/ajax/admin/dissemination",
                    data: {
                        "time":""+$("#date").val(),
                        "username":""+$("#uname").val(),
                        "message":""+$("#message").val(),
                        "topic":""+$("#topic").val(),
                        "keyword":""+$("#keyword").val(),
                        "group":"patient",
                        "status":"1",
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

        $('#dsenddis').on('click' , function() {
            if ($("#dsel2 option:selected").text()=="physicians, nurses and administrators") {
                senddistoNurse();
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
                        "status":"1",
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
                        "status":"1",
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




        $('.approve').on('click' , function() {
            var id = ""+this.name;
            $("#"+id).remove();
            $.ajax({
                type:"POST",
                url:"/ajax/approve",
                data: {
                    "id": ""+this.id,
                },
                success:function(data){
                    if (data == "1"){
                    }
                },
                error:function(jqXHR){
                    alert("发生错误："+ jqXHR.status);
                }
            });
        })
        $('.refuse').on('click' , function() {
            var id = ""+this.id;
            $.ajax({
                type:"POST",
                url:"/ajax/refuse",
                data: {
                    "id": ""+this.name,
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
        })
    });
</script>
<script>
    var userID="admin";
    var websocket=null;

    $(function(){
        connectWebSocket();
    })

    //建立WebSocket连接

    function connectWebSocket(){

        console.log("开始...");

        websocket = new WebSocket("ws://127.0.0.1:8089/myHandler/ID=?");

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
        }
    }
    function sendtoPatient(){

        var postValue = {};
        postValue.id = "1234";//$("#blogID").val();
        postValue.name = "patient";
        var date = {};
        date.time = $("#date").val();
        date.username  = $("#uname").val();
        date.message = $("#message").val();
        date.topic = $("#topic").val();
        date.keyword = $("#keyword").val();
        date.type = "dissemination";
        //var dateStr = JSON.stringify(date);
        // date.topic =
        postValue.text=date;
        websocket.send(JSON.stringify(postValue));

    }
    function sendtoNurse(){
        var postValue = {};
        postValue.id = "1234";//$("#blogID").val();
        postValue.name = "nurse";
        var date = {};
        date.time = $("#date").val();
        date.username  = $("#uname").val();
        date.message = $("#message").val();
        date.topic = $("#topic").val();
        date.keyword = $("#keyword").val();
        date.type = "dissemination";
        //var dateStr = JSON.stringify(date);
        postValue.text=date;
        websocket.send(JSON.stringify(postValue));
    }

    function senddistoNurse(){
        var postValue = {};
        postValue.id = "1234";//$("#blogID").val();
        postValue.name = "nurse";
        var date = {};
        date.time = $("#ddate").val();
        date.username  = $("#duname").val();
        date.message = $("#dmessage").val();
        date.topic = $("#dtopic").val();
        date.keyword = $("#dkeyword").val();
        date.type = "discussion";
        //var dateStr = JSON.stringify(date);
        postValue.text=date;
        // websocket.send(JSON.stringify(postValue));
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