package com.itwill.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itwill.address.AddressService;

/**
 * Servlet implementation class AddressDeleteActionServlet
 */
@WebServlet("/address_delete_action.do")
public class AddressDeleteActionServlet extends HttpServlet {
	
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		 * 0. 요청객체 encoding 설정
		 * 1.파라메타 바끼(no)
		 * 2.AddressService객체생성
		 * 3.받은파라메타로 AddressService.selectByNo()메쏘드실행
		 * 4.address_list.do로 redirection
	 요청 URL ==>
	 http://192.168.15.9/servletSite/address_delete_action.do?no=1
		 */
		try {
			request.setCharacterEncoding("UTF-8");
			String noStr = request.getParameter("no");
			if(noStr==null||noStr.equals("")) {
				response.sendRedirect("address_main.html");
				return;
			}
			AddressService addressService = new AddressService();
			int deleteRowCount = addressService.delete(Integer.parseInt(noStr));
			response.sendRedirect("address_list.do");
		
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

		
}
