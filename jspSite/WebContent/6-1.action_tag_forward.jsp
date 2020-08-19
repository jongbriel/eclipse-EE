<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	System.out.println("6-1.action_forward.jsp");
	
	
	/*
	6-1.action_forwarded.jsp에 전달할데이타넣기
	*/
	String id="guard";
	String pass="1111";
	String msg="아이디나패쓰워드가 일치하지않습니다.";
	request.setAttribute("msg",msg );
	request.setAttribute("id", id);
	request.setAttribute("pass", pass);
%>
<jsp:forward page="6-1.action_tag_forwarded.jsp"/>
