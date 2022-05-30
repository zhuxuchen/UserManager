<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8"
         isELIgnored="false" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>登录页面</title>
</head>
<body>
    <h1 style="color: red;">${msg}</h1>
    <form action="${ pageContext.request.contextPath}/login.do" method="post">
        <label>用户名：</label><input type="text" name="user_code"/><br>
        <label>密码：</label><input type="password" name="user_password"/><br>
        <input type="submit" value="登录"/>
    </form>
</body>
</html>
