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

<body class="bg-fff">
    <header class="mui-bar mui-bar-nav header headerBg">
        <a class="mui-action-back iconfont headerIco headLeft">&#xe792;</a>
        <h1 class="mui-title headTit">忘记密码</h1>
    </header>
    <section class="wb100 dis-ib conTop">
        <div class="loginTop">
            <p class="label">你好，欢迎加入</p>
            <img src='images/icon-16.png' class="loginImg">
            <a href="login.asp" class="loginHref"><img src='images/icon-17.png'><em>登录</em></a>
        </div>
        <div class="loginList">
            <ul>
                <li>
                    <input type="text" placeholder="请输入旧密码">
                </li>
                <li>
                    <input type="text" placeholder="请输入新密码">
                </li>
                <li>
                    <input type="text" placeholder="请确认新密码">
                </li>
            </ul>
        </div>
        <div class="wb100 dis-ib tc mtb5">
            <a href="login.asp" class="BtnSmall">提交</a>
        </div>
    </section>
    <script>
        $(document).ready(function () {
            $(".loginList input").focus(function () {
                $(this).parents('li').addClass('active');
            });
            $(".loginList input").blur(function () {
                $(this).parents('li').removeClass('active');
            });
        });
    </script>
</body>

</html>