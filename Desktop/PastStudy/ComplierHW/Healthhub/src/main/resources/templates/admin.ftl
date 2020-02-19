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
<div id="wrap">
    <!-- 左侧菜单栏目块 -->
    <div class="leftMeun" id="leftMeun">
        <div id="personInfor">
            <p>
                <a href="http://localhost:8089">Logout</a>
            </p>
        </div>
        <div class="meun-title">Account Management</div>
        <div class="meun-title" id="messagePage">Message</div>
    </div>
    <!-- 右侧具体内容栏目 -->
    <div id="rightContent">
        <a class="toggle-btn" id="nimei">
            <i class="glyphicon glyphicon-align-justify"></i>
        </a>
        <!-- Tab panes -->
        <div class="tab-content">
            <!-- 资源管理模块 -->
            <div role="tabpanel" class="tab-pane active" id="sour">
                <div class="check-div form-inline">
                    <button class="btn btn-yellow btn-xs" data-toggle="modal" data-target="#addSource">Add user</button>
                </div>
                <div class="data-div">
                    <div class="row tableHeader">
                        <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1 ">

                        </div>
                        <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
                            UserName
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                            Email
                        </div>
                        <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
                            RealName
                        </div>
                        <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
                            action
                        </div>
                    </div>
                    <div class="tablebody">
                        <div id="Usertable"></div>
                        </div>

                        <!--系统管理折叠狂-->

                    </div>
                </div>
                <div class="modal fade" id="addSource" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title">add user</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    <form class="form-horizontal">
                                        <div class="form-group ">
                                            <label class="col-xs-3 control-label">name:</label>
                                            <div class="col-xs-8 ">
                                                <input type="email" class="form-control input-sm duiqi" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-xs-3 control-label">email:</label>
                                            <div class="col-xs-8 ">
                                                <input type="" class="form-control input-sm duiqi" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-xs-3 control-label">password:</label>
                                            <div class="col-xs-8">
                                                <input type="" class="form-control input-sm duiqi" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-xs-3 control-label">Type:</label>
                                            <div class="col-xs-8">
                                                <input type="" class="form-control input-sm duiqi" placeholder="">
                                            </div>
                                        </div>

                                    </form></div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-xs btn-white" data-dismiss="modal">Cancle</button>
                                <button type="button" class="btn btn-xs btn-xs btn-green">Save</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->
            </div>
        </div>
    </div>
</div>
<script src="js/jquery.nouislider.js"></script>
<script type="text/javascript">
    var users = ${users};
    $(document).ready(function () {
       var tablecontext="";
        for (var i=0;i<users.length;i++){
             tablecontext = tablecontext+"         <div class=\"row\"id="+i+">\n" +
                 "                            <div class=\"col-lg-1 col-md-1 col-sm-1 col-xs-1\">"+i+"</div>\n" +
                 "                            <div class=\"col-lg-2 col-md-2 col-sm-2 col-xs-2\"><span>"+users[i].id+"</span></div>\n" +
                 "                            <div class=\"col-lg-3 col-md-3 col-sm-3 col-xs-3\"><span>"+users[i].email+"</span></div>\n" +
                 "                            <div class=\"col-lg-2 col-md-2 col-sm-2 col-xs-2\"><span>"+users[i].realname+"</span></div>\n" +
                 "                            <div id=\"add\" class=\"col-lg-2 col-md-2 col-sm-2 col-xs-2\"><button name="+i+" class='btn btn btn-success btn-xs approve' id="+users[i].id+">approve</button>"
                 + "                          <button name="+users[i].id+" class='btn btn btn-danger btn-xs refuse' id="+i+">refuse</button></div>\n" +
                 "                            </div>"
        }
        $("#Usertable").append(tablecontext);

        $('#messagePage').on('click' , function() {
            window.location.href="/";
        })


        $('.approve').on('click' , function() {
            alert(this.id);
            var id = ""+this.name;
            $.ajax({
                type:"POST",
                url:"/ajax/approve",
                data: {
                    "id": ""+this.id,
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
</body>

</html>