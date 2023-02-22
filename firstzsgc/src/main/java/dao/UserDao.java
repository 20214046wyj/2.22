package dao; 
import util.DBUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.*;
import java.util.*;



public class UserDao {
//增加
	 public void tianjia(String xuehao,String xingming,String banji,String kecheng,String fenshu) throws Exception
     {
         Connection connection = DBUtil.getConnection();
         PreparedStatement preparedStatement=null;       
         try {
             String sql = "insert into xuesheng () values (?,?,?,?,?)";
             preparedStatement=connection.prepareStatement(sql);
             preparedStatement.setString(1,xuehao);
             preparedStatement.setString(2,xingming);
             preparedStatement.setString(3,banji);
             preparedStatement.setString(4,kecheng);
             preparedStatement.setString(5,fenshu);
            
         
             preparedStatement.executeUpdate();
             //System.out.println("添加成功");
             
         } catch (SQLException  e) {
             e.printStackTrace();
         }finally{
            
         }
      
         
     }
	 //删除
	 public void shanchu(String xingming) throws Exception
     {
		 Connection connection = DBUtil.getConnection();
         PreparedStatement preparedStatement=null;       
         try {
             String sql = "delete from xuesheng where 姓名 = ?";
             preparedStatement=connection.prepareStatement(sql);
             preparedStatement.setString(1,xingming);
             preparedStatement.executeUpdate();
             //System.out.println("删除成功");
             
         } catch (SQLException  e) {
             e.printStackTrace();
         }finally{
             //close(preparedStatement);
             //close(connection);
         }
     }
}

