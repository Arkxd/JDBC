<%--
  Created by IntelliJ IDEA.
  User: Arkxd
  Date: 2023/5/12
  Time: 9:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String BMI = (String) request.getAttribute("BMI");
    String result = (String) request.getAttribute("result");

    out.println("<html>");
    out.println("<body>");
    out.println("<center>");
    out.println("您的的BMI指数为：" + "<font color=red>" + BMI + "</font><br>");
    out.println(result);
    out.println("</center>");
%>
</body>
</html>
