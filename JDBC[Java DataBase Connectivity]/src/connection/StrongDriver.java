package connection;

import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.DriverPropertyInfo;
import java.sql.SQLException;
import java.sql.SQLFeatureNotSupportedException;
import java.util.Properties;
import java.util.logging.Logger;

public class StrongDriver implements Driver{

	//숨겨서 절대 부를 수 없다.
	private StrongDriver() {
		System.out.println("StrongDriver 기본생성자");
	}
	
	static {
		/*
		 * 멤버블록(스태틱의 성질을 가진). 클래스가 로딩되면(메모리에 로딩되면) 최초로 실행되는 블록
		 * 클래스가 로딩되면 생성되는 메써드 블록
		 * 대개의 드라이버들은 이 정적블럭을 가지고 있어서 클래스 로딩만 하면 바로 객체생성됨.
		 * 그래서 클래스로딩인스턴스크리에잍메인에서 보여지듯이 의존성을 팍 줄일 수 있다.
		 */
		//멤버블록 안이라 못던져. 트라이 캐치 해야함
		try {
			System.out.println("1. StrongDriver객체생성");
			Driver driver = new StrongDriver();
			System.out.println("2. DriverManager 등록");
			DriverManager.registerDriver(driver);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	
	@Override
	public Connection connect(String url, Properties info) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean acceptsURL(String url) throws SQLException {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public DriverPropertyInfo[] getPropertyInfo(String url, Properties info) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int getMajorVersion() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int getMinorVersion() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public boolean jdbcCompliant() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Logger getParentLogger() throws SQLFeatureNotSupportedException {
		// TODO Auto-generated method stub
		return null;
	}

	
	
	
}
