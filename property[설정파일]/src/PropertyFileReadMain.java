import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.Properties;

public class PropertyFileReadMain {

	public static void main(String[] args) throws Exception {
		
		/*
		//외부리소스에서 데이터 읽어오기
		
		//classpath
		InputStream in1 = 
				PropertyFileReadMain.class.getClassLoader().getResourceAsStream("setting.txt");
		
		//filepath
		InputStream in2 =
				new FileInputStream("C:\\JAVA_PYTHON\\eclipse-workspaceEE\\property[설정파일]\\src\\setting.txt");
		//이렇게 하면 나만 되고 다른 사람들은 못쓴다. 주소가 저따구니 실제 배포됐을때 못찾음.
		
		System.out.println(in1);
		System.out.println(in2);
		
		//파일 읽으려고 버퍼꽂음
		BufferedReader br1 = new BufferedReader(new InputStreamReader(in1));
		BufferedReader br2 = new BufferedReader(new InputStreamReader(in2));
		
		String readLine1 = br1.readLine();
		String[] data1 = readLine1.split("=");
		System.out.println(data1[0]+"="+data1[1]);
		
		
		String readLine2 = br2.readLine();
		String[] data2 = readLine1.split("=");
		System.out.println(data2[0]+"="+data2[1]);
		*/
		
		
		
		/*
		 * classpath에 있는 setting.properties 파일읽기
		 */
		InputStream pin = PropertyFileReadMain.class.getResourceAsStream("setting.properties");
		
		//Properties는 MAP의 자식이라 key를 가지고 있다.
		Properties prop = new Properties();
		//map형식이 만들어짐. language 같은 애들이 key값이 됨
		prop.load(pin);
		
		String language = prop.getProperty("language");
		String encoding = prop.getProperty("encoding");
		String name = prop.getProperty("name");
		String password = prop.getProperty("password");

		System.out.println(language);
		System.out.println(encoding);
		System.out.println(name);
		System.out.println(password);
		
		
		/*
		 * classpath에 있는 db.properties 파일 읽기
		 */
		InputStream dbIn = PropertyFileReadMain.class.getResourceAsStream("config/db.properties");
		
		Properties dbP = new Properties();
		dbP.load(dbIn);
		System.out.println(dbP.getProperty("driverClass"));
		System.out.println(dbP.getProperty("url"));
		System.out.println(dbP.getProperty("user"));
		System.out.println(dbP.getProperty("password"));

		
	}

}
