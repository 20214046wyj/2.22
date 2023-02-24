<%@ page language="java" import="java.sql.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="util.DBUtil"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>详细信息</title>
</head>
<body>


<jsp:useBean id="dao" class="dao.UserDao" scope="page" />
        
        <%
        String xuehao = (String)request.getParameter("xuehao");
        Connection connection = DBUtil.getConnection();
        PreparedStatement preparedStatement=null; 
        ResultSet rs=null;
        try {
            String sql = "select * from xuesheng";
            preparedStatement=connection.prepareStatement(sql);
            rs=preparedStatement.executeQuery();
            while(rs.next()){
                if(xuehao.equals(rs.getObject(1)))
                {
                %>
                <table border="1"style="text-align:center;">
                <tr>
                <td align="center" width=6%>学号</td>
                <td align="center" width=8%>姓名</td>
                <td align="center" width=10%>班级</td>
                <td align="center" width=10%>课程</td>
                <td align="center" width=6%>分数</td>
                </tr>
                <tr>
                <td align="center"><%=rs.getObject(1) %></td>
                <td align="center"><%=rs.getObject(2) %></td>
                <td align="center"><%=rs.getObject(3) %></td>
                <td align="center"><%=rs.getObject(4) %></td>
                <td align="center"><%=rs.getObject(5) %></td>
                </tr>
                <%
                }
            }
        } catch (SQLException  e) {
            e.printStackTrace();
        }finally{
            //util.close(rs);
            //util.close(preparedStatement);
            //util.close(connection);
        }
        %>
        </table>
<p style="text-align:center;color: black; font-family: 宋体; font-size: 20px">
<input type="button" name="back" onclick="javascript:window.history.back(-1);" value=返回上一页>
<input type="button" value="返回菜单" onclick="location.href='zhujiemian.jsp'" /> <br>
</p>
</body>
</html>