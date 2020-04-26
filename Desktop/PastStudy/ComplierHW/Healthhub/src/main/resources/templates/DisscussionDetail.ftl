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
<input type="hidden" id="DisscussionID" name="type" value=${DisscussionID}>
<input type="hidden" id="ID" name="type" value=${ID}>
<input type="hidden" id="disid" name="type" value=${size}>
<input type="hidden" id="dister" name="type" value=${dister}>
<input type="hidden" id="tid" name="type" value=${UID}>
<input type="hidden" id="isre" name="type" value=${replyDetail}>
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
                <div class="btn" data-toggle="modal" id="SP">Search Posting</div>
            </div>
            <!-- /sidebar -->
            <div class="modal fade" id="reply2" role="dialog" aria-labelledby="gridSystemModalLabel">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title">Cite</h4>
                        </div>
                        <div class="modal-body">
                            <div class="container-fluid">
                                <form class="form-horizontal">

                                    <div class="form-group">
                                        <label class="col-xs-3 control-label">Group:</label>
                                        <div class="col-xs-5 ">
                                            <select class="form-control col-xs-5 input-sm duiqi" id="ctype" name="type">
                                                <option>Offensive</option>
                                                <option>Inappropriate</option>
                                            </select>
                                        </div>
                                    </div>


                                    <div class="form-group">
                                        <label class="col-xs-3 control-label">Additional information:</label>
                                        <div class="col-xs-3">
                                            <textarea name="message" id="cmessage" class="duiqi" rows="4" cols="25"></textarea>
                                        </div>
                                    </div>

                                </form>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-xs btn-xs btn-white" data-dismiss="modal">Cancle</button>
                            <button type="button" class="btn btn-xs btn-xs btn-green" data-dismiss="modal" id="citeSend">Send</button>
                        </div>
                    </div>
                    <!-- /.modal-content -->
                </div>
                <!-- /.modal-dialog -->
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
            <!-- main right col -->
            <div class="column col-sm-10 col-xs-11" id="main">

                <!-- top nav -->
                <div class="navbar navbar-static-top" id="navtop"  style="width: 82.2%">
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
                                    <h1>Topic</h1>
                                </div>
                                <div>
                                    <h1 id="replyinf">Messages</h1>
                                </div>
                                <div id="replys"></div>
                                <button type="button" id="replyb" class="btn-primary text-white ml-1" data-toggle="modal" data-target="#reply">Add</button>

<#--                                html主要部分结束-->



                                <div class="modal fade" id="reply" role="dialog" aria-labelledby="gridSystemModalLabel">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                           <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                <h4 class="modal-title">Reply Discussion</h4>
                                            </div>
                                            <div class="modal-body">
                                                <div class="container-fluid">
                                                    <form class="form-horizontal">
                                                        <div class="form-group">
                                                            <label class="col-xs-3 control-label">Name:</label>
                                                            <div class="col-xs-2 ">
                                                                <div class="col-xs-2 duiqi" >${UID}</div>
                                                                <input type="hidden" id="runame" name="type" value=${UID}>
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
                                                                <div id="rtime" class="duiqi" id="rdate"></div>
                                                                <input type="hidden" id="rdate" name="type">
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="col-xs-3 control-label">Topic:</label>
                                                            <div class="col-xs-3">
                                                                <input type="input" name="topic" id="rtopic" class="form-control col-xs-3 input-sm context-input duiqi" list="kw3"></input>
                                                                <datalist id="kw3">

                                                                </datalist>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="col-xs-3 control-label">Message:</label>
                                                            <div class="col-xs-3">
                                                                <textarea name="message" id="rmessage" class="duiqi" rows="4" cols="25"></textarea>
                                                            </div>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-xs btn-xs btn-white" data-dismiss="modal">Cancle</button>
                                                <button type="button" class="btn btn-xs btn-xs btn-green" data-dismiss="modal" id="rdis">Send</button>
                                            </div>
                                        </div>
                                        <!-- /.modal-content -->
                                    </div>
                                    <!-- /.modal-dialog -->
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
    var citeid;
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


    var  size= ${size};
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

    $('#citeSend').on('click' , function() {
        $.ajax({
            url:"/ajax/cite/${UID}",
            type:"POST",
            data: {
                "id": ""+citeid,
                "type": "rdis",
                "add":$("#cmessage").val()
            },
            success:function (text) {

            }
        });

    })
    var ID;
    var blogs = ${disscussion}
    var replys = ${replys}
    var userID=$("#ID").val();
    var websocket=null;
    $(function(){
        for (var i=0;i<dic.length;i++ ) {
            $("#kws").append('<option value="'+dic[i]+'">')
        }

        for (var i=0;i<dic.length;i++ ) {
            $("#kw3").append('<option value="'+dic[i]+'">')
        }
        if($("#dister").val()=="ter"){
            $("#replyinf").text("Disscussion has been terminate");
            $("#replyb").remove();
        }

        $("#namebarb").on('click' , function() {
            window.location.href="http://138.49.101.84";
        })
        if ($("#utype").val()=="tpatient"){
           // alert("patient")
            $("#navtop").addClass("navbar-green");
        }else if ($("#utype").val()=="tnurse"){
           // alert("nurse")
            $("#navtop").addClass("navbar-pink");
        }else  if ($("#utype").val()=="tdoctor"){
            //alert("doc");
            $("#navtop").addClass("navbar-blue");
        }else {
            $("#navtop").addClass("navbar-black");
        }
        $('#creatDis').on('click' , function() {
            $("#dtime").empty();
            var time2 = new Date().Format("MM/dd/yyyy hh:mm");
            $("#ddate").val(time2.toString());
            $('#dtime').append("  "+time2);
        })

        $('#replyb').on('click' , function() {
            $("#rtime").empty();
            var time2 = new Date().Format("MM/dd/yyyy hh:mm");
            $("#rdate").val(time2.toString());
            $('#rtime').append("  "+time2);

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

        ID=parseInt(""+${DisscussionID});
        for (var i=0;i<blogs.length;i++){
            var html =  "<div class=\"panel panel-default\">\n" +
                "                                    <div class=\"panel-heading\"><a href=\"/blog/view?ID="+blogs[i].disid+"\" class=\"pull-right\"></a> <h4>Topic:</h4>"+blogs[i].distopic+"</div>\n" +
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
        for (var j=0;j<replys.length;j++) {

            var html =" <div class=\"panel panel-default\">\n" +
                "                                    <div class=\"panel-heading\"><a href=\"/blog/rview/${UID}?ID=" +  replys[j].disid + "\" class=\"pull-right\">Details</a> <h4>Topic:</h4>" + replys[j].distopic + "</div>\n" +
                "                                    <div class=\"panel-body\">\n" +
                "                                        <p4><b>Name</b>:" + replys[j].disname + "</p4>\n" +
                "                                        <p><b>Type of posting:</b>dessimination</p>\n" +
                "                                        <div class=\"clearfix\"></div>\n" +
                "                                        <p><b>Time:</b>" + replys[j].disdate + "</p>\n" +
                "                                        <hr>\n" +
                "                                        <p><b>Message:</b>" + replys[j].dismessage + "</p>\n" +
                "                                        <hr>\n" +
                "                                        <div class=\"input-group-btn\">\n" +
                "                                        <button class=\"btn-danger btn-sm\" onclick='s("+replys[j].disid+")' data-toggle=\"modal\" data-target=\"#reply2\">cite</button>\n" +
                "                                    </div>" +
                "                                    </div>\n" +
                "                                </div>";
            $("#replys").append(html);
        }


        connectWebSocket();

        $('#rdis').on('click' , function() {

            if (dic.indexOf($("#rtopic").val())>=0){
            var postValue = {};
            postValue.id = "1234";//$("#blogID").val();
            postValue.name = "dis";
            var date = {};
            date.time = $("#rdate").val();
            date.username  = $("#runame").val();
            date.message = $("#rmessage").val();
            date.topic = $("#rtopic").val();
            date.keyword = $("#rkeyword").val();
            date.type = "reply";
            //var dateStr = JSON.stringify(date);
            // date.topic =
            postValue.text=date;
            websocket.send(JSON.stringify(postValue));
            var parentid;
            if ($("#isre").val()=="t") {
                parentid = "r"+$("#DisscussionID").val();
            }
            else {
                parentid = $("#DisscussionID").val();
            }
            $.ajax({
                type:"POST",
                url:"/ajax/replyDisscussion",
                data: {
                    "time":""+$("#rdate").val(),
                    "username":""+$("#runame").val(),
                    "message":""+ $("#rmessage").val(),
                    "topic":""+$("#rtopic").val(),
                    "keyword":""+$("#rkeyword").val(),
                    "parentid": parentid
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
            size = size+1;}else {
                window.alert("the topic is illegal")
            }

        })
    })

    //建立WebSocket连接
    function connectWebSocket(){

        console.log("开始...");

        //建立webSocket连接
        websocket = new WebSocket("ws://138.49.101.84/myHandler/ID=DIS"+$("#DisscussionID").val());
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
            //  alert(msg.data)
            var data = JSON.parse(msg.data);
            // alert(data.toString());
            var html = " <div class=\"panel panel-default\">\n" +
                "                                    <div class=\"panel-heading\"><a href=\"/blog/rview/${UID}?ID=" +  data.id + "\" class=\"pull-right\">Details</a> <h4>Topic:</h4>" + data.text.topic + "</div>\n" +
                "                                    <div class=\"panel-body\">\n" +
                "                                        <p4><b>Name</b>:"+data.text.username+"</p4>\n" +
                "                                        <p><b>Type of posting:</b>dessimination</p>\n" +
                "                                        <div class=\"clearfix\"></div>\n" +
                "                                        <p><b>Time:</b>"+data.text.time+"</p>\n" +
                "                                        <hr>\n" +
                "                                        <p><b>Message:</b>"+data.text.message+"</p>\n" +
                "                                        <hr>\n" +
                "                                        <div class=\"input-group-btn\">\n" +
                "                                        <button class=\"btn-danger btn-sm\" onclick='cite("+size+")'>cite</button>\n" +
                "                                    </div>" +
                "                                    </div>\n" +
                "                                </div>";
            $("#replys").append(html);
        }
    }
    function s(id) {
        citeid = id;
    }
    //发送消息
    function send(){
        ID=ID+1;
        var postValue = {};
        postValue.id = ID;//$("#blogID").val();
        postValue.name = "dis";
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