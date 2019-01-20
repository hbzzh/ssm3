<%--
  Created by IntelliJ IDEA.
  User: zhangzhenhua
  Date: 2019/1/20
  Time: 17:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div id="add">
    <form action="/addUser" method="post">
        姓名：<input type="text" name="username" value=""/><br/>
        <button type="submit">添加</button>
    </form>
</div>
</body>
</html>
