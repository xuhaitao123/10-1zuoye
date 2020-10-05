<%--
  Created by IntelliJ IDEA.
  User: acer
  Date: 2020/10/5
  Time: 14:02
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
<center>
    <div style="border:2px solid #999;padding:3px;height:50px;width: 700px;background-color: dodgerblue">
        <p align="center">固定资产管理系统</p>
    </div>
    <div style="border:2px solid #999;margin-top: -8px;padding:3px;height:20px;width: 700px;background-color: #3CA9C4">
        <p style="margin-left: -440px;margin-top: -3px;">固定资产管理
            <select onchange="window.open(this.options[this.options.selectedIndex].value)">
                <option value="0">-----请选择-----</option>
                <option value="/jsp/add.jsp">新增固定资产</option>
                <option value="/jsp/main.jsp">查询固定资产</option>
                <option value="">固定资产报废</option>
            </select>&nbsp;&nbsp;&nbsp;<input type="button" value="退出">
        </p>
    </div>
    <div style="border:2px solid #999;padding:3px;height: 400px;width: 700px;background-color: #999999">
        <table border="1px" align="center">
            <tr>
                <td colspan="5" align="center">帖子列表</td>
            </tr>
            <tr>
                <td colspan="4" align="center">
                    <form action="/mohu" method="post">
                        <p>&nbsp;&nbsp;&nbsp;&nbsp;资产编号：<input type="text" name="assetid"></p>
                        <p>资产类型：<select name="assettype">
                        <option value="">请选择类型</option>
                        <option value="电子设备">电子设备</option>
                        <option value="机械设备">机械设备</option>
                        <option value="运输设备">运输设备</option>
                        </select>  <input type="submit" value="查询"/></p>
                    </form>
                </td>
            </tr>

            <tr align="center">
                <td>资产编号</td>
                <td>资产名称</td>
                <td>资产类型</td>
                <td>入库日期</td>
            </tr>
            <c:forEach items="${list}" var="list">
                <tr align="center">
                    <td>${ list.assetid }</td>
                    <td>${ list.assetname }</td>
                    <td>${ list.assettype }</td>
                    <td><fmt:formatDate value="${ list.intodate }" pattern="yyyy-MM-dd"></fmt:formatDate></td>
                </tr>
            </c:forEach>
        </table>
    </div>
</center>
<script type="text/javascript">
    $("[type='button']").click(function () {
        location.href="/jsp/index.jsp";
    })
</script>
</body>
</html>
