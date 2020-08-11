package com.itwill.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*
 * 1. HttpServlet상속
 */
public class HelloServlet extends HttpServlet{
	/*
	 * 2.service메쏘드 재정의
	 */
	@Override
	public  void service(HttpServletRequest request,
						HttpServletResponse response) throws ServletException, IOException {
		/*
		 * 2-1.응답헤더 ContentType설정
		 */
		response.setContentType("text/plain;charset=UTF-8");
		/*
		 * 2-2.클라이언트(웹부라우져)로 전송할 스트림생성
		 */
		PrintWriter out=response.getWriter();
		for(int i=0;i<100;i++) {
			/*
			 * 2-3.클라이언트(웹부라우져)로 데이타출력
			 */
			out.println("HelloServlet "+(i+1)+"[Servlet]!!!");
		}
	}
}