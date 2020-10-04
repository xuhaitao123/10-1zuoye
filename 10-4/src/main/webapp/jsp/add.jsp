<%--
  Created by IntelliJ IDEA.
  User: acer
  Date: 2020/10/3
  Time: 13:13
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
    <form action="/zj" method="post">
        <table border="1px">
            <tr align="center">
                <td  style="height: 25px;">添加人员</td>
            </tr>
            <tr>
                <td>姓名:<input type="text" name="name"></td>
            </tr>
            <td>性别:
                <select name="sex">
                    <option value="0">请选择性别</option>
                    <option value="1">男</option>
                    <option value="2">女</option>
                </select>
            </td>
            <tr>
                <td>年龄:<input type="text" name="age"></td>
            </tr>
            <tr>
                <td>等级:
                    <select name="rank">
                    <option value="0">请选择等级</option>
                    <option value="1">1级</option>
                    <option value="2">2级</option>
                    <option value="3">3级</option>
                    <option value="4">4级</option>
                    <option value="5">5级</option>
                </select></td>
            </tr>
            <tr>
                <td>部门
                    <select name="department">
                        <option value="0">请选择部门</option>
                        <option value="支持部">支持部</option>
                        <option value="公安部">公安部</option>
                        <option value="开发部">开发部</option>
                        <option value="小卖部">小卖部</option>
                        <option value="工程质量部">工程质量部</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td align="center"><input type="submit" value="提交 " align="center"><input type="reset" value="重置"></td>
            </tr>
        </table>
    </form>
</center>
<script type="text/javascript">
    $("form").submit(function () {
        var name=$("[name='name']").val();
        if(name==""){
            alert("姓名不能为空!");
            return false
        }
       /* var chkdate=$("[name='chkdate']").val();
        if(chkdate==""&&chkdate!="^\\d{4}(\\-|\\/|\\.)\\d{1,2}\\1\\d{1,2}$"){
            alert("日期格式不正确!");
            return false
        }*/
        var sex=$("[name='sex']").val();
        if(sex==0){
            alert("亲选择性别!");
            return false
        }
        var rank=$("[name='rank']").val();
        if(rank==0){
            alert("亲选择等级!");
            return false
        }
        var department=$("[name='department']").val();
        if(department==0){
            alert("亲选择部门!");
            return false
        }
        return true;
    })

</script>
</body>

</html>
