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
    <header class="mui-bar mui-bar-nav header">
        <a class="iconfont headerIco headLeft">&#xe792;</a>
        <h1 class="mui-title headTit">公共单位查询</h1>
    </header>
    <div class="screenHead screenHeadTwo">
        <span class="label provinces"><em>行政区划</em><i class="iconfont">&#xe628;</i></span>
        <span class="label moreScreen"><em>类型</em><i class="iconfont">&#xe628;</i></span>
    </div>
    <section class="wb100 dis-ib conTopSearch">
        <div class="foodSearch foodSearch2">
            <input type="text" class="foodSearchText" placeholder="请输入社会组织名称或统一社会信用代码">
        </div>
        <div class="foodSearch foodSearch3">
            <input type="text" class="foodSearchText" placeholder="成立登记日期">
        </div>
        <div class="foodSearchCon">
            <h5 class="foodSearchTitle">状态：</h5>
            <div class="stateCheck">
                <label class="active"><i class="iconfont"></i><em>全部</em></label>
                <label><i class="iconfont"></i><em>正常</em></label>
                <label><i class="iconfont"></i><em>注销</em></label>
                <label><i class="iconfont"></i><em>撤销</em></label>
            </div>
            <div class="buttonBIg">
                <a href="publicUnitList.asp">查询</a>
            </div>
        </div>
    
    </section>
    <!--省份地区-->
    <div class="searchLayerCon provincesLayer">
        <div class="layerBack"></div>
        <div class="searchLayer">
            <div class="leftOne">
                <ul>
                    <li>不限</li>
                    <li>北京市</li>
                    <li>上海市</li>
                    <li>河北省</li>
                    <li>山西省</li>
                    <li>河北省</li>
                    <li>山西省</li>
                    <li>河北省</li>
                    <li>山西省</li>
                    <li>山西省</li>
                    <li>河北省</li>
                    <li>山西省</li>
                </ul>
            </div>
            <div class="leftTwo">
                <ul>
                    <li>北京市</li>
                </ul>
            </div>
            <div class="leftThree">
                <ul>
                    <li>海淀区</li>
                    <li>朝阳区</li>
                    <li>昌平区</li>
                </ul>
            </div>
        </div>
    </div>
    <!--end-->
    <!--类型-->
    <div class="searchLayerCon moreScreenLayer classiferLayer">
        <div class="layerBack"></div>
        <div class="searchLayer">
            <ul class="moreScreenList">
                <li>
                    <div class="label">
                        <span>社会团体</span>
                        <span>事业单位</span>
                        <span>国家机关</span>
                    </div>
                </li>
            </ul>
        </div>
    </div>
    <!--end-->
    <script>
        $('.stateCheck label').click(function(){
            $(this).addClass('active').siblings().removeClass('active');
        })
        $('.provinces').click(function () {
            $(this).addClass('active').siblings().removeClass('active');
            $('.searchLayerCon').hide();
            $('.provincesLayer').toggle()
        })
        
        $('.provincesLayer .leftOne li,.provincesLayer .leftTwo li,.provincesLayer .leftThree li').click(function () {
            $(this).addClass('active').siblings().removeClass('active')
        })
        $('.provincesLayer .leftThree li').click(function () {
            $('.provincesLayer').toggle()
            $('.provinces em').html($(this).html())
            $('.screenHead .label').removeClass('active')
        })
        
        $('.moreScreenList li .label span').click(function () {
            $('.moreScreenLayer').toggle()
            $('.moreScreen em').html($(this).html())
            $(this).addClass('active').siblings().removeClass('active')   
            $('.screenHead .label').removeClass('active')
        })
        $('.moreScreen').click(function () {
            $('.searchLayerCon').hide();
            $('.moreScreenLayer').toggle();
            $(this).addClass('active').siblings().removeClass('active');
        })
        $('.buttonBIg a').click(function () {
            $('.moreScreenLayer').toggle()
        })
        $('.layerBack').click(function () {
            $('.searchLayerCon').hide()
        })
    </script>
</body>

</html>