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
        <td colspan="6" align="center" height="30px" id="shang">会议室预定信息表</td>
    </tr>
    <tr>
        <td>预定编号</td>
        <td>会议室</td>
        <td>预订人</td>
        <td>日期</td>
    </tr>
    <c:forEach items="${list}" var="list">
        <tr>
            <td>${ list.id }</td>
            <td>${ list.meetingName }</td>
            <td>${ list.advanceName }</td>
            <td><fmt:formatDate value="${ list.meetingOrder }" pattern="yyyy-MM-dd"/></td>
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
        </tr>
    </c:forEach>

</table>

</center>
<a href="/jsp/add.jsp">添加</a>
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
