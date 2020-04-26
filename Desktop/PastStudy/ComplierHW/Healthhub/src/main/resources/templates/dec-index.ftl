<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <title>MainPage</title>
    <meta name="generator" content="Bootply" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link href="/bootstrap.min.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <script type="text/javascript" src="/jquery-2.1.3.min.js"></script>
    <![endif]-->
    <link rel="stylesheet" type="text/css" href="/bootstrap.min.css" />
    <link href="/styles.css" rel="stylesheet">
    <script type="text/javascript" src="/jquery-2.1.3.min.js"></script>
    <link rel="stylesheet" type="text/css" href="/common.css" />
</head>
<body>
<input type="hidden" id="blogID" name="type" value=${blogID}>
<input type="hidden" id="ID" name="type" value=${ID}>
<input type="hidden" id="tid" name="type" value=${UID}>
<a href="/blog/view"></a>
<div class="wrapper">
    <div class="box">
        <div class="row row-offcanvas row-offcanvas-left">
            <!-- sidebar -->
            <div class="column col-sm-2 col-xs-1 sidebar-offcanvas" id="sidebar">
                <div id="personInfor">
                </div>
                <div class="btn" data-toggle="modal" data-target="#addSource" id="sendMB">Create  Dissemination</div>
                <div class="btn" data-toggle="modal" data-target="#creatDisM" id="creatDis">Create  Disscussion</div>
                <div class="btn" data-toggle="modal" id="cp">Change Password</div>
                <div class="btn" data-toggle="modal" id="VD">View  Disscussion</div>
                <div class="btn" data-toggle="modal" id="VDm">View  Dissemination</div>
                <div class="btn" data-toggle="modal" id="MMD">Manage My Disscussion</div>
                <div class="btn" data-toggle="modal" id="SP">Search Posting</div>
                <div class="btn" data-toggle="modal" id="MPM">Private Message</div>
            </div>
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
                                        <label class="col-xs-3 control-label">Photo: </label> 
                                        <div class="col-xs-4 ">
                                            <input id="file" type="file" name="file" text="Add Photo"  /> 
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-xs-3 control-label">Topic:</label>
                                        <div class="col-xs-3">
                                            <input type="input" name="topic" id="dtopic" class="form-control col-xs-3 input-sm context-input duiqi" list="kws"></input>
                                            <datalist id="kws">

                                            </datalist>
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
                                        <label class="col-xs-3 control-label">Date: </label>
                                        <div class="col-xs-4 ">
                                            <div id="time" class="duiqi" id="date"></div>
                                            <input type="hidden" id="date" name="type">
                                        </div>
                                    </div>

                                    <div class="form-group" id="sel1">
                                        <label class="col-xs-3 control-label">Type of posting:</label>
                                        <div class="col-xs-2 ">
                                            <div class="col-xs-2 duiqi" >Dissemination</div>
                                            <input type="hidden" id="uname" name="type" value=${UID}>
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
                                            <input type="input" name="topic" id="topic" class="form-control col-xs-3 input-sm context-input duiqi" list="kws2"></input>
                                            <datalist id="kws2">

                                            </datalist>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-xs-3 control-label">Message:</label>
                                        <div class="col-xs-3">
                                            <textarea name="message" id="message" class="duiqi" rows="4" cols="25"></textarea>
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
            <!-- /sidebar -->

            <!-- main right col -->
            <div class="column col-sm-10 col-xs-11" id="main">
                <div class="navbar navbar-blue navbar-static-top"  style="width: 82.2%">
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
                                <a id="herf"><span class="badge">Log Out</span></a>
                            </li>
                        </ul>
                    </nav>
                </div>
                <!-- top nav -->
<#--                <div class="navbar navbar-blue navbar-static-top">-->
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
    var dic = [
        'kidney', 'renal disease','intervention' ,'lupus' ,'transplant' ,
        'transplantation', 'anemia', 'parathyroidism', 'hyperparathyroidism','CKD',
        'chronic kidney disease', 'kidney disease','nutrition' ,'blood pressure' ,'hypertension' ,
        'diabetes','CVD' ,'PVD' ,'cardiovascular disease' ,'peripheral vascular disease' ,
        'hemoglobin','calcium' ,'potassium' ,'serum calcium' ,'PTH' ,
        'blood urea nitrogen','creatinine' ,'GFR' ,'eGFR' ,'Glomerular filteration rate' ,
        'albumin','ischemic heart disease' ,'typhoid' ,'erythropoietin' ,'nephrology' ,
        'nephrologist','comorbidity','atrial fibrillation','mortality','diabetology',
        'hemodialysis','dialysis','peritoneal','nephropathy','renal',
        'amyloidosis','angiotensin','bicarbonate','boen disease','mineral bone disease',
        'coagulation','cyclosporine','diabetes mellitus','endothelin','endotoxin','epidemiology',
        'erythropoiesis','fibrosis','malignancy','neuropathy','osmolarity','parathyroid','phosphate','phosphorus',
        'proteinuria','reflux','urea','vitamin D','urinalysis','kidney biopsy','catheter','catheter tube','NKF','National Kidney Foundation'
    ];

    function    setCookie (name,value,iDay) {//存储cookie
        var oDate=new Date();
        oDate.setDate(oDate.getDate()+iDay);
        document.cookie=name+'='+value+';expires='+oDate;
    };
    var userAgent = navigator.userAgent; //取得浏览器的userAgent字符串  
    var isOpera = userAgent.indexOf("Opera") > -1; //判断是否Opera浏览器  
    var isIE = userAgent.indexOf("compatible") > -1 && userAgent.indexOf("MSIE") > -1 && !isOpera; //判断是否IE浏览器
    var isIE11 = userAgent.indexOf("rv:11.0") > -1; //判断是否是IE11浏览器
    var isEdge = userAgent.indexOf("Edge") > -1 && !isIE; //判断是否IE的Edge浏览器
    if(!isIE && !isEdge && !isIE11) {//兼容chrome和firefox
        var _beforeUnload_time = 0, _gap_time = 0;
        var is_fireFox = navigator.userAgent.indexOf("Firefox")>-1;//是否是火狐浏览器
        window.onunload = function (){
            _gap_time = new Date().getTime() - _beforeUnload_time;
            if(_gap_time <= 5){
                $.ajax({
                    url:"/ajax/logout",
                    type:"POST",
                    data: {
                        "id":$("#tid").val()
                    },
                    success:function (text) {
                        if (text != null && text != ""){
                            alert("succ in database");
                        } else{
                            alert("获取失败，请重新获取")
                        }
                    }
                });
            }else{//谷歌浏览器刷新
            }
        }
        window.onbeforeunload = function (){
            _beforeUnload_time = new Date().getTime();
            if(is_fireFox){//火狐关闭执行
                $.ajax({
                    url:"/ajax/logout",
                    type:"POST",
                    data: {
                        "id":$("#tid").val()
                    },
                    success:function (text) {
                        if (text != null && text != ""){
                            alert("succ in database");
                        } else{
                            alert("获取失败，请重新获取")
                        }
                    }
                });
            }else{//火狐浏览器刷新
            }
        };
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
    $("#MPM").on('click' , function() {
        window.location.href="/disscussion/pm1234/${UID}";
    })
    $("#herf").on('click' , function() {
        window.location.href = "http://138.49.101.84";
        $.ajax({
            url:"/ajax/logout",
            type:"POST",
            data: {
                "id":$("#tid").val()
            },
            success:function (text) {
                if (text != null && text != ""){
                } else{
                    alert("获取失败，请重新获取")
                }
            }
        });
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
    var blogs = ${blogs}
    var userID=$("#ID").val();
    var websocket=null;
    $(function(){

        for (var i=0;i<dic.length;i++ ) {
            $("#kws").append('<option value="'+dic[i]+'">')
        }

        for (var i=0;i<dic.length;i++ ) {
            $("#kws2").append('<option value="'+dic[i]+'">')
        }

        connectWebSocket();
        ID=parseInt(""+${blogID});
        for (var i=0;i<blogs.length;i++){
            var html =  " <div class=\"panel panel-default\">\n" +
                "                                    <div class=\"panel-heading\"><a href=\"/blog/view?ID="+blogs[i].disid+"\" class=\"pull-right\"></a> <h4>Topic:</h4>"+blogs[i].distopic+"</div>\n" +
                "                                    <div class=\"panel-body\">\n" +
                "                                        <p4><b>Name</b>:"+blogs[i].disname+"</p4>\n" +
                "                                        <p><b>Type of posting:</b>dessimination</p>\n" +
                "                                        <div class=\"clearfix\"></div>\n" +
                "                                        <p><b>Time:</b>"+blogs[i].disdate+"</p>\n" +
                "                                        <hr>\n" +
                "                                        <p><b>Message:</b>"+blogs[i].dismessage+"</p>\n" +
                "                                        <hr>\n" +
                "                                        <div class=\"input-group-btn\">\n" +
                "                                        <button class=\"btn-danger btn-sm\" onclick='cite("+blogs[i].disid+")'>cite</button>\n" +
                "                                    </div>" +
                "                                    </div>\n" +
                "                                </div>";
            $("#context").append(html);
        }
    })

    //建立WebSocket连接
    function connectWebSocket(){
        console.log("开始...");

        //建立webSocket连接
        websocket = new WebSocket("ws://138.49.101.84/myHandler/ID=doc");

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
            // alert(data.toString());
            var html = "<div class=\"panel panel-default\">\n" +
                "                                    <div class=\"panel-heading\"><a href=\"/blog/view?ID="+data.id+"\" class=\"pull-right\"></a> <h4>Topic:</h4>"+data.text.topic+"</div>\n" +
                "                                    <div class=\"panel-body\">\n" +
                "                                        <p4><b>Name</b>:"+data.text.username+"</p4>\n" +
                "                                        <p><b>Type of posting:</b>dessimination</p>\n" +
                "                                        <div class=\"clearfix\"></div>\n" +
                "                                        <p><b>Time:</b>"+data.text.time+"</p>\n" +
                "                                        <hr>\n" +
                "                                        <p><b>Message:</b>"+data.text.message+"</p>\n" +
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

<script type="text/javascript">
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
        $('#sendMB').on('click' , function() {
            $("#time").empty();
            var time2 = new Date().Format("MM/dd/yyyy hh:mm");
            $("#date").val(time2.toString());
            $('#time').append(""+time2);
        })

        $('#creatDis').on('click' , function() {
            $("#dtime").empty();
            var time2 = new Date().Format("MM/dd/yyyy hh:mm");
            $("#ddate").val(time2.toString());
            $('#dtime').append("  "+time2);
        })

        $('#dsenddis').on('click' , function() {
            var illegal =0;
            var txt = $("#dtopic").val().toString();
            for (var j=0;j < dic.length;j++){
                if(txt.indexOf(dic[j])>=0){
                    illegal =1;
                }
            }
            if (illegal ==1){


                var fileObj = document.getElementById("file").files[0]; // js 获取文件对象

                var tokenv="ssssssss";

                //var data = {"token":token,"file":fileObj};

                var formData = new FormData();

                formData.append("file",fileObj);

                formData.append("token",tokenv);

                $.ajax({

                    url: '/img/upload',

                    type: 'POST',

                    cache: false,

                    data: formData,

                    processData: false,

                    contentType: false

                }).done(function(res) {
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
                                "pic":res.toString()
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
                                "pic":res.toString()
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
                }).fail(function(res) {
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
                                "pic":res.toString()
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
                                "pic":res.toString()
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
                });

            }else {
                window.alert("The topic is illegal!")
            }
        })


        $('#sendpost').on('click' , function() {
            if (dic.indexOf($("#topic").val())>=0){
            if ($("#sel2 option:selected").text()=="physicians, nurses and administrators") {
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
                    },
                    error:function(jqXHR){
                        alert("发生错误："+ jqXHR.status);
                    }
                });
            }
            else {
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
                    },
                    error:function(jqXHR){
                        alert("发生错误："+ jqXHR.status);
                    }
                });
            }}else {
                window.alert("The topic is illegal")
            }
        })
    });
</script>
</body>
</html>