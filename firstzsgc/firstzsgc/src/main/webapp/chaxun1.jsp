<%@ page language="java" import="java.sql.*"  contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="util.DBUtil"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>查询</title>
</head>
<body style="text-align:center">
查询结果
<p>
<jsp:useBean id="dao" class="dao.UserDao" scope="page" />
<%
String data=(String)request.getParameter("data");
if(data==""){
    out.print("<script language='javaScript'> alert('输入为空'); window.history.back(-1); </script>");
}
else 
{
    %>
    <table border="1"style="text-align:center;">
                <tr>
                <td align="center" width=6%>学号</td>
                <td align="center" width=3%>姓名</td>
                <td align="center" width=10>班级</td>
                <td align="center" width=10%>课程</td>
                <td align="center" width=10%>分数</td>
                </tr>
    <% 
        int i=0;
        Connection connection = DBUtil.getConnection();
        PreparedStatement preparedStatement=null; 
        ResultSet rs=null;
        try {
            String sql= " select * from xuesheng where xuehao like ? or xingming like ? or banji like ? or kecheng like ? ";
            preparedStatement=connection.prepareStatement(sql);
            preparedStatement.setString(1,"%"+data+"%");
            preparedStatement.setString(2,"%"+data+"%");
            preparedStatement.setString(3,"%"+data+"%");
            preparedStatement.setString(4,"%"+data+"%");
            rs=preparedStatement.executeQuery();
            while(rs.next())
            {
                i++;
                %>
                <tr>
                <td align="center"><a style="color:blue" href='chaxunshow.jsp?fenshu=<%=rs.getObject(5) %>'><%=rs.getObject(1) %></a> </td>
                <td align="center"><%=rs.getObject(2) %></td>
                <td align="center"><%=rs.getObject(3) %></td>
                 <td align="center"><%=rs.getObject(4) %></td>
                 <td align="center"><%=rs.getObject(5) %></td>
                </tr>
                <%   
            }
            if(i==0)
            {
                out.print("<script language='javaScript'> alert('没有查询到有关信息'); window.history.back(-1); </script>");
            }
        } catch (SQLException  e) {
            e.printStackTrace();
        }finally{
           // util.close(rs);
            //util.close(preparedStatement);
            //util.close(connection);
        }  
}
    %>
</table>

<p style="text-align:center;color: black; font-family: 宋体; font-size: 20px">
    <br> <input type="button" value="返回菜单" onclick="location.href='zhujiemian.jsp'" /> <br>
</p>
</body>
</html>