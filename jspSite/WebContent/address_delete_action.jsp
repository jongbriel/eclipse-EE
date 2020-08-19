<%@page import="com.itwill.address.AddressService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
/*
 요청URL==>
 http://192.168.15.31/servletSite/address_delete_action.do?no=1
				 
  0.요청객체 encoding설정
  1.파라메타 바끼
  2.AddressService객체생성
  3.AddressService.delete()메쏘드실행
  4.adress_list.jsp로 redirection
*/
try {
	request.setCharacterEncoding("UTF-8");
	String noStr = request.getParameter("no");
	if(noStr==null||noStr.equals("")) {
		response.sendRedirect("address_main.jsp");
		return;
	}
	
	AddressService addressService = new AddressService();
	addressService.delete(Integer.parseInt(noStr));	
	
	response.sendRedirect("address_list.jsp");
	
} catch (Exception e) {
	e.printStackTrace();
}
 
%>