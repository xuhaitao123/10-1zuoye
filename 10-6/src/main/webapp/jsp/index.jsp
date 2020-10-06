<%--
  Created by IntelliJ IDEA.
  User: acer
  Date: 2020/10/6
  Time: 16:48
  To change this template use File | Settings | File Templates.
--%>
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
    <form action="/index" method="post">
        <p>申报状态<select name="status">
            <option value="">全部</option>
            <option value="0">已申报</option>
            <option value="1">审核中</option>
            <option value="2">已审核</option>
        </select>
        <input value="查询" type="submit">
        </p>
    </form>
    <table border="1px" align="center">
        <tr>
            <td colspan="7" align="center" height="30px" id="shang">项目信息表</td>
        </tr>
        <tr>
            <td>项目编号</td>
            <td>项目名称</td>
            <td>申报开始日期</td>
            <td>申报结束日期</td>
            <td>申报状态</td>
            <td>操作</td>
        </tr>
        <c:forEach items="${pageInfo.list}" var="list">
            <tr>
                <td>${ list.id }</td>
                <td>${ list.projectname }</td>
                <td><fmt:formatDate value="${ list.startdate }" pattern="yyyy-MM-dd"/></td>
                <td><fmt:formatDate value="${ list.enddate }" pattern="yyyy-MM-dd"/></td>
                <td>
                    <c:if test="${ list.status ==0}">
                        已申报
                    </c:if>
                    <c:if test="${ list.status ==1}">
                        审核中
                    </c:if>
                    <c:if test="${ list.status ==2}">
                        已审核
                    </c:if>
                </td>
                <td><c:if test="${ list.status ==0}">
                    <a href="/xiu?id=${list.id}">审核</a>
                </c:if>
                    </td>
            </tr>
        </c:forEach>
        <div style="margin-top: 30px;border-style: inset  ">
            <a href="/index?pageIndex=${pageInfo.firstPage}">首页</a>
            <c:if test="${pageInfo.hasPreviousPage}">
                <a href="/index?pageIndex=${pageInfo.prePage}">上一页</a>
            </c:if>
            <c:forEach items="${pageInfo.navigatepageNums}" var="i">
                <a href="/index?pageIndex=${i}">${i}</a>
            </c:forEach>
            <c:if test="${pageInfo.hasNextPage}">
                <a href="/index?pageIndex=${pageInfo.nextPage}">下一页</a>
            </c:if>
            <a href="/index?pageIndex=${pageInfo.lastPage}">尾页</a>
        </div>
    </table>

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
