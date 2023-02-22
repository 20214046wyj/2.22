<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="util.DBUtil"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<input type="button" onclick="openResult()" value="删除"/>
<jsp:useBean id="dao" class="dao.UserDao" scope="page" />
<%
String xuesheng=(String)request.getParameter("xingming");
util.shanchu(xingming);
out.print("<script language='javaScript'> alert('删除成功');</script>");
response.setHeader("refresh", "0;url=delete.jsp");
%>
<p style="text-align:center;color: black; font-family: 宋体; font-size: 20px">
    <br> <input type="button" value="返回菜单" onclick="location.href='menu.jsp'" /> <br>
</p>
</body>
</html>