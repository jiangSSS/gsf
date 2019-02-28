<%
	if  Trim(Request("action")) <>"" then 
			action = Trim(Request("action"))  
		else 
			action="infor1"
	end if
	Execute action	
%>
<%sub searchList%>
<%for i=1 to 5%>
<li>
    <a href="company.asp" class="listItem">
        <div class="searchListTop">
            <div class="photo"><img src="images/logo/logo-1.png"></div>
            <h5 class="title">腾讯科技（上海）有限公司</h5>
            <div class="info">
                <span>信用查认证</span>
                <em>98分</em>
            </div>
            <span class="label">在营</span>
        </div>
        <div class="searchListBottom">
            <span class="labelList">
                <em>法定代表人</em>
                <i class="c-e70016">奚丹</i>
            </span>
            <span class="labelList">
                <em>注册资本</em>
                <i>500万美元</i>
            </span>
            <span class="labelList">
                <em>成立日期</em>
                <i>2008-07-23</i>
            </span>
        </div>
    </a>
</li>
<li>
    <a href="company.asp" class="listItem">
        <div class="searchListTop">
            <div class="photo"><img src="images/logo/logo-2.png"></div>
            <h5 class="title">腾讯科技（上海）有限公司</h5>
            <span class="label">吊销</span>
        </div>
        <div class="searchListBottom">
            <span class="labelList">
                <em>法定代表人</em>
                <i class="c-e70016">--</i>
            </span>
            <span class="labelList">
                <em>注册资本</em>
                <i>--</i>
            </span>
            <span class="labelList">
                <em>成立日期</em>
                <i>2013-08-26</i>
            </span>
        </div>
    </a>
</li>
<%next%>
<%end sub%>


<%sub creditZMList%>
<%for i=1 to 5%>
<li>
    <a href="creditPay.asp" class="listItem">
        <div class="searchListTop">
            <div class="photo"><img src="images/logo/logo-1.png"></div>
            <h5 class="title">腾讯科技（上海）有限公司</h5>
            <span class="label">在业</span>
        </div>
        <div class="searchListBottom">
            <span class="labelList">
                <em>法定代表人</em>
                <i class="c-e70016">奚丹</i>
            </span>
            <span class="labelList">
                <em>注册资本</em>
                <i>500万美元</i>
            </span>
            <span class="labelList">
                <em>成立日期</em>
                <i>2008-07-23</i>
            </span>
        </div>
        <div class="creditLine"></div>
        <div class="creditBtton" onclick="javascript:window.location.href='creditPay.asp'">信用证明</div>
    </a>
</li>
<li>
    <a href="creditPay.asp" class="listItem">
        <div class="searchListTop">
            <div class="photo"><img src="images/logo/logo-2.png"></div>
            <h5 class="title">腾讯科技（上海）有限公司</h5>
            <span class="label">存续</span>
        </div>
        <div class="searchListBottom">
            <span class="labelList">
                <em>法定代表人</em>
                <i class="c-e70016">--</i>
            </span>
            <span class="labelList">
                <em>注册资本</em>
                <i>--</i>
            </span>
            <span class="labelList">
                <em>成立日期</em>
                <i>2013-08-26</i>
            </span>
        </div>
        <div class="creditLine"></div>
        <div class="creditBtton" onclick="javascript:window.location.href='creditPay.asp'">信用证明</div>
    </a>
</li>
<%next%>
<%end sub%>
<%sub publicUnitList%>
<li>
    <a href="publicDetails.asp">
        <div class="title"> 
            <span>中国互联网金融协会</span>
            <em class="c-e70016">正常</em>
        </div>
        <div class="label">
            <div class="labelList">
                <span>统一社会信用代码</span>
                <em>51100000MJ0000632D</em>
            </div>
            <div class="labelList">
                <span>社会组织类型</span>
                <em>社会团体</em>
            </div>
            <div class="labelList">
                <span>法定代表人</span>
                <em>李希贵</em>
            </div>
        </div>
    </a>
</li>
<li>
    <a href="publicDetails.asp">
        <div class="title">
            <span>中国互联网金融协会</span>
            <em class="c-ff7e00">注销</em>
        </div>
        <div class="label">
            <div class="labelList">
                <span>统一社会信用代码</span>
                <em>51100000MJ0000632D</em>
            </div>
            <div class="labelList">
                <span>社会组织类型</span>
                <em>社会团体</em>
            </div>
            <div class="labelList">
                <span>法定代表人</span>
                <em>李希贵</em>
            </div>
        </div>
    </a>
</li>
<li>
    <a href="publicDetails.asp">
        <div class="title">
            <span>中国互联网金融协会</span>
            <em class="c-999">撤销</em>
        </div>
        <div class="label">
            <div class="labelList">
                <span>统一社会信用代码</span>
                <em>51100000MJ0000632D</em>
            </div>
            <div class="labelList">
                <span>社会组织类型</span>
                <em>社会团体</em>
            </div>
            <div class="labelList">
                <span>法定代表人</span>
                <em>李希贵</em>
            </div>
        </div>
    </a>
</li>
<%end sub%>


<%sub breakList%>
<%for i=1 to 5%>
<li>
    <a href="publicDetails.asp">
        <div class="title">
            <span>张三丰</span>
            <em class="c-999">立案时间：2016-12-20</em>
        </div>
        <div class="label">
            <div class="labelList">案号：（2015）穗越法执字第8564号</div>
            <div class="labelList">广州采芝林药业连锁店</div>
        </div>
    </a>
</li>
<%next%>
<%end sub%>
