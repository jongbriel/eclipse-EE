package connection;

import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;

public class ClassLoadingInstanceCreateMain {

	public static void main(String[] args) throws Exception {
		
		/*
		Driver strongDriver = new StrongDriver();
		DriverManager.registerDriver(strongDriver);
														//두번째를 보고 스트롱DB에 붙을지 오라클에 붙을지 선택
		Connection con = DriverManager.getConnection("jdbc:strong:....","user","pass");
		
		이러한 생성의 의존성을 줄이기 위하여 다음과 같이 한다
		*/
		
		//클래스를 스트링으로 메모리에 올렸다. 이러한 작업은 절대 의존성이 발생되지 않는다.
		
		/*
		Class driverClazz = Class.forName("connection.StrongDriver");
		//드라이버 클래스의 기본 생성자 호출, 오브젝트를 반환하니깐 캐스팅
		//이 클래스의 기본생성자 호출. 생성자를 직접 호출안해도 가능 그렇기에 의존성 준다.
		//그러나 보통 기본생성자를 프라이빗 해놔서 접근 못함 
		Driver driver = (Driver)driverClazz.newInstance();
		//메모리에 등록
		DriverManager.registerDriver(driver);
		근데 이방법도 길다~ 더 줄이자 --> 스트롱드라이버 클래스 안에 정적블록 만들어줌
		그러면 클래스가 로딩만 되도 바로 생성됨
		*/
		
		Class.forName("connection.StrongDriver");
		Connection con = DriverManager.getConnection("" , "", "");
		
		
		
		
		
		
	}

}
