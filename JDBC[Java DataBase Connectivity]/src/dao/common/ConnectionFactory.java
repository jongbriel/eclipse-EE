package dao.common;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

import basic.JDBCFlowMain;

/*
 * Connection 객체생성과 해제 작업을 전담하는 클래스
 */

public class ConnectionFactory {
	
	private ConnectionFactory() {

	}
	
	public static Connection getConnection() throws Exception {
		Properties dbProperties=new Properties();
		dbProperties.load(
				ConnectionFactory.class.getResourceAsStream("db.properties"));
		
		String driverClass=dbProperties.getProperty("driverClass");
		String url=dbProperties.getProperty("url");
		String user=dbProperties.getProperty("user");
		String password=dbProperties.getProperty("password");
		
		Class.forName(driverClass);
		Connection con=DriverManager.getConnection(url, user, password);
		
		return con;
	}
	
	public static void releaseConnection(Connection con) throws Exception {
		//커넥션 열었으니 닫아줘야겠징?
		con.close();
	}
	
	
	
}
