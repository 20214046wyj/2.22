package util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBUtil {

	public static Connection getConnection() throws Exception {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/baidu_db", "root", "258996");
		return con;
	}

}