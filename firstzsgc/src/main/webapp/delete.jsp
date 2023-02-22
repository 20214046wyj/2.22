<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>删除学生信息</title>
</head>
<body>
<form action="delete1.jsp" method="get">
<p style="text-align:center;color: black; font-family: 宋体; font-size: 20px">
    <br> 要删除信息的学生姓名: <input type="text" name="xingming" /> <br>
    <br><input type="submit" value="确定" /> 
        <input type="reset" value="重置" />  <br>
    <br> <input type="button" value="返回主界面" onclick="location.href='zhujiemian.jsp'" /> <br>
</p>
</form>
</body>
</html>