<%--@page import="com.itwill.student.Student"--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
	Student pageSt=new Student();
	Student requestSt=new Student();
	Student sessionSt=new Student();
	Student applicationSt=new Student();

	pageContext.setAttribute("pageSt", pageSt);	   				//page
	request.setAttribute("requestSt", requestSt);  				//request
	session.setAttribute("sessionSt", sessionSt); 				//session
	application.setAttribute("applcationSt", applicationSt);	//application
	*/
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>SCOPE객체1</h1>
<hr>
<ol>
	<li>page:<%=pageContext.getAttribute("pageStudent")%></li>
	<li>request:<%=request.getAttribute("requestStudent")%></li>
	<li>session:<%=session.getAttribute("sessionStudent")%></li>
	<li>application:<%=application.getAttribute("applicationStudent")%></li>
</ol> 
<br/>
<a href='8-1.default_scope_page_session_application2.jsp'>8-1.default_scope_page_session_application2.jsp</a><br/>

</body>
</html>







