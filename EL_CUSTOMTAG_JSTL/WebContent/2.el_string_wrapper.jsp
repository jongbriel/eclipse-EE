<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//모델2의 컨트롤러가 스코프에 아래의 attribute 객체들을 붙여준다. 그래서 모델2에서 EL을 사용한다.
	session.setAttribute("sUserId", "guard1");	
	request.setAttribute("name", "김경호");	
	request.setAttribute("age", 34);	//객체만 attribute에 넣을수 있지만 인티저로 자동박싱 new Integer(34)	
	request.setAttribute("married", new Boolean(true));	
	request.setAttribute("weight", new Double(94.9));
	
	//EL은 스코프객체에 붙어있는 Attribute 객체만 출력가능. 아래와 같은 것들은 출력 못함
	double height=175.23;
	String address="경기도민";

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>EL String, Wrapper(기본형을 래핑하는 객체)객체출력</h1>
<ol>
	<li>${sUserId}</li>
	<li>${name}</li>
	<li>${name.substring(1)}</li>
	<li>${age+14}</li>
	<li>${married}</li>
	<li>${weight}</li>
	
	<li>--EL사용불가능[속성객체가 아니므로]</li>
	<li>${height}</li>
	<li>${adress}</li>
	<li><%=height %></li>
	<li><%=address %></li>

</ol>

</body>
</html>