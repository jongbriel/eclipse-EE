<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>기본객체 pageContext[PageContext]</h1>
<p>
	JSP page에 대한 정보를 가지고 있는 객체(JSP페이지의 기본객체 참조)
</p>
<hr/>
<ol>
	<li><%=pageContext.getRequest()%></li>
	<li><%=pageContext.getResponse()%></li>
	<li><%=pageContext.getSession()%></li>
	<li><%=pageContext.getServletContext()%></li>
	<li><%=pageContext.getServletConfig()%></li>
	<li><%=pageContext.getOut()%></li>
</ol>
</body>
</html>
