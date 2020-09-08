
<%@page import="com.itwill.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//8-1.default_scope.jsp이 실행되면 객체 4개가 생김
	Student pageStudent=new Student();
	Student requestStudent=new Student();
	Student sessionStudent=new Student();
	Student applicationStudent=new Student();

	pageContext.setAttribute("pageStudent", pageStudent);	   				//page
	request.setAttribute("requestStudent", requestStudent);  				//request
	session.setAttribute("sessionStudent", sessionStudent); 				//session
	application.setAttribute("applicationStudent", applicationStudent);		//application
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>SCOPE객체</h1>
<hr>
<ol>
	<li>page:<%=pageContext.getAttribute("pageStudent")%></li>
	<li>request:<%=request.getAttribute("requestStudent")%></li>
	<li>session:<%=session.getAttribute("sessionStudent")%></li>
	<li>application:<%=application.getAttribute("applicationStudent")%></li>
</ol> 
<br/>
include
<hr/>
<jsp:include page="8-1.default_scope_request.jsp"></jsp:include>
<hr/>
include
<a href='8-1.default_scope_page_session_application1.jsp'>8-1.default_scope_page_session_application1.jsp</a><br/>

</body>
</html>







