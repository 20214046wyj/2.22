<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="dao" class="dao.UserDao" scope="page" />
 <% 
String day=(String)request.getParameter("xuehao");
String guanjianzi=(String)request.getParameter("xingming");
String sum=(String)request.getParameter("banji");
String days=(String)request.getParameter("kecheng");
String zuichang=(String)request.getParameter("fenshu");

dao.tianjia(day,guanjianzi,sum,days,zuichang);
out.print("<script language='javaScript'> alert('添加成功');</script>");
response.setHeader("refresh", "0;url=xianshi.jsp");%>
</body>
</html>