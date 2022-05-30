<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"
         isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>修改用户</title>
</head>
<body>
  <div>
    <form action="${pageContext.request.contextPath}/edituser.do" method="post">
      <input type="hidden" name="user_id" value="${editUser.user_id}"/>
      <table>
        <tr><td>登录名：</td><td>${editUser.user_code}</td></tr>
        <tr><td>用户名：</td><td><input type="text" name="user_name" value="${editUser.user_name}"/></td></tr>
        <tr><td>密码：</td><td><input type="password" name="user_password" value="${editUser.user_password}"/></td></tr>
        <tr>
          <td>用户状态：</td>
          <td>
            <select name="user_state">
              <c:if test="${editUser.user_state == 1}">
                <option value="1" selected>正常</option>
                <option value="0">暂停</option>
              </c:if>

              <c:if test="${editUser.user_state == 0}">
                <option value="1">正常</option>
                <option value="0" selected>暂停</option>
              </c:if>
            </select>
          </td>
        </tr>
        <tr>
          <td>
            <input type="submit" value="提交修改"/>
          </td>
        </tr>
      </table>
    </form>
  </div>
</body>
</html>
