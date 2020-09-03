<%@page import="com.itwill.shop.cart.CartService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	//장바구니에서 원하는 품목을 삭제시킨 후 view_cart.jsp 로 sendRedirect 시킨다..
	response.sendRedirect("shop_view_cart.jsp");
%>
