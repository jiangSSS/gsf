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
    <script type="text/javascript" src="js/jquery.SuperSlide.2.1.1.js"></script>
</head>

<body>
    <header class="mui-bar mui-bar-nav header">
        <a class="mui-action-back iconfont headerIco headLeft">&#xe792;</a>
        <h1 class="mui-title headTit">失信名录</h1>
    </header>
    <section class="wb100 dis-ib conTop conBottom">
        <ul class="shopInspectForm">
            <li class="ListAfter"><span class="inName">选择高级法院</span><em class="inInput">请选择</em></li>
            <li class="ListAfter"><span class="inName">选择中级法院</span><em class="inInput">请选择</em></li>
            <li class="ListAfter"><span class="inName">选择低级法院</span><em class="inInput">请选择</em></li>
            <li><span class="inName">被执行人姓名/名称</span><input type="text" class="inInput wb50" placeholder="请输入"></li>
            <li><span class="inName">身份证/组织机构代码</span><input type="text" class="inInput wb50" placeholder="请输入"></li>
        </ul>
        <div class="buttonBIg buttonBIgWidth">
            <a href="breakList.asp">查询</a>
        </div>
    </section>
    
    <script>
        $('.shopInspectList li').click(function () {
            $(this).addClass('active').siblings().removeClass('active')
        })
    </script>
</body>

</html>