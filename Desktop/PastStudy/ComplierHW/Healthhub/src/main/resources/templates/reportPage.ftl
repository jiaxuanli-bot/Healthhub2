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
    <link rel="stylesheet" href="/style.css">
    <link rel="stylesheet" href="/search.css"> <link href="/styles.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="/common.css" />

    <script
            src="https://code.jquery.com/jquery-3.1.1.js"
            integrity="sha256-16cdPddA6VdVInumRGo6IbivbERE8p7CQR3HzTBuELA="
            crossorigin="anonymous">
    </script>
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
                <div class="btn" data-toggle="modal" data-target="#addSource" id="sendMB">Create  Dissemination</div>
                <div class="btn" data-toggle="modal" id="postMan" onclick="disMan()">Discussion Approve</div>
                <div class="btn" data-toggle="modal" data-target="#creatDisM" id="creatDis">Create  Discussion</div>
                <div class="btn" data-toggle="modal" onclick="DMV()">View Dissemination</div>
                <div class="btn" data-toggle="modal" id="VD">View Discussion</div>
                <div class="btn" data-toggle="modal" id="VCB">View Citation</div>
                <div class="btn" data-toggle="modal" id="AMD">Manage Discussion</div>
                <div class="btn" data-toggle="modal" id="ASP">Search Posting</div>
                <div class="btn" data-toggle="modal" id="AGP">Generate report</div>
                <div class="btn" data-toggle="modal" id="123456">Private Conversations</div>
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
                            <button type="button" class="btn btn-xs btn-xs btn-white" data-dismiss="modal">Cancel</button>
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
                <div class="navbar navbar-black navbar-static-top" id="navtop"  style="width: 82.2%">
                    <div class="navbar-header">
                        <button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".navbar-collapse" >
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
                            <div id="disseminationGeneration">
                                <div class="container-fluid">
                                    <div id="disseminationContent">
                                        <div class="well well-sm">
                                            <h4>Report Generator</h4>
                                            <div class="form-inline">
                                                <div id="notReplyInfo">
                                                    From Date:<input type="date" class="form-control" id="fdate">
                                                    To Date:<input type="date" class="form-control" id="tdate">
                                                    Name:<input type="text" class="ml-4 form-control"id="sname">
                                                </div>

                                                <div type="hidden" id="distopicName" style="display: none">Discussion Topic:<input type="text" class="form-control" id="disTopic"></div>

                                                <select class="select ml-2" id="typeSel">
                                                    <option value ="Dissemination">Dissemination</option>
                                                    <option value ="Discussion">Discussion</option>
                                                    <option value ="dissReplies">Discussion Activity</option>
                                                </select>
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
                            <div class="col-med-5">
                                <h1>Report Results</h1>
                                <div id="reportResults">

                                </div>
                            </div>
                        </div>

                        <div class="row" id="footer">
                        </div>

                    </div><!-- /col-9 -->

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
    $("#namebarb").on('click' , function() {
        window.location.href="http://138.49.101.84";
    })



    function postMan() {
        window.location.href="/dissemination/man/${UID}";
    }
    function disMan() {
        window.location.href="/disscussion/mana/${UID}";
    }
    function DMV() {
        window.location.href="/dissemination/adminview/${UID}";
    }
    $('#VD').on('click' , function() {
        window.location.href="/disscussion/View/${UID}";
    })
    $('#VCB').on('click' , function() {
        window.location.href="/blog/View/${UID}";
    })
    $('#AMD').on('click' , function() {
        window.location.href="/disscussion/retrive/${UID}";
    })
    $('#ASP').on('click' , function() {
        window.location.href="/disscussion/adsearch/${UID}";
    })
    $('#AGP').on('click' , function() {
        window.location.href="/disscussion/adreport/${UID}";
    })
    $('#123456').on('click' , function() {
       // alert("ampm")
        window.location.href="/disscussion/ampm123456/${UID}";
    })
    var ID;
    var userID=$("#ID").val();
    var websocket=null;
    $(function(){
        $("#spass").css('display','none');
        $('#creatDis').on('click' , function() {
            $("#dtime").empty();
            var time2 = new Date().Format("MM/dd/yyyy hh:mm");
            $("#ddate").val(time2.toString());
            $('#dtime').append("  "+time2);
        })

        $('#SearchPosts').on('click' , function() {
            $("#reportResults").empty();
            var numReports = []
            var dateFrom = $("#fdate").val();
            var dateTo = $("#tdate").val();


            //check disseminations
            if($("#typeSel").val() == "Dissemination")
            {


                //a name has been typed to search
                if($("#sname").val() != "")
                {
                    var nameCheck = $("#sname").val();
                    numReports = countDiss(nameCheck, dateFrom, dateTo);
                }
                //name has not been typed
                else
                {
                   numReports = countDissNoName(dateFrom, dateTo);
                }

                var html =  " <div class=\"panel panel-default\">\n" +
                    "                                    <div class=\"panel-heading\">" +
                    "                                        <h4>Number of Dissemination Postings:</h4>"+numReports +"\n"+
                    "                                     </div>\n"
                $("#reportResults").append(html);


            }
            //check discussions
            else if($("#typeSel").val() == "Discussion")
            {

                console.log(dateFrom, dateTo)

                if($("#sname").val() != "")
                {
                    var nameCheck = $("#sname").val();
                    numReports = countDiscussion(nameCheck, dateFrom, dateTo);
                }
                else
                {
                    numReports = countDiscussionNoName(dateFrom, dateTo);
                }

                var html =  " <div class=\"panel panel-default\">\n" +
                    "                                    <div class=\"panel-heading\">" +
                    "                                        <h4>Number of Discussions:</h4>"+numReports +"\n"+
                    "                                     </div>\n"
                $("#reportResults").append(html);


            }
            //check discussion replies
            else {

                var disTopic = $("#disTopic").val();

                numReports = countReplies(disTopic);

                var html =  " <div class=\"panel panel-default\">\n" +
                    "                                    <div class=\"panel-heading\">" +
                    "                                        <h4>Number of Users in the Discussion Post: " +disTopic +" is</h4>"+numReports +"\n"+
                    "                                     </div>\n"
                $("#reportResults").append(html);
            }

                /*$.ajax({
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
            *///THIS WILL BE USED WHEN WE HAVE THE BACK END DONE
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

</script>

<script>

    function countDiss(name, dateFrom, dateTo) {
        var numReports = 0;

        mockDissData.forEach(function (d){
            if(d.disname == name)
            {
                var year = d.disdate.split(" ");
                var newDateTo = new Date(dateTo);
                newDateTo.setDate(newDateTo.getDate() + 1);

                if(Date.parse(dateFrom) <= Date.parse(year[0]) && Date.parse(year[0]) <= newDateTo)
                {
                    numReports++;
                }
            }
        })
        return numReports;
    }

    function countDissNoName(dateFrom, dateTo)
    {
        var numReports = 0;


            mockDissData.forEach(function (d){
                var year = d.disdate.split(" ");
                console.log(year[0])

                var newDateTo = new Date(dateTo);
                newDateTo.setDate(newDateTo.getDate() + 1);

                if(Date.parse(dateFrom) <= Date.parse(year[0]) && Date.parse(year[0]) <= newDateTo)
                {
                    numReports++;
                }
            })
        return numReports;
    }

    function countDiscussion(name, dateFrom, dateTo)
    {
        var numReports = 0;

        mockDiscussData.forEach(function (d) {
            if(d.disname == name)
            {
                var year = d.disdate.split(" ");

                var newDateTo = new Date(dateTo);
                newDateTo.setDate(newDateTo.getDate() + 1);

                if(Date.parse(dateFrom) <= Date.parse(year[0]) && Date.parse(year[0]) <= newDateTo)
                {
                    numReports++;
                }
            }
        })

        return numReports;
    }

    function countDiscussionNoName(dateFrom, dateTo)
    {
        var numReports = 0;


        console.log(dateFrom,dateTo)
        mockDiscussData.forEach(function (d) {
           var year = d.disdate.split(" ");

            var newDateTo = new Date(dateTo);
            newDateTo.setDate(newDateTo.getDate() + 1);

            if(Date.parse(dateFrom) <= Date.parse(year[0]) && Date.parse(year[0]) <= newDateTo)
            {
                numReports++;
            }

        })

        return numReports;
    }

    function countReplies(discussionTopic)
    {
        var numUsers = 0;

        var users = [];

        mockReplyData.forEach(function(d) {

            if(d.distopic == discussionTopic)
            {
                var exists = false;
                users.some(function (u) {
                    if (u == d.disname) {
                        console.log("found user")

                        exists = true;
                        return true
                    }
                    })
                if (!exists) {

                    users.push(d.disname)
                    numUsers++;
                }
            }
        })


        return numUsers;
    }




    var mockDissData = ${des}

    var mockDiscussData = ${dis}
    var mockReplyData = ${rep}
        console.log(${des})
    console.log(${dis})
    console.log(${rep})

    $("#typeSel").change(function() {


        if($("#typeSel").val() == "dissReplies")
        {
            $("#notReplyInfo").css("display", "none");

            $("#distopicName").css("display", "block");

        }
        else
        {
            $("#notReplyInfo").css("display", "block");


            $("#distopicName").css("display", "none");
        }

    })




    function getDates (start, end) {
        for(var arr=[],dt=new Date(start); dt<=end; dt.setDate(dt.getDate()+1)){
            arr.push(new Date(dt));
        }
        return arr;
    };


</script>
</body>
</html>