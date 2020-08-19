package com.itwill.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itwill.address.Address;
import com.itwill.address.AddressService;

/**
 * Servlet implementation class AddressUpdateFormServlet
 */
@WebServlet("/address_update_form.do")
public class AddressUpdateFormServlet extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		/*
		http://192.168.15.31/servletSite/address_update_form.do?no=45
		 */
		/*
		 * 1.파라메타 바끼(no)
		 * 2.AddressService객체생성
		 * 3.받은파라메타로 AddressService.selectByNo()메쏘드실행
		 * 4.Address객체반환
		 * 5.보여주기
		 */
		request.setCharacterEncoding("UTF-8");
		String noStr = request.getParameter("no");
		if (noStr==null || noStr.equals("")) {
			response.sendRedirect("address_list.do");
			return;
		}
		AddressService addressService = new AddressService();
		Address address;
			address = addressService.selectByNo(Integer.parseInt(noStr));
		
		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("<head>");
		out.println("<meta charset='UTF-8'>");
		out.println("<title>Insert title here</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h1>["+address.getName()+"님 주소록 수정폼]</h1><hr>");
		out.println("<hr>");
		out.println("	<div>");
		out.println("		<a href='address_list.do'>[주소록리스트]</a>");
		out.println("	</div>");
		out.println("	<form method='post' action='address_update_action.do'>");
		out.println("		번호----<input type='hidden' name='no' value='"+address.getNo()+"'><br>");  
		out.println("		아이디--<input type='text' name='id' value='"+address.getId()+"'><br>"); 
		out.println("		이름----<input type='text' name='name' value='"+address.getName()+"'><br>"); 
		out.println("		전화번호<input type='text' name='phone' value='"+address.getPhone()+"'><br>"); 
		out.println("		주소----<input type='text' name='address' value='"+address.getAddress()+"'><br> ");
		out.println("		<input type='submit' value='주소록수정'>");
		out.println("		<input type='reset' value='주소록수정폼지우기'>");
		out.println("	</form>");
		out.println("</body>");
		out.println("</html>");
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}

}
