package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class ConnectionManager {
	
	private static Connection con;
	
	private ConnectionManager(){}
	
	public static Connection getConnection() throws ClassNotFoundException, SQLException{
		Class.forName("org.postgresql.Driver");
		// define connection url
		Properties p = new Properties();
		p.put("user", "postgresql");
		p.put("password", "123");
		//Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/hrdtest", "postgres", "123");
		if(con==null)
			con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres", p);
		
		return con;
	}
}
