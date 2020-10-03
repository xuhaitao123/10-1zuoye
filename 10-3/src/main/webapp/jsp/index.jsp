<%--
  Created by IntelliJ IDEA.
  User: acer
  Date: 2020/9/28
  Time: 17:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
    <script type="text/javascript" src="/static/js/jquery-1.12.4.js"></script>
</head>
<body>
<center>
<table border="1px" align="center">
    <tr>
        <td colspan="7" align="center" height="30px" id="shang">人员信息表</td>
    </tr>
    <tr>
        <td>编号</td>
        <td>姓名</td>
        <td>性别</td>
        <td>年龄</td>
        <td>等级</td>
        <td>部门</td>
        <td>操作</td>
    </tr>
    <c:forEach items="${list}" var="list">
        <tr>
            <td>${ list.id }</td>
            <td>${ list.name }</td>
            <td>${ list.sex }</td>
            <td>${ list.age }</td>
            <td>${ list.rank }</td>
            <td>${ list.department }</td>
            <%--<td><fmt:formatDate value="${ list.meetingOrder }" pattern="yyyy-MM-dd"/></td>--%>
           <%-- <td>
                <c:if test="${ list.status==1}">
                    正常
                </c:if>
                <c:if test="${ list.status==2}">
                    迟到
                </c:if>
                <c:if test="${ list.status==3}">
                    早退
                </c:if>
                <c:if test="${ list.status==4}">
                    休假
                </c:if>
                <c:if test="${ list.status==5}">
                    外出
                </c:if>

            </td>--%>
            <td><a href="/dele?id=${list.id}">删除</a></td>
        </tr>
    </c:forEach>

</table>
<input type="button" value="添加人员">
</center>
<script type="text/javascript">
    $("[type='button']").click(function () {
        location.href="/jsp/add.jsp";
    })
    $("tr:even").css("background-color","#CCF6CE");
    $("#shang").css("background-color","#09F7C7");
    $("#title").css("background-color","white");
</script>
</body>
</html>
