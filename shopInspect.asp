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
        <h1 class="mui-title headTit">商品抽检</h1>
        <a class="mui-action-back iconfont headerIco headRight headRightImg"><img src="images/icon-35.png"></a>
    </header>
    <section class="wb100 dis-ib conTop conBottom">
        <div class="companyWrap shopInspect">
            <h3 class="companyTitle">国家食品安全监督抽检</h3>
            <ul class="shopInspectList">
                <li>
                    <span>合格产品</span>
                    <em>175427</em>
                </li>
                <li>
                    <span>不合格产品</span>
                    <em>175427</em>
                </li>
            </ul>
        </div>
        <div class="companyWrap shopInspect">
            <h3 class="companyTitle">国家保健食品安全监督抽检</h3>
            <ul class="shopInspectList">
                <li>
                    <span>合格产品</span>
                    <em>175427</em>
                </li>
                <li>
                    <span>不合格产品</span>
                    <em>175427</em>
                </li>
            </ul>
        </div>
        <div class="companyWrap shopInspect">
            <h3 class="companyTitle">省级食品安全监督抽检</h3>
            <ul class="shopInspectList">
                <li>
                    <span>合格产品</span>
                    <em>175427</em>
                </li>
                <li>
                    <span>不合格产品</span>
                    <em>175427</em>
                </li>
            </ul>
        </div>
        <ul class="shopInspectForm">
            <li><span class="inName">企业名称</span><input type="text" class="inInput" placeholder="请输入企业名称"></li>
            <li><span class="inName">企业名称</span><input type="text" class="inInput" placeholder="请输入产品名称"></li>
            <li class="ListAfter"><span class="inName">企业名称</span><input type="text" class="inInput" placeholder="请选择商品类别"></li>
        </ul>
    </section>
    <a href="shopInspectList.asp" class="spaceFoot shopInspectFoot">查询</a>
    <script>
        $('.shopInspectList li').click(function(){
            $(this).addClass('active').siblings().removeClass('active')
        })
    </script>
</body>
</html>