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
                <option value="/mohu">查询固定资产</option>
                <option value="">固定资产报废</option>
            </select>&nbsp;&nbsp;&nbsp;<input type="button" value="退出">
        </p>
    </div>
    <div style="border:2px solid #999;padding:3px;height: 400px;width: 700px;background-color: #999999">
        <form action="/zj" method="post">
            <table border="1px">
                <tr align="center">
                    <td  style="height: 25px;">新增固定资产</td>
                </tr>
                <tr>
                    <td>资产编号:<input type="text" name="assetid"></td>
                </tr>
                <tr>
                    <td>资产名称:<input type="text" name="assetname"></td>
                </tr>
                <tr>
                    <td>资产类型
                        <select name="assettype">
                            <option value="0">请选择资产类型</option>
                            <option value="电子设备">电子设备</option>
                            <option value="机械设备">机械设备</option>
                            <option value="运输设备">运输设备</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>入库日期:<input type="text" name="intodate"></td>
                </tr>
                <tr>
                    <td align="center"><input type="submit" value="增加" align="center"><input type="reset" value="重置"></td>
                </tr>
            </table>
        </form>
    </div>
</center>
<script type="text/javascript">
    $("[type='button']").click(function () {
        location.href="/jsp/index.jsp";
    })
    $("form").submit(function () {
        var assetid=$("[name='assetid']").val();
        if(assetid==""){
            alert("资产编号不能为空!");
            return false
        }
        var assettype=$("[name='assettype']").val();
        if(assettype==0){
            alert("请选择资产类型状态!");
            return false
        }
        var intodate=$("[name='intodate']").val();
        if(intodate==""&&intodate!="^((?!0000)[0-9]{4}((0[1-9]|1[0-2])(0[1-9]|1[0-9]|2[0-8])|(0[13-9]|1[0-2])(29|30)|(0[13578]|1[02])31)|([0-9]{2}(0[48]|[2468][048]|[13579][26])|(0[48]|[2468][048]|[13579][26])00)0229)([01][0-9]|2[0-3])([0-5][0-9])$"){
            alert("请输入正确的日期!");
            return false
        }

        return true;
    })
</script>
</body>
</html>
