package com.itwill.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//어노테이션(web.xml에 따로 매핑 안해줘도 사용가능해짐
@WebServlet(name = "lifecycle counter", urlPatterns = {"/lifecycle.do","/lifecycle.html","/lifecycle"})
//@WebServlet("/lifecycle.do") 이렇게 간단히도 된다.
public class LifeCycleCounterServlet extends HttpServlet {
	     
	int count;
	
	public LifeCycleCounterServlet() {
		System.out.println("0.LifeCycleCounterServlet 기본 생성자 호출:"+this);
	}
	@Override
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		count=0;
		System.out.println("1. init()생성자 호출직후에 단 한번 호출[객체초기화, 리소스획득]");
	}
	
	@Override
	public void destroy() {
		super.destroy();
		System.out.println("3.destroy() 객체가 메모리에서 해제될때 호출[리소스 해지]");
	}
	
  	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("2.service()요청시 마다 호출:-->요청IP"+request.getRemoteAddr());
  		
  		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		out.println("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">");
		out.println("<html>");
		out.println("<head>");
		out.println("<title>Insert title here</title>");
		out.println("</head>");
		out.println("<body bgcolor=#40e0d0 style=\"font-size: 9pt; line-height: 140%;\">");
		out.println("	<center>");
		count++;
		out.println("		현재까지의 페이지뷰수[요청횟수] <font color=#0000FF>"+ count +"</font> 번입니다");
		out.println("	</center>");
		out.println("</body>");
		out.println("</html>");
		
	}

}
