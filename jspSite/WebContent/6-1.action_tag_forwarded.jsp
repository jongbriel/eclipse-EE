<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
	6-1.action_forward.jsp로부터 전달받은데이타뽑기
	*/
	String msg=(String)request.getAttribute("msg");
	String id=(String)request.getAttribute("id");
	String pass=(String)request.getAttribute("pass");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>6-1.action_forwarded.jsp</h1>
<hr>
<p>
	나는 6-1.action_forward.jsp에서 forwarding
	당한 jsp입니다..
	제가 응답합니다.
</p>
<p>6-1.action_forward.jsp로부터 전달받은데이타</p>
msg :<%= msg %><br>
id  :<%= id  %><br>
pass:<%= pass%><br>
</body>
</html>













