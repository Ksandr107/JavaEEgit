<%@ page import="java.util.ArrayList" %>
<%@ page import="models.User" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: ЦЕХ 10
  Date: 12.11.2019
  Time: 20:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Users</title>
</head>
<body>

    <form method="post" action="/signUp">
        <label for="name">User name
            <input id="name" type="text" name="name">
        </label>
        <label for="birthdate">Birth Date
            <input id="birthdate" type="text" name="birthDate">
        </label>
        <label for="password">Password
            <input id="password" type="password" name="password">
        </label>
        <input type="submit" value="Sign Up">
    </form>

    <%
        List<User> users = (ArrayList) request.getAttribute("usersFromServer");
    %>
    <table>
        <tr>
            <th>User Name</th>
            <th>Birth Day</th>
        </tr>
            <% for (User user : users) {
            %>
                <tr>
                    <td><%= user.getName()%></td>
                    <td><%= user.getBirthDate()%></td>
                </tr>
            <%}%>
    </table>
</body>
</html>
