<%--
  Created by IntelliJ IDEA.
  User: acer
  Date: 2020/10/5
  Time: 14:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
        <option value="/mohu">查询固定资产</option>
        <option value="">固定资产报废</option>
    </select>&nbsp;&nbsp;&nbsp;<input type="button" value="退出">
    </p>
</div>
<div style="border:2px solid #999;padding:3px;height: 400px;width: 700px;background-color: #999999">

</div>
</center>
<script type="text/javascript">
    $("[type='button']").click(function () {
        location.href="/jsp/index.jsp";
    })
</script>
</body>
</html>
