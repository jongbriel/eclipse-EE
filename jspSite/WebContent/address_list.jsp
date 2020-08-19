<%@page import="com.itwill.address.AddressService"%>
<%@page import="com.itwill.address.Address"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
try{    
	AddressService addressService = new AddressService();
	ArrayList<Address> addressList = new ArrayList<Address>();
	addressList=addressService.selectAll();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>[주소록리스트]</h1><hr>
<div>
	<a href='address_insert_form.jsp'>[주소록쓰기]</a>
</div>
<div>
	<ul>
	<%for(int i=0;i<addressList.size();i++) { %>
		<li><a href='address_detail.jsp?no=<%=addressList.get(i).getNo()%>'><%=addressList.get(i).getNo()%> <%=addressList.get(i).getName()%></a></li>
	<%}%>
	</ul>
</div>
</body>
</html>
<%
} catch (Exception e) {
	e.printStackTrace();
	response.sendRedirect("address_error.jsp");
}
%>
<!-- 
out.println("<!DOCTYPE html>");
out.println("<html>");
out.println("<head>");
out.println("<meta charset='UTF-8'>");
out.println("<title>Insert title here</title>");
out.println("</head>");
out.println("<body>");
out.println("<h1>[주소록리스트]</h1><hr>");
out.println("<div>");
out.println("	<a href=''>[주소록쓰기]</a>");
out.println("</div>");
out.println("<div>");
out.println("	<ul>");
out.println("		<li><a href=''>1 KIM 011-569-8989 경기도</a></li>");
out.println("		<li><a href=''>3 LEE 018-234-2323 충청도</a></li>");
out.println("		<li><a href=''>7 KIM 019-312-7654 전라도</a></li>");
out.println("	</ul>");
out.println("</div>");
out.println("</body>");
out.println("</html>");

 -->

