<%--
  Created by IntelliJ IDEA.
  User: zhangzhenhua
  Date: 2019/1/18
  Time: 21:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Title</title>
</head>
<body>
  <c:if test="${empty user.id}" var="isAdd">
    <h1>添加用户</h1>
  </c:if>
<c:if test="${!isAdd}">
    <h1>更新用户</h1>
</c:if>

<form:form action="${pageContext.request.contextPath}/user" method="post" modelAttribute="user">
  <c:if test="${isAdd}">
      <input type="hidden" name="_method" value="PUT">
      <%--<form:hidden path="id"/>--%>
  </c:if>
    username:<form:input path="username"/>
    <c:if test="${isAdd}">
        <input type="submit" value="添加">
    </c:if>
    <c:if test="${!isAdd}">
        <input type="submit" value="修改">
    </c:if>
</form:form>

</body>
</html>
