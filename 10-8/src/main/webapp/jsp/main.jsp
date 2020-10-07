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
            <td colspan="7" align="center" height="30px" id="shang">项目信息表</td>
        </tr>
        <tr>
            <td>编号</td>
            <td>商品名称</td>
            <td>商品价格</td>
            <td>库存数量</td>
            <td>订单状态</td>
            <td>交易时间</td>
            <td>操作</td>
        </tr>
        <c:forEach items="${list}" var="list">
            <tr>
                <td>${ list.id }</td>
                <td>${ list.goodsname }</td>
                <td>${ list.goodsprice }<span>元</span></td>
                <td>${ list.goodscount }</td>
                <td>
                    <c:if test="${ list.billstatus ==0}">
                        待处理
                    </c:if>
                    <c:if test="${ list.billstatus ==1}">
                        处理中
                    </c:if>
                    <c:if test="${ list.billstatus ==2}">
                        已处理
                    </c:if>
                </td>


                <td><fmt:formatDate value="${ list.creationtime }" pattern="yyyy-MM-dd"/></td>
                <td><a href="xiu?id=${list.id}">修改</a></td>
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
