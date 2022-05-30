<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"
isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <title>Title</title>
</head>
<body>
<div>当前用户的姓名：${user.user_name}；用户状态：${user.user_state==1 ? '正常':'暂停'}。 <a href="${pageContext.request.contextPath}/logout.do">注销</a></div><br><br>
<div>用户列表： </div>
<table border="1">
    <tr>
        <th>登录名</th>
        <th>用户名</th>
        <th>用户状态</th>
        <th>操作</th>
    </tr>
    <c:forEach var="u" items="${userList}">
        <tr>
            <td>${u.user_code}</td>
            <td>${u.user_name}</td>
            <td>${u.user_state==1 ? '正常':'暂停'}</td>
            <td><a href="${pageContext.request.contextPath}/deluser.do?user_id=${u.user_id}">删除</a>
                <a href="${pageContext.request.contextPath}/edituser.html?user_id=${u.user_id}">编辑</a></td>
        </tr>
    </c:forEach>
</table>
<br>
<a href="${pageContext.request.contextPath}/adduser.html">添加用户</a>
</body>
</html>
