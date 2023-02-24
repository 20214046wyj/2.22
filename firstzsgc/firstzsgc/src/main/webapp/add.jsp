<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>增加学生信息</title>
</head>
<body>
<form action="add1.jsp" method="get">
<p style="text-align:center;color: black; font-family: 宋体; font-size: 20px"> 

学号：<input type="text" name="xuehao"><br>
姓名：<input type="text" name="xingming"><br>
课程：<input type="text" name="banji"> <br>
班级：<input type="text" name="kecheng"><br> 
分数：<input type="text" name="fenshu"> <br>
<input type="submit" value="提交" /> 
        <input type="reset" value="重置" />
<br> <input type="button" value="返回菜单" onclick="location.href='zhujiemian.jsp'" /> <br>
        
        
</body>
</html>