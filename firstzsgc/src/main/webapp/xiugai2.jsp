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
<%
    String xuehao=(String)request.getParameter("xuehao");
    session.setAttribute("xuehao",xuehao);
    %>
    <table border="1"style="text-align:center;">
    <tr>
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
            if(xuehao.equals(rs.getObject(1)))
            {
            %>
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
    
    <form action="xiugai3.jsp" method="get">
    <p style="text-align:center;color: black; font-family: 宋体; font-size: 20px">
    <br>
    <br>
    修改信息
    <br> 姓名 <input type="text" name="xingming" /><br>
    <br> 班级 <input type="text" name="banji" /><br>
    <br> 课程 <input type="text" name="kecheng" /><br>
    <br> 分数 <input type="text" name="fenshu" /><br>
    
    
    <br><input type="submit" value="提交" /> 
        <input type="reset" value="重置" />  <br>
    <br> <input type="button" value="返回菜单" onclick="location.href='zhujiemian.jsp'" /> <br>
</p>
</form>
</body>
</html>