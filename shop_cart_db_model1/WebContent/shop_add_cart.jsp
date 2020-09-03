
<%@page import="com.itwill.shop.product.Product"%>
<%@page import="com.itwill.shop.product.ProductService"%>
<%@page import="com.itwill.shop.cart.CartService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	
	//장바구니에 개를담고 view_cart.jsp 로 redirection...
	
	response.sendRedirect("shop_view_cart.jsp");
%>
