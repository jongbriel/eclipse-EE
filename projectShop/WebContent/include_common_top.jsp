<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
   String sUserId=(String)session.getAttribute("sUserId");
%> 
<h1>
	<a href="shop_main.jsp"><img src="image/logo.PNG" border="0"></a>
		<%if(sUserId!=null){ %>	
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="user_view.do?userId=<%=sUserId%>"><%=sUserId%>님</a>
			<a href="user_logout_action.do">로그아웃</a>
			<a href="">위시리스트</a>
			<a href="shop_view_cart.do">장바구니</a>
			<a href="show_jumun_list.do">주문내역조회</a>
		<%}else{ %>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="user_login_form.do">로그인</a>
			<a href="user_write_form.do">회원가입</a>
		<%}%>
</h1>
