<%--
  Created by IntelliJ IDEA.
  User: ЦЕХ 10
  Date: 12.11.2019
  Time: 20:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>FirstJSP</title>
</head>
<body>
    <h1><%="Testing for GET queries" %></h1>
    <% String name = request.getParameter("name"); %>
    <%= "Output by JSP" +  name %>
</body>
</html>
