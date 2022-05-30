<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加</title>
</head>
<body>
<div>
	<form action="${pageContext.request.contextPath}/adduser.do" method="post">
		<table >
			<tr>
				<td>登录名：</td> <td><input type="text" name="user_code"/></td>
			</tr>
			<tr>
				<td>用户名：</td> <td><input type="text" name="user_name"/></td>
			</tr>
			<tr>
				<td>密码：</td>  <td><input type="password" name="user_password"/></td>
			</tr>
			<tr>
				<td>用户状态：</td>
				<td> 
					<select name="user_state">
						<option value="1">正常</option>
						<option value="0">暂停</option>
					</select>
				</td>
			</tr>
			<tr>
				<td> 
					<input type="submit" value="添加"/>
				</td>
			</tr>
		</table>
	</form>
</div>
</body>
</html>