package com.itwill.summer;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Properties;
import java.util.Set;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itwill.guest.controller.GuestErrorController;
import com.itwill.guest.controller.GuestListController;
import com.itwill.guest.controller.GuestMainController;
import com.itwill.guest.controller.GuestModifyActionController;
import com.itwill.guest.controller.GuestModifyFormController;
import com.itwill.guest.controller.GuestRemoveActionController;
import com.itwill.guest.controller.GuestViewController;
import com.itwill.guest.controller.GuestWriteActionController;
import com.itwill.guest.controller.GuestWriteFormController;


public class DispatcherServlet extends HttpServlet {
	
	public DispatcherServlet() {
		System.out.println("0.DispatcherServlet객체생성자호출");
	}
	
	/*
	 * Controller객체들을 저장하는 맵
	 */
	private HashMap<String, Controller> controllerMap;
	
		
	public void init(ServletConfig config) throws ServletException {
		//load-on-start 옵션을 줬기때문에 서버만 켜져도 바로 로딩됨
		super.init(config);
		System.out.println("1.DispatcherServlet객체 init() 호출");
		controllerMap=new HashMap<String, Controller>();
		/*
		 * web.xml에설정된 파라메타값가져오기
		 * <servlet>
				<servlet-name>controller</servlet-name>
				<servlet-class>com.itwill.summer.DispatcherServlet</servlet-class>
				<init-param>
					<param-name>configFile</param-name>
					<param-value>/WEB-INF/guest_controller_mapping.properties</param-value>
				</init-param>
			</servlet>
		 */
		//config가 위의 web.xml에서 이름과 패스등을 읽어온다.
		//프라퍼티도 맵이다. 맵에 들어가는 키와 밸류는 둘다 String 타입으로 들어간다.
		//이걸 가지고 controllerMap에 스트링키값, 컨트롤러객체로(참조값) 값을 넣는다.
		//init에서 이런 작업을 하기에 미리 다 만들어놓고 요청을 받는거지.
		String confileFile=config.getInitParameter("configFile");
		String configFileRealPath=this.getServletContext().getRealPath(confileFile);
		try {
			FileInputStream pIn=new FileInputStream(configFileRealPath);
			//Properties는 map의 자식이다. 그래서 스트링 타입의 키와 벨류를 가진다.
			Properties controllerMappingProperties=new Properties();
			controllerMappingProperties.load(pIn);
			Set commandKeySet=controllerMappingProperties.keySet();
			Iterator commandIterator=commandKeySet.iterator();
			System.out.println("-------------------------------------------------------------");
			//이터레이터를 돌릴 수 있는 단 한가지 방법은 while
			while (commandIterator.hasNext()) {
				String command=(String)commandIterator.next();
				String controllerClassName=controllerMappingProperties.getProperty(command);
				//guest에 의존하지 않고(지칭하지 않고) 클래스 생성
				Class controllerClass=Class.forName(controllerClassName);
				//기본생성자 생성
				Controller controllerObject=(Controller)controllerClass.newInstance();
				System.out.println(command+"--->"+controllerClassName);
				///guest_write_form.do--->com.itwill.guest.controller.GuestWriteFormController
				controllerMap.put(command, controllerObject);
			}
			System.out.println("-------------------------------------------------------------");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		/*
		controllerMap.put("/guest_main.do", new GuestMainController());
		controllerMap.put("/guest_list.do", new GuestListController());
		controllerMap.put("/guest_view.do", new GuestViewController());
		controllerMap.put("/guest_write_form.do", new GuestWriteFormController());
		controllerMap.put("/guest_modify_form.do", new GuestModifyFormController());
		controllerMap.put("/guest_write_action.do", new GuestWriteActionController());
		controllerMap.put("/guest_modify_action.do", new GuestModifyActionController());
		controllerMap.put("/guest_remove_action.do", new GuestRemoveActionController());
		controllerMap.put("/guest_error.do", new GuestErrorController());
		*/
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.processRequest(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.processRequest(request, response);
	}
	private void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		/*
		 * 1. 클라이언트의 요청URI을 분석하여 구분
		 */
		String requestURI=request.getRequestURI();
		//System.out.println("requestURI"+requestURI);
		String contextPath=request.getContextPath();
		//System.out.println("contextPath"+contextPath);
		String command=requestURI.substring(contextPath.length());
		//System.out.println("command"+command);
		
		/*
		 * 2.클라이언트의 요청에 따른 업무실행(XXService),forwardPath
		 */
		/** 요청커맨드 하나당 하나의 객체를 만드는 방식!!! (Command Pattern) **/
		String forwardPath="";
		Controller controller=controllerMap.get(command);
		//컨트롤러를 호출해서 forward:/WEB-INF/views/~~~.jsp 같은 패쓰를 반환받는다.
		forwardPath=controller.handleRequest(request, response);
		//이제 if문에서는 컨트롤러 자식객체만 만들어준다. 그 객체가 만들어지면 메써드 실행하고 반환.
		
		/*
		 * 3. JSP forward or redirect
		 */
		String [] pathArray = forwardPath.split(":");
		String forwardOrRedirect=pathArray[0];
		String path=pathArray[1];
		
		if(forwardOrRedirect.equals("redirect")) {
			response.sendRedirect(path);
		}else {
			//반환받은 패쓰로 jsp로 포워딩한다.
			RequestDispatcher rd=request.getRequestDispatcher(path);
			rd.forward(request, response);
		}
		//구조와 흐름(플로우)이 모두 정의된 걸 프레임워크라 한다.
		//맵핑만 해주면 내 플로우로 그걸 실행시켜주겠다.
		//그래서 우리는 핸들리퀘스트만 코딩해주는거
	}
	
}
