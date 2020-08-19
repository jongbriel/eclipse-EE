<%@page import="com.itwill.address.AddressService"%>
<%@page import="com.itwill.address.Address"%>
<%@page import="com.itwill.address.AddressDaoImpl"%>
<%@page import="com.itwill.address.AddressDao"%>
<%@page language="java" 
		contentType="text/html; charset=UTF-8"
		pageEncoding="UTF-8"
		import="com.itwill.Student,java.util.*"
%>

<%
	//com.itwill.Student st=new com.itwill.Student();
	Student st=new Student();
	ArrayList arrayList=new ArrayList();
	HashMap map=new HashMap();
	AddressDao addressDao=new AddressDaoImpl();
	Address address=new Address();
	AddressService addressService=new AddressService();
	
%>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>page 지시어 [import]</h1>
<h2>형태:&lt;%@page import="com.itwill.Student"&gt;</h2>
<hr/>
<ol>
	<li><%=st.toString()%></li>
	<li><%=arrayList.toString()%></li>
	<li><%=map%></li>
	<li><%=address%></li>
	<li><%=addressDao%></li>
	<li><%=addressService%></li>
</ol>
</body>
</html>
