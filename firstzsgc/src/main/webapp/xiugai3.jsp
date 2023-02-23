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
<jsp:useBean id="dao" class="dao.UserDao" scope="page" />
<%
String xuehao=(String)session.getAttribute("xuehao");
String xingming=(String)request.getParameter("xingming");
String banji=(String)request.getParameter("banji");
String kecheng=(String)request.getParameter("kecheng");
String fenshu=(String)request.getParameter("fenshu");
if(xingming==""||banji==""||kecheng==""||fenshu=="")
{
    out.print("<script language='javaScript'> alert('输入为空');window.history.back(-1);</script>");
}
else if(!dao.isSame(xuehao))
{
    out.print("<script language='javaScript'> alert('学号不正确');window.history.back(-1);</script>");
}
else
{
    dao.xiugai(xuehao,xingming, banji, kecheng, fenshu);
    out.print("<script language='javaScript'> alert('修改成功');</script>");
    response.setHeader("refresh", "0;url=xiugai.jsp");
}
%>
<p style="text-align:center;color: black; font-family: 宋体; font-size: 20px">
    <br> <input type="button" value="返回菜单" onclick="location.href='zhujiemian.jsp'" /> <br>
</p>
</body>
</html>