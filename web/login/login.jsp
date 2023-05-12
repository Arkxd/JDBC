<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%--
  Created by IntelliJ IDEA.
  User: Arkxd
  Date: 2023/5/11
  Time: 8:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String sname = request.getParameter("sname");
    String username = request.getParameter("passwd");
    String sql = "select * from mydb.student where name= '" + sname + "'" + "and username='" + username + "'";
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb?serverTimezone=UTC", "root", "1234");
    Statement statement = connection.createStatement();
    ResultSet resultSet = statement.executeQuery(sql);
    if (resultSet.next()) {
%>
<jsp:forward page="main.jsp">
    <jsp:param name="sname" value="<%=sname%>"/>
</jsp:forward>
<% } else { %>
<jsp:forward page="fail.jsp"/>
<%
    }
%>
</body>
</html>
