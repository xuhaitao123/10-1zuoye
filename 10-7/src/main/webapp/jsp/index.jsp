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
        <p>类型<select name="typeid">
            <option value="">全部</option>
            <option value="1">支出</option>
            <option value="2">收入</option>
            <option value="3">转账</option>
            <option value="4">借出</option>
            <option value="5">借入</option>
            <option value="6">还出</option>
            <option value="7">还入</option>
        </select>
            &nbsp;&nbsp;时间：从<input type="text" name="billtime">到<input type="text" name="billtime1">
            <input value="搜索" type="submit">&nbsp;&nbsp;&nbsp; <input value="记账" type="button">
        </p>
    </form>
    <table border="1px" align="center">
        <tr>
            <td colspan="5" align="center" height="30px" id="shang">项目信息表</td>
        </tr>
        <tr>
            <td>标题</td>
            <td>记账时间</td>
            <td>类别</td>
            <td>金额</td>
            <td>说明</td>
        </tr>
        <c:forEach items="${list}" var="list">
            <tr>
                <td>${ list.title }</td>
                <td><fmt:formatDate value="${ list.billtime }" pattern="yyyy-MM-dd"/></td>
                <td>
                    <c:if test="${ list.typeid ==1}">
                        支出
                    </c:if>
                    <c:if test="${ list.typeid ==2}">
                        收入
                    </c:if>
                    <c:if test="${ list.typeid ==3}">
                        转账
                    </c:if>
                    <c:if test="${ list.typeid ==4}">
                        借出
                    </c:if>
                    <c:if test="${ list.typeid ==5}">
                        借入
                    </c:if>
                    <c:if test="${ list.typeid ==6}">
                        还出
                    </c:if>
                    <c:if test="${ list.typeid ==7}">
                        还入
                    </c:if>
                </td>
                <td>${ list.price }</td>
                <td>${ list.explai }</td>
            </tr>
        </c:forEach>
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
