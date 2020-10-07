<%--
  Created by IntelliJ IDEA.
  User: acer
  Date: 2020/9/22
  Time: 8:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="/static/js/jquery-1.12.4.js"></script>
</head>
<body>
<form action="/update?id=${ cha.id }" method="post">
    <table border="1px" align="center">

        <tr align="center">
            <td colspan="6" style="font-size: 30px;">修改订单</td>
        </tr>

        <tr>
            <td> 商品编号：<input type="text" name="id" style="height: 20px" value="${cha.id}"></td>
        </tr>
        <tr >
            <td> 商品名称：<input type="text" name="goodsname" style="height: 20px" value="${cha.goodsname}"></td>
        </tr>
        <tr >
            <td> 商品价格：<input type="text" name="goodsprice" style="height: 20px" value="${cha.goodsprice}"></td>
        </tr>
        <tr >
            <td> 库存数量：<input type="text" name="goodscount" style="height: 20px" value="${cha.goodscount}"></td>
        </tr>
        <tr >
            <td> 订单状态：<select name="billstatus">
                    <option value="${cha.billstatus}" class="a">
                        <c:if test="${cha.billstatus==0}">待处理</c:if>
                        <c:if test="${cha.billstatus==1}">处理中</c:if>
                        <c:if test="${cha.billstatus==2}">已处理</c:if>
                    </option>
                    <option value="0" class="b">待处理</option>
                    <option value="1" class="c">处理中</option>
                    <option value="2" class="d">已处理</option>
                </select>
        </tr>
        <tr>
            <td> 订单时间：<input type="text" name="creationtime" style="height: 20px" value=" <fmt:formatDate pattern="yyyy-MM-dd" value="${cha.creationtime}" ></fmt:formatDate>"></td>
        </tr>

        <tr><td align="center">
            <input type="submit" value="提交">&nbsp;<input type="button" value="返回">
        </td></tr>

    </table>
    <script type="text/javascript">
        $("[type='button']").click(function () {
            location.href="javascript:history.back(0)";
        })
    </script>
</form>
</body>
</html>
