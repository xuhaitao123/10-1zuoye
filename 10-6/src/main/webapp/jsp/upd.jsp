<%--
  Created by IntelliJ IDEA.
  User: acer
  Date: 2020/10/6
  Time: 18:23
  To change this template use File | Settings | File Templates.
--%>
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
<form action="/update?id=${ cha.id }" method="post">
    <table border="1px" align="center">
        <tr style="background-color: #CCF6CE">
            <td colspan="2" align="center">项目信息表</td>
        </tr>
        <tr>

            <td>项目编号</td>
            <td><span>${ cha.id }</span></td>
        </tr>
        <tr>
            <td>项目名称(<span style="color: red">*</span>)</td>
            <td><input type="text" name="projectname" value="${ cha.projectname }">
            </td>
        </tr>
        <tr>
            <td>开始日期(<span style="color: red">*</span>)</td>
            <td><input type="text" name="startdate" value="<fmt:formatDate value="${cha.startdate }" pattern="yyyy-MM-dd"/>"></td>
        </tr>
        <tr>
            <td>结束日期(<span style="color: red">*</span>)</td>
            <td><input type="text" name="enddate" value="<fmt:formatDate value="${cha.enddate }" pattern="yyyy-MM-dd"/>"></td>
        </tr>
        <tr>
            <td>申报状态(<span style="color: red">*</span>)</td>
            <td><select name="status">
                    <option value="${cha.status}">已申报</option>
                    <option value="1">审核中</option>
                    <option value="2">已审核</option>
            </select></td>
        </tr>
        <tr>
            <td colspan="2" align="center"><input type="submit" value="提交"><input type="button" value="返回"></td>
        </tr>
    </table>
</form>
<script type="text/javascript">
    $("[type='button']").click(function () {
        location.href="javascript:history.back(0)";
    })
</script>
</body>
</html>
