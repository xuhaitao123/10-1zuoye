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

    <div style="border:2px solid #999;padding:3px;height: 400px;width: 700px;background-color: #999999">
        <form action="/zj" method="post">
            <table border="1px">
                <tr align="center">
                    <td  style="height: 25px;">记账</td>
                </tr>
                <tr>
                    <td>类型:<input type="radio" name="typeid" value="1">支出
                        <input type="radio" name="typeid" value="2">收入
                        <input type="radio" name="typeid" value="3">转账
                        <input type="radio" name="typeid" value="4">借出
                        <input type="radio" name="typeid" value="5">借入
                        <input type="radio" name="typeid" value="6">还入
                        <input type="radio" name="typeid" value="7">还出
                    </td>
                </tr>
                <tr>
                    <td>标题:<input type="text" name="title"></td>
                </tr>
                <tr>
                    <td>日期:<input type="text" name="billtime">金额<input type="text" name="price"></td>
                </tr>
                <tr>
                    <td>说明:<input type="text" name="explai"  style="height: 50px"></td>
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
