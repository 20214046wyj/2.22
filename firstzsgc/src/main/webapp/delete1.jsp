<%@ page language="java" import="java.sql.*" contentType="text/html; charset=UTF-8"
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
        <table border="1"style="text-align:center;">
        <tr>
        <%
        String xingming=(String)request.getParameter("xingming");
        %>
        <td align="center" width=6%>学号</td>
        <td align="center" width=8%>姓名</td>
        <td align="center" width=10%>班级</td>
        <td align="center" width=10%>课程</td>
        <td align="center" width=6%>分数</td>
        </tr>
        <%
        Connection connection = DBUtil.getConnection();
        PreparedStatement preparedStatement=null; 
        ResultSet rs=null;
        try {
            String sql = "select * from xuesheng";
            preparedStatement=connection.prepareStatement(sql);
            rs=preparedStatement.executeQuery();
            while(rs.next()){
                {
                %>
                <tr>
                <td align="center"><%=rs.getObject(1) %></td>
                <td align="center"><%=rs.getObject(2) %></td>
                <td align="center"><%=rs.getObject(3) %></td>
                <td align="center"><%=rs.getObject(4) %></td>
                <td align="center"><%=rs.getObject(5) %></td>
                <td align="center"><a style="color:blue" href='delete2.jsp?xingming=<%=rs.getObject(5) %>' onclick="javascript:return del()">删除</a> </td>
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
        <%
%>

<script>
    function del(){
        var r = confirm("确定要删除吗？")
        if (r == true) {
             return true; 
        } else {
            return false;
        }
    } 
</script>
<p style="text-align:center;color: black; font-family: 宋体; font-size: 20px">
    <br> <input type="button" value="返回菜单" onclick="location.href='menu.jsp'" /> <br>
</p>
</body>
</html>