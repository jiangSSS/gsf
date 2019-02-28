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
    <style>
    input[type=checkbox], input[type=radio] { -webkit-appearance: checkbox;}
    </style>
</head>
<body style="background: #fff;">
<header class="mui-bar mui-bar-nav header">
    <a class="mui-action-back iconfont headerIco headLeft">&#xe792;</a>
    <h1 class="mui-title headTit headTitLabel">信用报告</h1>
    <a class="iconfont headerIco headRight headRightImg" href="javascript:;"><img src="images/icon-35.png"></a>
</header>
<div class="statisticsResult statisticsResult2 credit">
	<h5 class="title">订单：小米科技公司报告PDF</h5>
</div>
<div class="searchListMargin2">
	<div class="creditPDF"></div>
	<div class="creditEmail">
		<input type="email" placeholder="填写邮箱地址">
		<button id="toastBtn" type="button" class="mui-btn Creditbotton fr">发送邮箱</button>
	</div>	
	
</div>
<script src="../js/mui.min.js"></script>
	<script type="text/javascript" charset="utf-8">
		 //mui初始化
		mui.init({
			swipeBack: true //启用右滑关闭功能
		});
		document.getElementById("toastBtn").addEventListener('tap', function() {
			mui.toast('邮件发送成功');
		});
	</script>
</body>
</html>