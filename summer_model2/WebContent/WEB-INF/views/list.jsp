<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ArrayList list=(ArrayList)request.getAttribute("list");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>LIST(/WEB-INF/views/list.jsp)</h1><hr/>
<h2>- list.do ---------forward--> /WEB-INF/views/list.jsp</h2>
<ol>
	<%for(Object name:list) {%>
		<li><%=name %></li>
	<%} %>
</ol>
</body>
</html>