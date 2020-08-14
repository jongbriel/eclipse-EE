package com.itwill.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SearchServlet
 */
@WebServlet("/search.do")
public class SearchServlet extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		/*
		 * http://192.168.15.9/servletSite/search.do?searchWord=java
		 */
		/*
		 * 1. 파라메타 바끼
		 */
		String searchWord = request.getParameter("searchWord");
		if (searchWord==null||searchWord.equals("")) {
			out.println("Oooooooooops!!!! 검색어를 입력하셔야 합니다.<hr>");
			out.println("<a href='05-00.search_form.html'>검색페이지</a>");
			return;
		}
		
		/*
		 * 2. 검색업무실행
		 */
		
		
		/*
		 * 3. 검색결과 HTML 응답
		 */
		out.println("<h1>"+searchWord+"검색결과</h1><hr>");
		out.println("<ol>");
		for (int i = 0; i < 10; i++) {
			out.print("<li>"+searchWord+"검색데이터"+(i+1)+"</li>");
		}
		out.println("</ol>");
		out.println("<a href='05-00.search_form.html'>검색페이지</a>");
		
	}

}
