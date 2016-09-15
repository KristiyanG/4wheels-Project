package controlers;

import java.beans.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;

public class ConnectData {

	public static void main(String[] args) {
		Connection conn = null;
		String url = "jdbc:mysql://localhost/";
		String dbName = "mobile";
		String driver = "com.mysql.jdbc.Driver";
		String userName = "root";
		String password = "1234";
		try {
		  Class.forName(driver).newInstance();
		  conn = DriverManager.getConnection(url+dbName,userName,password);
		  System.out.println("Connected to the database");
		  conn.close();
		  System.out.println("Disconnected from database");
		} catch (Exception e) {
		    System.out.println("NO CONNECTION =(");
		}

		
	}
}
