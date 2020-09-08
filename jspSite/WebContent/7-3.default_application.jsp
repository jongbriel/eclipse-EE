<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>기본객체 application(ServletContect)</h1>
<p>
	context(싸이트)의 정보를 가지고 있는 객체
</p>
<hr/>
<ol>
<li>서버정보<%=application.getServerInfo()%></li>
<li>major version : <%=application.getMajorVersion()%></li>
<li>minor version : <%=application.getMinorVersion()%></li>
<li>context real path : <%=application.getRealPath("")%></li>
<li>log : <% application.log(">>>>>>>> 현재날짜:"+new Date().toString()); %></li>
<!--
<< web.xml 0 >>
	<context-param>
	  	<param-name>admin</param-name>
	  	<param-value>김경호</param-value>
	  </context-param>
	  <context-param>
	  	<param-name>contextPath</param-name>
	  	<param-value>/jspSite</param-value>
	</context-param>
-->
<li>parameter name : context path(parameter) : <%=application.getInitParameter("contextPath")%>
<li>parameter name : admin(parameter) : <%=application.getInitParameter("admin")%>
</ol>
</body>
</html>
