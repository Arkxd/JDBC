<%--
  Created by IntelliJ IDEA.
  User: Arkxd
  Date: 2023/5/12
  Time: 8:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="login/login.jsp" method="post">
    <table align="center" width="300" border="1" height="150">
        <tr>
            <td colspan="2" align="center"><b>登录页面</b></td>
        </tr>
        <tr>
            <td align="right">用户名：<input type="text" name="sname"></input></td>
        </tr>
        <tr>
            <td align="right">密码：<input type="text" name="passwd"></input></td>
        </tr>
        <tr>
            <td colspan="2" align="center"><input type="submit"/></td>
        </tr>
    </table>
</form>
</body>
</html>
