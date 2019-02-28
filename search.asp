<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>信用查</title>
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
    <script type="text/javascript" src="js/rem.js"></script>
    <link rel="stylesheet" href="css/mui.min.css" />
    <link rel="stylesheet" href="css/base.css" />
    <link rel="stylesheet" href="css/style.css" />
    <script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>
    <script type="text/javascript" src="js/mui.min.js"></script>
</head>
<body>
<header class="mui-bar mui-bar-nav header">
    <a class="iconfont headerIco headLeft">&#xe792;</a>
    <div class="headerSerach headerSerachCenter" onclick="javascript:window.location.href='searchList.asp'">
        <input type="search" class="headerSerachText" placeholder="腾讯科技">
        <button class="headerSerachBtn"></button>
    </div>
    <a class="iconfont headerIco headRight headRightText">排序</a>
</header>
<div class="screenHead">
    <span class="label provinces"><em>省份地区</em><i class="iconfont">&#xe628;</i></span>
    <span class="label guild"><em>行业分类</em><i class="iconfont">&#xe628;</i></span>
    <span class="label moreScreen"><em>更多筛选</em><i class="iconfont">&#xe628;</i></span>
</div>
<div class="statisticsResult">为你找到<i class="c-e70016">1258</i>家公司<!--<a href="JavaScript:;" class="batch">批量导出</a>--></div>
<div id="searchList" class="mui-scroll-wrapper mui-active searchListMargin">
    <div class="mui-scroll">
        <ul class="mui-table-view searchList mainHref">

        </ul>
    </div>
</div>
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
<!--行业分类-->
<div class="searchLayerCon guildLayer">
    <div class="layerBack"></div>
    <div class="searchLayer">
        <div class="leftOne">
            <ul>
                <li>全部行业</li>
                <li>采矿业</li>
                <li>制造业</li>
                <li>建筑业</li>
                <li>批发和零售业</li>
                <li>住宿餐饮业</li>
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
                <li>全部行业</li>
                <li>房屋建筑业</li>
                <li>土木工程建筑业</li>
                <li>建筑安装业</li>
            </ul>
        </div>
    </div>
</div>
<!--end-->
<!--更多筛选-->
<div class="searchLayerCon moreScreenLayer">
    <div class="layerBack"></div>
    <div class="searchLayer">
        <ul class="moreScreenList">
            <li>
                <h5 class="title">企业状态：<em class="arrow"></em></h5>
                <div class="label">
                    <span>不限</span>
                    <span>在营</span>
                    <span>吊销</span>
                    <span>迁出</span>
                </div>
            </li>
            <li>
                <h5 class="title">注册资本：<em class="arrow"></em></h5>
                <div class="label">
                    <span>不限</span>
                    <span>0-100万</span>
                    <span>100-200万</span>
                    <span>500-1000万</span>
                    <span>200-500万</span>
                    <span>1000万以上</span>
                </div>
            </li>
            <li>
                <h5 class="title">成立年限：<em class="arrow"></em></h5>
                <div class="label">
                    <span>不限</span>
                    <span>1年内</span>
                    <span>1-5年</span>
                    <span>15年以上</span>
                </div>
            </li>
            <li>
                <h5 class="title">信用分：<em class="arrow"></em></h5>
                <div class="label">
                    <span>不限</span>
                    <span>60分以下</span>
                    <span>60-70分</span>
                    <span>85分以上</span>
                </div>
            </li>
        </ul>
        <div class="vipTip"><a href="javascript:;">开通VIP</a> 更多筛选特权</div>
        <div class="buttonBIg buttonBIgTwo">
            <a href="javascript:;" class="fl shallow" id="productBtn">重置</a>
            <a href="javascript:;" class="fr" id="nodesBtn">确定</a>
        </div>
    </div>
</div>
<!--end-->
<script src="js/public.scroll.js"></script>
<script>
    var targetToken = '#searchList';
    mui.init({
        pullRefresh: {
            container: targetToken,
            up: {
                contentrefresh: '正在加载...',
                callback: pullupRefresh
            }
        }
    });
    $('.provinces').click(function(){
        $(this).addClass('active').siblings().removeClass('active');
        $('.searchLayerCon').hide();
        $('.provincesLayer').toggle()
    })
    $('.guild').click(function () {
        $(this).addClass('active').siblings().removeClass('active');
        $('.searchLayerCon').hide();
        $('.guildLayer').toggle()
    })
    $('.provincesLayer .leftOne li,.provincesLayer .leftTwo li,.provincesLayer .leftThree li,.guildLayer .leftOne li,.guildLayer .leftTwo li').click(function () {
        $(this).addClass('active').siblings().removeClass('active')
    })
    $('.provincesLayer .leftThree li').click(function () {
        $('.provincesLayer').toggle()
        $('.provinces em').html($(this).html())
        $('.screenHead .label').removeClass('active')
    })
    $('.guildLayer .leftTwo li').click(function () {
        $('.guildLayer').toggle()
        $('.guild em').html($(this).html())
        $('.screenHead .label').removeClass('active')
    })
    $('.moreScreenList li .label span').click(function () {
        $(this).addClass('active').siblings().removeClass('active')
    })
    $('.moreScreen').click(function () {
        $('.searchLayerCon').hide();
        $('.moreScreenLayer').toggle()
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