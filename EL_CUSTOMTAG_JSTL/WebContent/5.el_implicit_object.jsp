<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	pageContext.setAttribute("path", "page.jsp");
	request.setAttribute("path", "request.jsp");
	session.setAttribute("path", "session.jsp");
	application.setAttribute("path", "application.jsp");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>EL내장객체</h1>
<ul>
	<%-- 
	<li>------------param-----------</li>
	<li>param 갯수:${param.size()}</li>
	<li>${param}</li>
	<li>${param.id}</li>
	<li>${param['name']}</li>
	<li>${param.hobby}</li>
	<li>-----------paramValues-----------</li>
	<li><%=request.getParameterValues("id")[0]%></li>
	<li>${paramValues.id[0]}</li>
	<li>${paramValues.name[0]}</li>
	<li>${paramValues.hobby[0]}</li>
	<li>${paramValues.hobby[1]}</li>
	<li>${paramValues.hobby[2]}</li>
	--%>
	<li>-----------pageScope,requestScope,sessionScope,applicationScope-----------</li>
	<!--
	변수이름(page)을 Scope객체에서 찾는다. 근데 page부터 뒤지기 때문에 pageScope에 붙어있는 값이 출력된다.
	page -> request -> session -> application 순서로 찾는다.
	-->
	<li>${path}</li>
	<li>${pageScope.path}</li>
	<li>${requestScope.path}</li>
	<li>${sessionScope.path}</li>
	<li>${applicationScope.path}</li>
	<li>-----------------cookie---------------</li>
	<!-- 내가 생성안해도 쿠키객체는 있다. -->
	<li>${cookie}</li>
	<li>${cookie.JSESSIONID}</li>
	<li>${cookie['JSESSIONID']}</li>
	<li>${cookie['JSESSIONID'].getName()}</li><!-- 이건 메써드 호출 -->
	<li>${cookie['JSESSIONID'].getValue()}</li>
	<li>${cookie['JSESSIONID'].name}</li><!-- 이건 프라퍼티 쓰는거라 ()빼야한다! -->
	<li>${cookie['JSESSIONID'].value}</li>
		
	<li>-----------------pageContext[Bean](페이지의 모든 정보를 다 가지고 있다.)---------------</li>
	<li>${pageContext}</li>
	<li>${pageContext.getRequest()}</li>
	<li>${pageContext.request}</li>
	<li>${pageContext.request.method}</li>
	<li>${pageContext.session}</li>
	<li>${pageContext.session.id}</li>
	<li>${pageContext.out}</li>
	<li>${pageContext.response}</li>
	<li>${pageContext.response.locale}</li>
	<li>${pageContext.response.writer}</li>
	<li>${pageContext.response.contentType}</li>
	<li>${pageContext.servletContext}</li>
	<li>${pageContext.servletContext.getRealPath('')}</li>
	<li>${pageContext.servletConfig}</li>
	
</ul>
</body>
</html>