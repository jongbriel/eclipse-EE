package basic;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.Properties;

public class AddressInsertMain {

	public static void main(String[] args) throws Exception {
		/************** DB접속정보**************/
		String driverClass="oracle.jdbc.OracleDriver";
		String url="jdbc:oracle:thin:@182.237.126.19:1521:XE";
		String user="javapython9";
		String password="javapython9";
		
		String insertSql=
				"insert into address values(address_no_seq.nextval,'guard','김경호','123-4568','경기도 성남시')";
		/*
		 * 1.Driver Class laoding
		 */
		Class.forName(driverClass);
		/*
		 * 2.Connection생성
		 */
		Connection con=DriverManager.getConnection(url,user,password);
		/*
		 * 3.Statement생성
		 */
		Statement stmt=con.createStatement();
		/*
		 * 4.Statement를 사용해 SQL문전송(DML)
		 */
		/*
		<< java.sql.Satement >>
		public int executeUpdate(String sql) throws SQLException
			Executes the given SQL statement,
			which may be an INSERT, UPDATE, or DELETE statement 
			or an SQL statement that returns nothing, 
			such as an SQL DDL statement.
		 return:
		 	either (1) the row count for SQL Data Manipulation Language (DML) statements 
		 	or (2) 0 for SQL statements that return nothing	
			
		 */
		int rowCount = stmt.executeUpdate(insertSql);
		System.out.println(rowCount+ " 행 insert..");

		stmt.close();
		con.close();
		
		
		
		

	}

}
