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
    <a class="mui-action-back iconfont headerIco headLeft">&#xe792;</a>
    <h1 class="mui-title headTit headTitLabel">信用证明</h1>
    <a class="iconfont headerIco headRight headRightImg" href="javascript:;"><img src="images/icon-35.png"></a>
</header>
<div class="statisticsResult statisticsResult2">为你找到<i class="c-e70016">1258</i>家公司</div>
<div id="creditZMList" class="mui-scroll-wrapper mui-active searchListMargin searchListMargin2">
    <div class="mui-scroll">
        <ul class="mui-table-view searchList mainHref">

        </ul>
    </div>
</div>
<script src="js/public.scroll.js"></script>
<script>
    var targetToken = '#creditZMList';
    mui.init({
        pullRefresh: {
            container: targetToken,
            up: {
                contentrefresh: '正在加载...',
                callback: pullupRefresh
            }
        }
    });
    
    
</script>
</body>
</html>