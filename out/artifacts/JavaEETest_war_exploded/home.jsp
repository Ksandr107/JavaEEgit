<%--
  Created by IntelliJ IDEA.
  User: ЦЕХ 10
  Date: 02.12.2019
  Time: 21:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
 <h1>We were forwarded here </h1>
<h2>From Cooccee page !)))</h2>
 <h1><span style="color: ${cookie.color.value}">Hello JavaEE</span></h1>
<form method="post" action="/home">
    <label for="color">
        <select name="color" id="color">
            <option value="red">Красный</option>
            <option value="blue">Синий</option>
            <option value="yellow">Жёлтый</option>
        </select>
        <input type="submit" value="Color send">
    </label>
</form>

</body>
</html>
