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
<form action="/update?sid=${ cha.sid }" method="post">
    <table border="1px" align="center">

        <tr align="center">
            <td colspan="4" style="font-size: 30px;">学员信息</td>
        </tr>

        <tr>
            <td> 姓名：<input type="text" name="sname" style="height: 20px" value="${cha.sname}"></td>
        </tr>
        <tr >
            <td> 年龄：<input type="text" name="sgender" style="height: 20px" value="${cha.sgender}"></td>
        </tr>
        <tr >
            <td> 性别：<input type="text" name="sage" style="height: 20px" value="${cha.sage}"></td>
        </tr>
        <tr >
            <td> 住址：<input type="text" name="saddress" style="height: 20px" value="${cha.saddress}"></td>
        </tr>
        <tr >
            <td> Email：<input type="text" name="semail" style="height: 20px" value="${cha.semail}"></td>
        </tr>


        <tr><td align="center">
            <input type="submit" value="修改">&nbsp;<input type="button" value="返回">
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
