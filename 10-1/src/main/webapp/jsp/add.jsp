<%--
  Created by IntelliJ IDEA.
  User: acer
  Date: 2020/9/24
  Time: 20:30
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
                <td  style="height: 25px;">会议室预定</td>
            </tr>
            <tr>
                <td>会议室:&nbsp;
                    <select name="meetingName">
                        <%--<option value="0">请选择考勤类型</option>--%>
                        <option value="一号会议室">一号会议室</option>
                        <option value="二号会议室">二号会议室</option>
                        <option value="二号会议室">三号会议室</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>申请人&nbsp;&nbsp;&nbsp;:<input type="text" name="advanceName"></td>
            </tr>
            <tr>
                <td>考勤日期:<input type="text" name="meetingOrder"></td>
            </tr>

            <tr>
                <td align="center"><input type="submit" value="提交 " align="center"><input type="reset" value="重置"></td>
            </tr>
        </table>
    </form>
</center>
<script type="text/javascript">
    $("form").submit(function () {
        var empname=$("[name='empname']").val();
        if(empname==""){
            alert("姓名不能为空!");
            return false
        }
        var chkdate=$("[name='chkdate']").val();
        if(chkdate==""&&chkdate!="^\\d{4}(\\-|\\/|\\.)\\d{1,2}\\1\\d{1,2}$"){
            alert("日期格式不正确!");
            return false
        }
        var status=$("[name='status']").val();
        if(status==0){
            alert("亲选择考勤状态!");
            return false
        }
        return true;
    })

</script>
</body>

</html>
