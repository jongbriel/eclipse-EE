package com.itwill.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/*

  <servlet>
  	<servlet-name>lifecycle counter</servlet-name>
  	<servlet-class>com.itwill.servlet.LifeCycleCounterServlet</servlet-class>
  	<load-on-startup>-2</load-on-startup>
  </servlet>
  
  <servlet-mapping>
  	<servlet-name>lifecycle counter</servlet-name>
    <url-pattern>/lifecycle.do</url-pattern>
    <url-pattern>/lifecycle</url-pattern>
    <url-pattern>/lifecycle.html</url-pattern>
    <url-pattern>/lifecycle.nhn</url-pattern>
  </servlet-mapping>

 */

@WebServlet("/imagecounter.do")
public class LifeCycleImageCounterServlet extends HttpServlet {
	int count;
	public LifeCycleImageCounterServlet() {
		System.out.println("0.LifeCycleCounterServlet 기본생성자호출:"+ this);
	}
	@Override
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		count=0;
		System.out.println("1.init()생성자 호출직후에 단한번호출[객체초기화,리소스획득] ");
	}
	@Override
	public void destroy() {
		super.destroy();
		System.out.println("3.destroy() 객체가메모리에서 해제될때 호출[리소스해지]");
	
	}
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("2.service()요청시마다 호출:-->요청IP"+request.getRemoteAddr()+"==>"+this);
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		out.println("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">");
		out.println("<html>");
		out.println("<head>");
		out.println("<title>Insert title here</title>");
		out.println("</head>");
		out.println("<body bgcolor=#40e0d0 style=\"font-size: 9pt; line-height: 140%;\">");
		out.println("	<center>");
		
		count++;
		String ccount = Integer.toString(count);
		out.println("현재까지의 페이지뷰수[요청횟수]는 ");
		for (int i = 0; i < ccount.length(); i++) {
			out.println("<img src='images/"+ccount.charAt(i)+".png'>");
		}
		out.println(" 번입니다");
		
		out.println("	</center>");
		out.println("</body>");
		out.println("</html>");

	}
	

}
