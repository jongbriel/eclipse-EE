<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	session.setAttribute("sUserId", "guard");
	session.setAttribute("level", 5);

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>JSTL core if tag</h1>
<c:if test="true">
	반드시 실행<br>
</c:if>
<c:if test="false">
	반드시 안실행<br>
</c:if>
<c:if test="${sUserId==null}">
	<a href="user_login_form.jsp">로그인</a>
</c:if>
<c:if test="${sUserId!=null}">
	<a href="user_logout_action.jsp">${sUserId}님 로그아웃</a><br>
</c:if>
<c:if test="${empty sUserId}">
	<a href="user_login_form.jsp">${sUserId}님 로그아웃</a><br>
</c:if>
<c:if test="${!empty level}">
	<c:if test="${level>=5}">
		${level}레벨따리 찌끄레기시군요
	</c:if>
</c:if>
<c:if test="${!empty level && level>=5}">
	${level}레벨따리 찌끄레기시군요
</c:if>

</body>
</html>