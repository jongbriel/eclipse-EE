<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String msg  = request.getParameter("msg");
	String id   = request.getParameter("id");
	String pass = request.getParameter("pass");
%>
<h1>7-1.default_response_redirected.jsp</h1><hr>
<p>7-1.default_response_redirect.jsp로부터 전달된데이타[파라메타]</p>
msg :<%=msg %><br>
id  :<%=id %><br>
pass:<%=pass %><br>
