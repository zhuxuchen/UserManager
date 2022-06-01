<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8"
         isELIgnored="false" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>云借阅-图书管理系统</title>
    <link rel="stylesheet" type="text/css" href="css/webbase.css">
    <link rel="stylesheet" type="text/css" href="css/pages-login-manage.css">
    <script type="text/javascript" src="js/jquery.min.js"></script>
</head>
<body>
<div class="loginmanage">
    <div class="py-container">
        <h4 class="manage-title">云借阅-图书管理系统</h4>
        <div class="loginform">
            <ul class="sui-nav nav-tabs tab-wraped">
                <li class="active">
                    <h3>账户登录</h3>
                </li>
            </ul>
            <div class="tab-content tab-wraped">

                <span style="color: red">>${msg}</span>

                <div id="profile" class="tab-pane  active">
                    <form id="loginform" class="sui-form" action="${ pageContext.request.contextPath}/login.do" method="post">
                        <div class="input-prepend"><span class="add-on loginname">用户名</span>
                            <input type="text" placeholder="用户名" class="span2 input-xfat" name="user_code">
                        </div>
                        <div class="input-prepend"><span class="add-on loginpwd">密码</span>
                            <input type="password" placeholder="请输入密码" class="span2 input-xfat" name="user_password">
                        </div>
                        <div class="logined">
                            <a class="sui-btn btn-block btn-xlarge btn-danger" href="javascript:document:loginform.submit();" target="_self">登&nbsp;&nbsp;录</a>
                        </div>
                    </form>
                </div>

<%--                <form action="${ pageContext.request.contextPath}/login.do" method="post">--%>
<%--                    <label>用户名：</label><input type="text" name="user_code"/><br>--%>
<%--                    <label>密码：</label><input type="password" name="user_password"/><br>--%>
<%--                    <input type="submit" value="登录"/>--%>
<%--                </form>--%>
                </form>
            </div>
        </div>
    </div>
</div>
</div>
</body>
</html>
