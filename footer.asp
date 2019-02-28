<%
url = Request.ServerVariables("URL")
%>
<footer class="footer">
    <a href="creditZM.asp" class="<%if url = "/index.asp" or url = "/atajs/" then response.Write("mui-active") %>">
        <span class="iconfont footProve"></span>
        <p>信用证明</p>
    </a>
    <a href="credit.asp">
        <span class="iconfont footReport"></span>
        <p>信用报告</p>
    </a>
    <a href="javascript:;">
        <span class="iconfont footFollow"></span>
        <p>关注</p>
    </a>
    <a href="javascript:;">
        <span class="iconfont footMonitor"></span>
        <p>监控</p>
    </a>
</footer>