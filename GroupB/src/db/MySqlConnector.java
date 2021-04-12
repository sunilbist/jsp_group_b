package db;

import java.sql.Connection;
import java.sql.DriverManager;

public class MySqlConnector {
	public static Connection connect() throws Exception{
		Class.forName("com.mysql.cj.jdbc.Driver");

		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/groupb", "root", "");
		return conn;
	}
}
