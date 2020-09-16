<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.itwill.bean.Guest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Guest g1=new Guest(1,"KIM","2020","guard1@gmail.com","http://www.naver1.com","타이틀1","콘텐트1");
	Guest g2=new Guest(2,"DIM","2021","guard2@gmail.com","http://www.naver2.com","타이틀2","콘텐트2");
	Guest g3=new Guest(3,"GIM","2022","guard3@gmail.com","http://www.naver3.com","타이틀3","콘텐트3");
	
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
	pageContext.setAttribute("i", 1);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>EL ArrayList(), Map, 배열객체출력</h1><hr>
<ul>
	<li>----------------ArrayList------------------</li>
	<li>${guestList}</li>
	<li>${guestList[0]}</li>
	<li>${guestList[0].guest_no}</li>
	<li>${guestList[0].guest_name}</li>
	<li>${guestList[0].guest_email}</li>
	<li>${guestList[0].guest_homepage}</li>
	<li>${guestList[0].guest_title}</li>
	<li>${guestList[0].guest_content}</li>
	<li>${guestList[i]}</li>
	<li>${guestList[i].guest_no}</li>
	<li>${guestList[i].guest_name}</li>
	<li>${guestList[i].guest_email}</li>
	<li>${guestList[i].guest_homepage}</li>
	<li>${guestList[i].guest_title}</li>
	<li>${guestList[i].guest_content}</li>
	<!-- 스코프객체에 달라붙어 있어야만 사용 할 수 있다. 그래서 포문을 이렇게 억지로 돌려야함. 나중에 제대로 배움. -->
	<li>--------for-------------</li>
	<%
	for(int j=0;j<3;j++){
		request.setAttribute("j", j);	
	%>
		<li>${guestList[j].guest_no},${guestList[j].guest_name},${guestList[j].guest_email}</li>
	<%
	}
	%>
	<li>----------Map-----------</li>
	<li>${guestMap}</li>
	<li>${guestMap['g1']}</li>
	<li>${guestMap['g1'].guest_no}</li>
	<li>${guestMap['g1'].guest_name}</li>
	
	<li>${guestMap['g2']}</li>
	<li>${guestMap['g2'].guest_no}</li>
	<li>${guestMap['g2'].guest_name}</li>
	
	<!-- ${게스트맵.키값.프로퍼티} -->
	<!-- 맵이 아니라면?${게스트객체(빈).프로퍼티} -->
	<!-- 맵이 아니라면?${게스트객체(빈).프로퍼티.프로퍼티} -->
	<li>${guestMap.g3}</li>
	<li>${guestMap.g3.guest_no}</li>
	<li>${guestMap.g3.guest_name}</li>
	
</ul>
</body>
</html>

