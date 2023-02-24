<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<input type="button" onclick="openResult()" value="删除"/>
<jsp:useBean id="dao" class="dao.UserDao" scope="page" />
<%
String xuehao=(String)request.getParameter("xuehao");
dao.shanchu(xuehao);
out.print("<script language='javaScript'> alert('删除成功');</script>");
response.setHeader("refresh", "0;url=delete.jsp");
%>
<p style="text-align:center;color: black; font-family: 宋体; font-size: 20px">
    <br> <input type="button" value="返回菜单" onclick="location.href='zhujiemian.jsp'" /> <br>
</p>
</body>
</html>