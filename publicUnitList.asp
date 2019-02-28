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
    <header class="mui-bar mui-bar-nav header">
        <a class="iconfont headerIco headLeft">&#xe792;</a>
        <h1 class="mui-title headTit">公共单位查询</h1>
    </header>
    <div class="statisticsResult publicUnitListTip">搜索到符合条件的社会组织共<i class="c-e70016">18</i>个
        <a href="JavaScript:;" class="scree">筛选</a>
    </div>
    <div id="publicUnitList" class="mui-scroll-wrapper mui-active searchListMargin publicUnitListTop">
        <div class="mui-scroll">
            <ul class="mui-table-view publicUnitList mainHref">

            </ul>
        </div>
    </div>
    <script src="js/public.scroll.js"></script>
    <script>
        var targetToken = '#publicUnitList';
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