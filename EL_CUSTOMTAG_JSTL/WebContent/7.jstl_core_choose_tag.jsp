<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	session.setAttribute("sUserId", "admin");
	//session.setAttribute("sUserId", "guard");
	session.setAttribute("level", 5);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>JSTL core choose tag</h1><hr>
<c:choose>
	<c:when test="${sUserId=='admin'}">
		관리자<br>
	</c:when>
	<c:otherwise>
		일반유저<br>
	</c:otherwise>
</c:choose>
<c:choose>
	<c:when test="${level==1}">레벨 ${level}따리 초보시군여</c:when>
	<c:when test="${level==2}">레벨 ${level}따리 중수시군여</c:when>
	<c:when test="${level==3}">레벨 ${level}의 강자시군여</c:when>
	<c:when test="${level>3 && level<=5 }">절대고수님 존명!</c:when>	
	<c:otherwise>
		레벨은 1~5사이의 정수입니다.<br>
	</c:otherwise>
</c:choose>
<hr/>
<c:choose>
	<c:when test="${sUserId!=null}">
		<c:if test="${sUserId=='admin'}">
			<a href="admin_logout.jsp">${sUserId}님 로그아웃</a>
			<a href="admin_product_delete.jsp">상품삭제</a>
		</c:if>
		<c:if test="${sUserId!='admin' }">
			<a href="user_logout.jsp">${sUserId}님 로그아웃</a>
		</c:if>
	</c:when>
	<c:otherwise>
		<a href="user_login_form.jsp">로그인</a>
	</c:otherwise>
</c:choose>


</body>
</html>