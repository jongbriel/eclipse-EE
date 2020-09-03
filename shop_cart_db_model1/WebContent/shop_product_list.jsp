<%@page import="java.util.ArrayList"%>
<%@page import="com.itwill.shop.product.ProductService"%>
<%@page import="com.itwill.shop.product.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ProductService productService=new ProductService();
	ArrayList<Product> productList=productService.getProductList();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>쇼핑몰</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel=stylesheet href="css/styles.css" type="text/css">
<link rel=stylesheet href="css/shop.css" type="text/css">
<style type="text/css" media="screen">
</style>
</head>
<body bgcolor=#FFFFFF text=#000000 leftmargin=0 topmargin=0
	marginwidth=0 marginheight=0>
	<!-- container start-->
	<div id="container">
		<!-- header start -->
		<div id="header">
			<!-- include_common_top.jsp start-->
			
<h1>
	<a href="">WEB SAMPLE SITE</a>
</h1>

			<!-- include_common_top.jsp end-->
		</div>
		<!-- header end -->
		<!-- navigation start-->
		<div id="navigation">
			<!-- include_common_left.jsp start-->
			
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<p>
	<strong>메 뉴</strong>
</p>
<ul>
	
	
		<li><a href="user_write_form.jsp">회원가입</a></li>
		<li><a href="user_login_form.jsp">로그인</a></li>
		<li><a href="shop_product_list.jsp">쇼핑몰</a></li>
		<li><a></a></li>
	
		<li><a href="board_list.jsp">게시판리스트</a></li>
		<li><a href="board_write.jsp">게시판쓰기</a></li>
</ul>

			<!-- include_common_left.jsp end-->
		</div>
		<!-- navigation end-->
		<!-- wrapper start -->
		<div id="wrapper">
			<!-- content start -->

			<!-- include_content.jsp start-->
			<div id="content">
				<table border=0 cellpadding=0 cellspacing=0>
					<tr>
						<td><br />
							<table style="padding-left: 10px" border=0 cellpadding=0
								cellspacing=0>
								<tr>
									<td bgcolor="f4f4f4" height="22">&nbsp;&nbsp;<b>쇼핑몰 -
											상품리스트</b></td>
								</tr>
							</table>

							<form name="f" method="post">
								<table width="100%" align="center" border="1" cellspacing="0"
									cellpadding="3" bordercolordark="white"
									bordercolorlight="#556b2f">
									<tr>
										<!--상품시작 --> 
										<%for(Product product:productList){ %>
										<td align="center" width="25%"><a
											href="shop_product_detail.jsp?p_no=<%=product.getP_no()%>"><img
												src="image/<%=product.getP_image()%>" border="0"></a><br /> <br />
											<b>견종:<%=product.getP_name()%></b><br> <font color="#FF0000">가격:<%=product.getP_price()%>원
										</font></td>
										<%} %>
										<!--상품 끝 -->
									</tr>
								</table>
							</form> <br /></td>
					</tr>
				</table>
			</div>
			<!-- include_content.jsp end-->
			<!-- content end -->
		</div>
		<!--wrapper end-->
		<div id="footer">
			<!-- include_common_bottom.jsp start-->
			
	<p align="center">Copyright (&copy;) By Java Class 5. All
		rights reserved.</p>

			<!-- include_common_bottom.jsp end-->
		</div>
	</div>
	<!--container end-->
</body>
</html>