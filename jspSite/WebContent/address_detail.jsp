<%@page import="com.itwill.address.Address"%>
<%@page import="com.itwill.address.AddressService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String noStr = request.getParameter("no");
AddressService addressService = new AddressService();
Address address = addressService.selectByNo(Integer.parseInt(noStr));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>[<%=address.getName()%>님 주소록상세보기]</h1><hr>
<div>
	<a href='address_delete_action.jsp?no=<%=address.getNo()%>'><%=address.getName()%>님삭제[GET]</a>
	<a href='address_update_form.jsp?no=<%=address.getNo()%>'>[<%=address.getName()%>님 주소록수정폼]</a>
	<a href='address_insert_form.jsp'>[주소록쓰기폼]</a>
	<a href='address_list.jsp'>[주소록리스트]</a>
</div>
<p>
	번호:<%=address.getNo()%><br>
	아이디:<%=address.getId()%><br>
	이름:<%=address.getName()%><br>
	전화:<%=address.getPhone()%><br>
	주소:<%=address.getAddress()%><br>
</p>
</body>
</html>
<!-- 
out.println("<!DOCTYPE html>");
out.println("<html>");
out.println("<head>");
out.println("<meta charset='UTF-8'>");
out.println("<title>Insert title here</title>");
out.println("</head>");
out.println("<body>");
out.println("<h1>[김경호님 주소록상세보기]</h1><hr>");
out.println("<div>");
out.println("	<a href='address_delete_action.do?no=1'>김경호님삭제[GET]</a>");
out.println("	<a href='address_update_form.do'>[김경호님 주소록수정폼]</a>");
out.println("	<a href='address_insert_form.do'>[주소록쓰기폼]</a>");
out.println("	<a href='address_list.do'>[주소록리스트]</a>");
out.println("</div>");
out.println("<p>");
out.println("	번호:1<br>");
out.println("	아이디:guard<br>");
out.println("	이름:김경호<br>");
out.println("	전화:123-4568<br>");
out.println("	주소:경기도 성남시<br>");
out.println("</p>");
out.println("</body>");
out.println("</html>");
 -->

