<%--
  Created by IntelliJ IDEA.
  User: zhangzhenhua
  Date: 2019/1/20
  Time: 17:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div id="edit">
    <form action="/update" method="post">
        姓名：<input type="text" name="username" value="${user.username}"/><br/>
        <input type="hidden" value="${user.id}" name="id">
        <button  type="submit" value="">修改</button>
    </form>
</div>

</body>
</html>
