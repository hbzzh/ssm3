<%--
  Created by IntelliJ IDEA.
  User: zhangzhenhua
  Date: 2019/1/17
  Time: 21:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>SSM 框架整合</title>
</head>
<body>
<script type="text/javascript" src="${pageContext.request.contextPath }/script/jquery-1.7.2.min.js"></script>
<script type="text/javascript">
    $(function(){
        $(".delA").click(function(){
            var flag=window.confirm("确认要删除吗？");
            if(!flag){
                return false;
            }
            //获取到当前点击的超链接的href的值
            var href=this.href;
            // 将href的值设置到form表单的action上并提交
            $("form").attr("action",href).submit();
            return false;
        });
    });

</script>
<form action="" method="post">
    <input type="hidden" name="_method" value="DELETE">
</form>
 <h1 align="center">用户信息列表</h1>
<table align="center" border="1px" width="70%" >
    <tr align="center">
        <td>ID</td>
        <td>UN</td>
        <td>XX</td>
    </tr>
<c:forEach items="${users}" var="user">
    <tr>
        <td>${user.id}</td>
        <td>${user.username}</td>
        <td align="center">
          <a href="${pageContext.request.contextPath }/getUserById?id=${user.id}">UPDATE</a>
          <a class="delA" href="${pageContext.request.contextPath }/user/${user.id}">DELETE</a>
        </td>
    </tr>
</c:forEach>
</table>

<%--<h2 align="center">--%>
    <%--<a href="${pageContext.request.contextPath }/users/1">首页</a>--%>
    <%--<c:if test="${info.hasPreviousPage }">--%>
        <%--<a href="${pageContext.request.contextPath }/users/${pageNum-1 }">上一页</a>&nbsp;&nbsp;--%>
    <%--</c:if>--%>
    <%--<c:if test="${!info.hasPreviousPage }">--%>
        <%--上一页&nbsp;&nbsp;--%>
    <%--</c:if>--%>
    <%--<c:forEach items="${info.navigatepageNums}" var="currPage">--%>
        <%--<c:if test="${info.pageNum==currPage }">--%>
            <%--<a href="${pageContext.request.contextPath }/users/${currPage}"><font color="green">${currPage }</font> </a>&nbsp;&nbsp;--%>
        <%--</c:if>--%>
        <%--<c:if test="${info.pageNum!=currPage }">--%>
            <%--<a href="${pageContext.request.contextPath }/users/${currPage}">${currPage }</a>&nbsp;&nbsp;--%>
        <%--</c:if>--%>
    <%--</c:forEach>--%>
    <%--<c:if test="${info.hasNextPage }">--%>
        <%--<a href="${pageContext.request.contextPath }/users/${pageNum+1 }">下一页</a>&nbsp;&nbsp;--%>
    <%--</c:if>--%>
    <%--<c:if test="${!info.hasNextPage }">--%>
        <%--下一页&nbsp;&nbsp;--%>
    <%--</c:if>--%>
    <%--<a href="${pageContext.request.contextPath }/users/${info.pages }">尾页</a>&nbsp;&nbsp;--%>
<%--</h2>--%>
<h2 align="center"><a href="${pageContext.request.contextPath }/add">ADD NEW ADMIN</a></h2>
</body>





</html>

