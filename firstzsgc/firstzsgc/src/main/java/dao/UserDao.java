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
	 public void shanchu(String xuehao) throws Exception
	 {
		 Connection connection = DBUtil.getConnection();
         PreparedStatement preparedStatement=null;       
         try {
             String sql = "delete from xuesheng where xuehao = ?";
             preparedStatement=connection.prepareStatement(sql);
             preparedStatement.setString(1,xuehao);
             preparedStatement.executeUpdate();
             //System.out.println("删除成功");
             
         } catch (SQLException  e) {
             e.printStackTrace();
         }finally{
             //close(preparedStatement);
             //close(connection);
         }
     }
	 //修改
	 public void xiugai(String xuehao, String xingming, String banji, String kecheng , String fenshu) throws Exception
     {
         Connection connection = DBUtil.getConnection();
         PreparedStatement preparedStatement=null;       
         try {
             //身份证号码、性别、民族、受教育程度
             String sql = "update xuesheng set xingming=?, banji=?, kecheng=?, fenshu=? where xuehao=?";
             preparedStatement=connection.prepareStatement(sql);
             preparedStatement.setString(1,xingming);
             preparedStatement.setString(2,banji);
             preparedStatement.setString(3,kecheng);
             preparedStatement.setString(4,fenshu);
             preparedStatement.setString(5,xuehao);
             preparedStatement.executeUpdate();
            
         } catch (SQLException  e) {
             e.printStackTrace();
         }finally{
             //close(preparedStatement);
             //close(connection);
         }
     }
	 
	 
	
	 //判重盘存在
	 public boolean isSame(String xuehao) throws Exception
     {
         Connection connection = DBUtil.getConnection();
         PreparedStatement preparedStatement=null; 
         ResultSet rs=null;
         try {
             String sql = "select * from xuesheng";
             preparedStatement=connection.prepareStatement(sql);
             rs=preparedStatement.executeQuery();
             while(rs.next()){
                 if( xuehao.equals(rs.getObject(1))||xuehao.equals(rs.getObject(2)) )
                         return true;
             }
             //preparedStatement.executeUpdate();
             
         } catch (SQLException  e) {
             e.printStackTrace();
         }finally{
             //close(rs);
             //close(preparedStatement);
             //close(connection);
         }
         return false;
     }
	 //判断身份证
	 public boolean isIdRight(String xuehao)
     {
         if(xuehao.length()==18)
         {
             for(int i=0;i<16;i++)//前17位
             {
                 char c=xuehao.charAt(i);
                 if(c=='0'||c=='1'||c=='2'||c=='3'||c=='4'||c=='5'||c=='6'||c=='7'||c=='8'||c=='9')
                     {continue;}
                 else {return false;}
             }
             char c=xuehao.charAt(17);//第18位
             if(c!='0'&&c!='1'&&c!='2'&&c!='3'&&c!='4'&&c!='5'&&c!='6'&&c!='7'&&c!='8'&&c!='9'&&c!='X') {
                 //System.out.println("不是数字或者X");
                 return false;
             }
             else {
                 //System.out.println("身份证号正确");
                 return true;
             }
         }
         else System.out.println("不是18位");return false;
     }
}

