<%@page import="dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>修改</title>
</head>
<body>
<form action="xiugai1.jsp" method="get">
<p style="text-align:center;color: black; font-family: 宋体; font-size: 20px">
    <br> 输入要修改的学生学号 <input type="text" name="xuehao" /><br>

    <br><input type="submit" value="提交" /> 
        <input type="reset" value="重置" />  <br>
    <br> <input type="button" value="返回菜单" onclick="location.href='zhujiemian.jsp'" /> <br>
</p>
</form>
</body>
</html>