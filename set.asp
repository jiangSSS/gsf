<!doctype html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>信用查</title>
    <meta name="viewport"
        content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
    <script type="text/javascript" src="js/rem.js"></script>
    <link rel="stylesheet" href="css/mui.min.css" />
    <link rel="stylesheet" href="css/base.css" />
    <link rel="stylesheet" href="css/style.css" />
    <script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>
    <script type="text/javascript" src="js/mui.min.js"></script>
</head>

<body>
    <header class="mui-bar mui-bar-nav header headerBg">
        <a class="mui-action-back iconfont headerIco headLeft">&#xe792;</a>
        <h1 class="mui-title headTit">系统设置</h1>
    </header>
    <section class="wb100 dis-ib conTop">
        <div class="setTop">
            <img src="images/g-08.png">
            <p>v1.0.0</p>
        </div>
        <ul class="setList">
            <li class="version"><a href="javascript:;">版本更新</a></li>
            <li><a href="about.asp">关于信用查</a></li>
            <li class="cache"><a href="javascript:;">清除缓存<em class="right">100KB</em></a></li>
            <li><a href="feedback.asp">意见反馈</a></li>
        </ul>
        <div class="buttonBIg buttonBIgWidth">
            <a href="login.asp">退出登录</a>
        </div>
    </section>
    <script>
        $('.version').click(function () {
            mui.toast('已是最新版本');
        })
        $('.cache').click(function () {
            mui.toast('已清除');
        })
    </script>
</body>

</html>