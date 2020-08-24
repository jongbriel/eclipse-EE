<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="com.itwill.guest.Guest"%>
<%@page import="com.itwill.guest.GuestService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%

	/*
	0. GET방식이면 guest_write_form.jsp redirection
	
	0 . 요청객체 인코딩설정
	1 . 파라메타받기 
		- 5개받기
	2 . Service객체 메쏘드호출(업무처리)
		- GuestService.insertGuest()
	3 . 요청클라이언트로 응답 
		- 성공:guest_main.jsp 로 redirection
		- 실패:guest_error.jsp로 redirection
*/
	try{
	if(request.getMethod().equalsIgnoreCase("GET")){
		response.sendRedirect("guest_list.jsp");
		return;
	}
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("guest_name");
	String email = request.getParameter("guest_email");
	String homepage = request.getParameter("guest_homepage");
	String title = request.getParameter("guest_title");
	String content = request.getParameter("guest_content");
	
	Date date = new Date();
	SimpleDateFormat format = new SimpleDateFormat("yyyy/MM/dd");
	GuestService guestService=new GuestService();
	guestService.insertGuest(new Guest(name, format.format(date),email,homepage,title,content));
	response.sendRedirect("guest_main.jsp");
	
	}catch (Exception e) {
		e.printStackTrace();
		response.sendRedirect("guest_error.jsp");
	}


%>
