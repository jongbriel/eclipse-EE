<%@page import="com.itwill.address.AddressService"%>
<%@page import="com.itwill.address.Address"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
try {
request.setCharacterEncoding("UTF-8");
String noStr = request.getParameter("no");
if (noStr==null || noStr.equals("")) {
	response.sendRedirect("address_list.jsp");
	return;
}
Address address = new Address();
AddressService addressService = new AddressService();
address = addressService.selectByNo(Integer.parseInt(noStr));

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>[<%=address.getName()%>님 주소록 수정폼]</h1><hr>
<hr>
	<div>
		<a href='address_list.jsp'>[주소록리스트]</a>
	</div>
	<form method="post" action="address_update_action.jsp">
		번호----<input type="hidden" name="no" value="<%=address.getNo()%>"><br> 
		아이디--<input type="text" name="id" value="<%=address.getId()%>"><br> 
		이름----<input type="text" name="name" value="<%=address.getName()%>"><br> 
		전화번호<input type="text" name="phone" value="<%=address.getPhone()%>"><br> 
		주소----<input type="text" name="address" value="<%=address.getAddress()%>"><br> 
		<input type="submit" value="주소록수정">
		<input type="reset" value="주소록수정폼지우기">
	</form>
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
		out.println("<h1>[김경호님 주소록 수정폼]</h1><hr>");
		out.println("<hr>");
		out.println("	<div>");
		out.println("		<a href='address_list.do'>[주소록리스트]</a>");
		out.println("	</div>");
		out.println("	<form method='post' action='address_update_action.do'>");
		out.println("		아이디--<input type='text' name='id' value='guard'><br>"); 
		out.println("		이름----<input type='text' name='name' value='김경호'><br>"); 
		out.println("		전화번호<input type='text' name='phone' value='123-4568'><br>"); 
		out.println("		주소----<input type='text' name='address' value='경기도 성남시'><br> ");
		out.println("		<input type='submit' value='주소록수정'>");
		out.println("		<input type='reset' value='주소록수정폼지우기'>");
		out.println("	</form>");
		out.println("</body>");
		out.println("</html>");

 -->






