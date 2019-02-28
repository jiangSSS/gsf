<%
url = Request.ServerVariables("URL")
%>
<footer class="footer">
    <a href="index.asp" class="<%if url = "/index.asp" or url = "/" then response.Write("mui-active") %>">
        <span class="iconfont footHome"></span>
        <p>首页</p>
    </a>
    <a href="creditZM.asp">
        <span class="iconfont footTestify"></span>
        <p>信用证明</p>
    </a>
    <a href="javascript:;">
        <span class="iconfont footHeadlines"></span>
        <p>信用头条</p>
    </a>
    <a href="login.asp">
        <span class="iconfont footMy"></span>
        <p>我的</p>
    </a>
</footer>