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
        <h1 class="mui-title headTit">注册</h1>
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
                    <input type="text" placeholder="请输入手机号">
                </li>
                <li class="verifica">
                    <input type="text" placeholder="请输入验证码">
                    <span class="code">获取验证码</span>
                </li>
                <li>
                    <input type="text" placeholder="请输入密码">
                </li>
            </ul>
        </div>
        <div class="loginLabel">
            <span class="left"><i class="iconfont">&#xe9e9;</i><em>我已阅读并同意<a href="regAgree.asp">《信用查服务协议》</a></em></span>
        </div>
        <div class="wb100 dis-ib tc mtb5">
            <a href="login.asp" class="BtnSmall">注册</a>
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
        $('.loginLabel .left i').click(function () {
            $(this).parents('.left').toggleClass('active');
            if ($(this).parents('.left').hasClass('active')) {
                $(this).html("&#xe9ed;")
            } else {
                $(this).html("&#xe9e9;")
            }
        })
        $(function () {
            //获取短信验证码
            var validCode = true;
            $(".code").click(function () {
                var time = 60;
                var code = $(this);
                if (validCode) {
                    validCode = false;
                    code.addClass("gray");
                    var t = setInterval(function () {
                        time--;
                        code.html(time + "秒后重发");
                        if (time == 0) {
                            clearInterval(t);
                            code.html("重新获取");
                            validCode = true;
                            code.removeClass("gray");

                        }
                    }, 1000)
                }
            })
        })

    </script>
</body>

</html>