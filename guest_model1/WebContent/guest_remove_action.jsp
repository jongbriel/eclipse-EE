<%@page import="com.itwill.guest.GuestService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
	1.파라메타바끼 (quest_no)
	2.GuestService.deleteGuest()메쏘드호출
	3.성공 -->guest_list.jsp redirection
      실패 -->guest_error.jsp redirection
	*/
	
	try{
	String noStr = request.getParameter("guest_no");
    GuestService guestService = new GuestService();
    guestService.deleteGuest(Integer.parseInt(noStr));
   	response.sendRedirect("guest_list.jsp");
    
	}catch (Exception e) {
		e.printStackTrace();
		response.sendRedirect("guest_error.jsp");
	}
	
%>

