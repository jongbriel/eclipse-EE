package com.itwill.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itwill.address.Address;
import com.itwill.address.AddressService;

/**
 * Servlet implementation class AddressDetailServlet
 */
@WebServlet("/address_detail.do")
public class AddressDetailServlet extends HttpServlet {
	
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out=response.getWriter();
			/*
			http://192.168.15.31/servletSite/address_detail.do?no=45
			 */
			/*
			 * 1.파라메타 바끼(no)
			 * 2.AddressService객체생성
			 * 3.받은파라메타로 AddressService.selectByNo()메쏘드실행
			 * 4.Address객체반환
			 * 5.보여주기
			 * Integer.parseInt(request.getParameter("no"));
			 */
			String noStr = request.getParameter("no");
			
			if(noStr==null || noStr.equals("")) {
				response.sendRedirect("address_main.do");
				return;
			}
			
			AddressService addressService = new AddressService();
			Address address = addressService.selectByNo(Integer.parseInt(noStr));
					
			out.println("<!DOCTYPE html>");
			out.println("<html>");
			out.println("<head>");
			out.println("<meta charset='UTF-8'>");
			out.println("<title>Insert title here</title>");
			out.println("</head>");
			out.println("<body>");
			out.println("<h1>["+address.getName()+"님 주소록상세보기]</h1><hr>");
			out.println("<div>");
			out.println("	<a href='address_delete_action.do?no="+address.getNo()+"'>"+address.getName()+"님삭제[GET]</a>");
			out.println("	<a href='address_update_form.do?no="+address.getNo()+"'>["+address.getName()+"님 주소록수정폼]</a>");
			out.println("	<a href='address_insert_action.do'>[주소록쓰기폼]</a>");
			out.println("	<a href='address_list.do'>[주소록리스트]</a>");
			out.println("</div>");
			out.println("<p>");
			out.println("	번호:"+address.getNo()+"<br>");
			out.println("	아이디:"+address.getId()+"<br>");
			out.println("	이름:"+address.getName()+"<br>");
			out.println("	전화:"+address.getPhone()+"<br>");
			out.println("	주소:"+address.getAddress()+"<br>");
			out.println("</p>");
			out.println("</body>");
			out.println("</html>");
		
		} catch (Exception e) {
			e.printStackTrace();
			response.sendRedirect("address_error.html");
		}
		
	}

}
