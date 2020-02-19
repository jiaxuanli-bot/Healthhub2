<!DOCTYPE html>
<html lang="en">
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
<span>BLOG</span>
<span>${blog}</span>
<div id="context"></div>
</body>
<script>
    $(document).ready(function () {
        alert("start");
        var comments = ${comments};
        alert(comments[0].sender);
        for (var i=0;i<comments.length;i++){
            var inner = "<span>"+comments[i].sender+":"+comments[i].context+"</span> <br>" ;
            $("#context").append(inner);
        }
        })
</script>
</html>