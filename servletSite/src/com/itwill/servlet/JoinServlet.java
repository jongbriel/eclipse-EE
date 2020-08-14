package com.itwill.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class JoinServlet
 */
@WebServlet("/join.do")
public class JoinServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/*
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}
	*/
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		/*******************************************
		  1.요청시에 전송되는 파라메타바끼
		     - 파라메타이름은 input element의 name속성과일치
		      	<input type="text" name="xxx">
		     - join.do?xxx=java
		     - request.getParameter("xxx")
		     
		    << POST방식 파라메타 값 한글인코딩 >>
		      - 요청객체에 문자인코딩설정
		        request.setCharacterEncoding("UTF-8");
		          
		 **************************************************/
		
		/*
		 * 1.파라메타바끼
		 */
		request.setCharacterEncoding("UTF-8");
		String id=request.getParameter("id");
		String name=request.getParameter("name");
		String addr=request.getParameter("addr");
		String gender=request.getParameter("gender"); 
		String job=request.getParameter("job"); 
		//String hobby = request.getParameter("hobby");
		String[] hobbies = request.getParameterValues("hobby");
		
		
		/*
		 * 2. Service 객체 메써드 호출
		 */
				
		
		/*
		 * 3. 클라이언트에 결과 전송
		 */
		
		out.println("<table border=1 width=30% align=center>");
		out.println("<tr>");
		out.println("<td colspan=2 align=center bgcolor=44ff44><font size=5><b>"+id+"님 가입정보</td>");
		out.println("</tr>");
		out.println("<tr>");
		out.println("<td align=center><b>항목</td>");
		out.println("<td align=center><b>값</td>");
		out.println("</tr>");
		out.println("<tr>");
		out.println("<td align=center><b>아이디</td>");
		out.println("<td align=center>"+id+"</td>");
		out.println("<tr>");
		out.println("<td align=center><b>주소</td>");
		out.println("<td align=center>"+addr+"</td>");
		out.println("</tr>");
		out.println("<tr>");
		out.println("<td align=center><b>성별</td>");
		out.println("<td align=center>"+gender+"</td>");
		out.println("</tr>");
		out.println("<tr>");
		out.println("<td align=center><b>직업</td>");
		out.println("<td align=center>"+job+"</td>");
		out.println("</tr>");
		out.println("<tr>");
		out.println("<td rowspan="+(hobbies.length+1)+" align=center><b>취미</td>");
		out.println("</tr>");
		for (int i = 0; i < hobbies.length; i++) {
			out.println("<tr><td align=center>"+hobbies[i]+"</td></tr>");
		}
				
		
	}

}
