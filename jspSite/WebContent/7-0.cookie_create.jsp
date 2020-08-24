<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String searchKeyword=request.getParameter("searchKeyword");
	if(searchKeyword==null|| searchKeyword.equals("")){
		response.sendRedirect("7-0.cookie_search.jsp");
		return;
	}
	
	/*
		1.Cookie객체생성
	*/
	Cookie searchKeywordCookie=new Cookie("searchKeyword",searchKeyword);
	Cookie ipCookie=new Cookie("ip",request.getRemoteAddr());
	/*
	    2.쿠키객체설정(setMaxAge)
	       - 쿠키의유효기간설정(파일로저장)
	       - 쿠키의유효기간설정안하면(메모리에저장)
	 */
	searchKeywordCookie.setMaxAge(60*5);//5분
	ipCookie.setMaxAge(60*5);
	/*
		3.응답객체에 쿠키추가
	*/
	response.addCookie(searchKeywordCookie);
	response.addCookie(ipCookie);
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>검색결과[쿠키생성]</h1><hr>
<div>니안에 searchKeyword,ipCookie 쿠키들있다.</div>
<ol>
	<li><%=searchKeyword %>  검색결과</li>
	<li><%=searchKeyword %>  검색결과</li>
	<li><%=searchKeyword %>  검색결과</li>
	<li><%=searchKeyword %>  검색결과</li>
	<li><%=searchKeyword %>  검색결과</li>
	<li><%=searchKeyword %>  검색결과</li>
	<li><%=searchKeyword %>  검색결과</li>
	<li><%=searchKeyword %>  검색결과</li>
</ol>
<div>
	<a href='7-0.cookie_search.jsp'>다시검색[쿠키읽기]</a>
	<a href='7-0.cookie_delete.jsp'>쿠키삭제</a>
</div>
</body>
</html>















