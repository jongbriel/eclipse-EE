<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.itwill.bean.Guest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	Guest g1=new Guest(1,"KIM","2020","guard1@gmail.com","http://www.naver1.com","타이틀1","콘텐트1");
	Guest g2=new Guest(2,"DIM","2021","guard2@gmail.com","http://www.naver2.com","타이틀2","콘텐트2");
	Guest g3=new Guest(3,"GIM","2022","guard3@gmail.com","http://www.naver3.com","타이틀3","콘텐트3");
	//Guest[] guestArray=new Guest[3];
	ArrayList<Guest> guestList=new ArrayList<Guest>();
	guestList.add(g1);
	guestList.add(g2);
	guestList.add(g3);
	
	HashMap<String,Guest> guestMap=new HashMap<String,Guest>();
	guestMap.put("g1",g1);
	guestMap.put("g2",g2);
	guestMap.put("g3",g3);
	request.setAttribute("guestList", guestList);
	request.setAttribute("guestMap", guestMap);

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>JSTL core forEach tag</h1><hr>
<ul>
	<li>----- ArrayList -----</li>
	<!-- var에서 설정한것 처럼 guest라는 이름으로 페이지컨텍스트 스코프에 담는다. var는 el사용 불가라 저렇게 쓰는거 -->
	<c:forEach items="${guestList}" var="guest">
		<li>${guest.guest_no}, ${guest.guest_name}, ${guest.guest_date}</li>
	</c:forEach>
	<li>---------------------</li>
	<c:forEach items="${guestList}" var="guest" begin="0" step="1" end="${guestList.size()}" varStatus="status">
		<li>${status.index}::::::${guest.guest_no}, ${guest.guest_name}, ${guest.guest_date}</li>
	</c:forEach>
	<li>----- HashMap -----</li>
	<!-- HashMap은 키와 값이 하나의 객체가 된 Entry객체를 반환한다. -->
	<c:forEach items="${guestMap}" var="guestEntry">
		<li>${guestEntry.key} : ${guestEntry.value} --> ${guestEntry.value.guest_no}, ${guestEntry.value.guest_name}</li>
	</c:forEach>
</ul>
</body>
</html>


