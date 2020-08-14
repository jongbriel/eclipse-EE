package com.itwill.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HttpServletResponseServlet
 */
@WebServlet("/response.do")
public class HttpServletResponseServlet extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		/*
		 * 파라메타받기
		 */
		String cmd = request.getParameter("cmd");
		if(cmd==null)cmd="";
		
		if (cmd.equals("1")) {
			out.println("<h3>정상응답</h3><hr>");
			/*
			 * 1. 응답라인 200
			 * 2. 응답헤더
			 * 3. 응답바디데이터 전송
			 */
		}else if (cmd.equals("2")) {
			response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
			/*
			 * 1. 응답라인 400 500
			 * 2. 응답헤더
			 * 3. 응답바디데이터 없음 (보낼 수 없음)
			 */
		}else if (cmd.equals("3")) {
			/*
			 * << redirect >>
			 * 1. 응답라인 302
			 * 2. 응답헤더(redirection url이 포함)
			 * 3. 응답바디데이터 없음 (보낼 수 없음)
			 */
			response.sendRedirect("index.html");
			//response.sendRedirect("http:www.naver.com");
			
		}else {
			response.sendRedirect("04.HttpServletResponse.html");
			
		}
		
		
		
	}

}
