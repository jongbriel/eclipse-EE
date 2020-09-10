<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
/*
	GET, POST요청 구분하기
*/
if(request.getMethod().equalsIgnoreCase("GET")){
	response.sendRedirect("4.form.jsp");
	return;
}

%>

<%--
JSP주석
	1. 파라메타 받기
	2. Service메써드 호출
	3. 클라이언트 응답
--%>
<!-- 
 HTML주석
 	1. 파라메타 받기
	2. Service메써드 호출
	3. 클라이언트 응답
 -->
 <%
	//request.setCharacterEncoding("UTF-8");
	String id=request.getParameter("id");
	String name=request.getParameter("name");
	String pass=request.getParameter("pass");
	String addr=request.getParameter("addr");
	String[] hobbies=request.getParameterValues("hobby");
	if(hobbies==null){
		hobbies=new String[0];
	}
	String job=request.getParameter("job");
	String gender=request.getParameter("gender");
 	
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>가입결과</h1>
<ul>
	<li><%=id %></li>
	<li><%=pass %></li>
	<li><%=name %></li>
	<li><%=addr %></li>
	<li><%=job %></li>
	<li>취미</li>
	<%for(int i=0;i<hobbies.length;i++){ %>
		<li><%=hobbies[i]%></li>
	<%}%>
</ul>
</body>
</html>