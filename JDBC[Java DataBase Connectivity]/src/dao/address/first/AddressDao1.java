package dao.address.first;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/*
Dao(Data Access Object)
 - Address들의 데이터를 저장하고있는 Address 테이블에
   CRUD(Create, Read, Update, Delete) 작업을 할수있는
   단위메쏘드를 가지고있는 클래스
 - AddressService객체의 요청(메쏘드호출)을 받아서 
   Data Access(DB)에 관련된 단위기능(CRUD)을
   수행하는 객체
 */



public class AddressDao1 {
	
	/************** DB접속정보**************/
	String driverClass="oracle.jdbc.OracleDriver";
	String url="jdbc:oracle:thin:@182.237.126.19:1521:XE";
	String user="javapython9";
	String password="javapython9";

	public void create() throws Exception{
		
		
		String insertSql=
				"insert into address values(address_no_seq.nextval,'guard','김경호','123-4568','경기도 성남시')";
		/*
		 * 1.Driver Class loading
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
	
	public void delete() throws Exception{
		
				
		String deleteSql=
				"delete address where no >= 20";
		
		Class.forName(driverClass);
		Connection con=DriverManager.getConnection(url,user,password);
		Statement stmt=con.createStatement();
		
		int rowCount = stmt.executeUpdate(deleteSql);
		System.out.println(rowCount+ " 행 delete..");

		stmt.close();
		con.close();
		
	}
	
	public void update() throws Exception{
		
				
		String updateSql=
				"update address set id='xxx',name='정종헌',phone='888-8888',address='서울시 강남구' where no=18";
		Class.forName(driverClass);
		Connection con=DriverManager.getConnection(url,user,password);
		Statement stmt=con.createStatement();
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
		int rowCount = stmt.executeUpdate(updateSql);
		System.out.println(rowCount+ " 행 update..");

		stmt.close();
		con.close();
		
	}
	
	public void selectByNo() throws Exception{
		
				
		String selectSql="select no,id,name,phone,address from address where no=3";
		
		Class.forName(driverClass);
		Connection con=DriverManager.getConnection(url, user, password);
		Statement stmt=con.createStatement();
		/*
		 << Statement >>
		 public ResultSet executeQuery(String sql) throws SQLException;
			Executes the given SQL statement, 
			which returns a single ResultSet object.

		Parameters:
			sql - an SQL statement to be sent to the database, 
			typically a static SQL SELECT statement
		Returns:
			a ResultSet object that contains the data produced by the given query;
			never null
		 */
		
		ResultSet rs=stmt.executeQuery(selectSql);
		
		/*
		<< ResultSet >>
		boolean next() throws SQLException
		 - Moves the cursor forward one row from its current position.
		 - A ResultSet cursor is initially positioned before the first row; 
		 	 the first call to the method next makes the first row the current row;
		 	 the second call makes the second row the current row, and so on.
		 - When a call to the next method returns false, 
		     the cursor is positioned after the last row.
		 */
		
		//rs.getInt("no");
		
				
		if(rs.next()) {
			/*
			  DB NUMBER			--> java int,double
			  DB VARCHAR2,CHAR	--> String
			  DB DATE           --> Date  
			 XXX var = rs.getXXX(컬럼이름);
			 */
			int no = rs.getInt("no");
			String id=rs.getString("id");
			String name=rs.getString("name");
			String phone=rs.getString("phone");
			String address=rs.getString("address");
			System.out.println(no+"\t"+id+"\t"+name+"\t"+phone+"\t"+address);
		}
		//rs.getInt("no");
		rs.close();
		stmt.close();
		con.close();
		
	}
	
	public void selectAll() throws Exception{
		
				
		String selectSql="select no,id,name,phone,address from address";
		
		//드라이버클래스 로딩
		Class.forName(driverClass);
		
		Connection con = DriverManager.getConnection(url, user, password);
		
		//트럭생성, 실어보낼 준비
		Statement stmt = con.createStatement();
		/*
		 << Statement >>
		 public ResultSet executeQuery(String sql) throws SQLException;
			Executes the given SQL statement, 
			which returns a single ResultSet object.

		Parameters:
			sql - an SQL statement to be sent to the database, 
			typically a static SQL SELECT statement
		Returns:
			a ResultSet object that contains the data produced by the given query;
			never null
		 */
		
		ResultSet rs=stmt.executeQuery(selectSql);
		
		/*
		 * << ResultSet >>
		boolean next() throws SQLException
		 - Moves the cursor forward one row from its current position.
		 - A ResultSet cursor is initially positioned before the first row; 
		 	 the first call to the method next makes the first row the current row;
		 	 the second call makes the second row the current row, and so on.
		 - When a call to the next method returns false, 
		     the cursor is positioned after the last row.
		 */
		
		
		//커서가 before first에 있어서 데이터를 읽을수가 없다.
		//rs.getInt("no");
		
		while (rs.next()) {
			/*
			DB NUMBER 			--> java의 int, double로 받아라
			DB VARCHAR2, CHAR 	--> String
			DB Date				--> Date
			XXX var = rs.getXXX(컬럼이름)
			 */
			int no = rs.getInt("no");
			String id = rs.getString("id");
			String name = rs.getString("name");
			String phone = rs.getString("phone");
			String address = rs.getString("address");
			System.out.println(no+"\t"+id+"\t"+name+"\t"+phone+"\t"+address);
		}
		
		//rs의 커서가 제일 마지막(after last)에 있기 때문에 데이터가 없다. 그래서 익셉션 발생한다.
		//rs.getInt("no");
		
		//순서대로 닫어라
		rs.close();
		stmt.close();
		con.close();
		
	}
	
	
	
}
