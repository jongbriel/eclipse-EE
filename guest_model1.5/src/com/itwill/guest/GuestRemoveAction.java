package com.itwill.guest;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class GuestRemoveAction
 */
@WebServlet("/guest_remove_action.do")
public class GuestRemoveAction extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		if(request.getMethod().equalsIgnoreCase("GET")){
			response.sendRedirect("guest_main.do");
			return;
		}
	    try{
		    String guest_noStr = request.getParameter("guest_no");
		    GuestService guestService=new GuestService();
		    guestService.deleteGuest(Integer.parseInt(guest_noStr));
		    response.sendRedirect("guest_list.do");
	    }catch(Exception e){
	    	e.printStackTrace();
	    	response.sendRedirect("guest_error.do");
	    }
		
	}

}
