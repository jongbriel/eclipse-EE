<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>쇼핑몰 관리</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel=stylesheet href="css/styles.css" type="text/css">
<link rel=stylesheet href="css/shop.css" type="text/css">
<style type="text/css" media="screen">
form > table tr td{
	border: 0.1px solid black;
}
</style>
<script type="text/javascript">
	
</script>
</head>
<body bgcolor=#FFFFFF text=#000000 leftmargin=0 topmargin=0
	marginwidth=0 marginheight=0>
	<!-- container start-->
	<div id="container">
		<!-- header start -->
		<div id="header">
			<!-- include_common_top.jsp start-->
			<jsp:include page="include_common_top.jsp"/>
			<!-- include_common_top.jsp end-->
		</div>
		<!-- header end -->
		<!-- navigation start-->
		<div id="navigation">
			<!-- include_common_left.jsp start-->
			<jsp:include page="include_common_left.jsp"/>
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
											주문상세조회</b></td>
								</tr>
							</table> <!--form-->
							<form name="f" method="post">
							
							    <table align=center width=80% cellspacing=0
									bordercolordark=#FFFFFF bordercolorlight=#4682b4>
									<caption style="text-align: left;">주문상세정보</caption>
									<tr>
										<td width=290 height=25 bgcolor=#4682b4 align=center class=t1><font
											color=#FFFFFF>주문번호</font></td>
										<td width=112 height=25 bgcolor=#4682b4 align=center class=t1><font
											color=#FFFFFF>주문일</font></td>
										<td width=166 height=25 bgcolor=#4682b4 align=center class=t1><font
											color=#FFFFFF>주문자</font></td>
										<td width=50 height=25 bgcolor=#4682b4 align=center class=t1><font
											color=#FFFFFF>비 고</font></td>
									</tr>
									
									
									<tr>
										<td width=290 height=26 align=center class=t1>5001</td>
										<td width=112 height=26 align=center class=t1>2020-09-04</td>
										<td width=166 height=26 align=center class=t1>김경호</td>
										<td width=50 height=26 align=center class=t1>삭제</td>
									</tr>
								</table>
									
								<br/>	
								<table align=center  width=80% cellspacing=0
									bordercolordark=#FFFFFF bordercolorlight=#4682b4 >
									<caption style="text-align: left;">주문제품목록</caption>
									<tr style="border: 0.1px solid">
										<td width=290 height=25 bgcolor=#4682b4 align=center class=t1><font
											color=#FFFFFF>강아지 이름</font></td>
										<td width=112 height=25 bgcolor=#4682b4 align=center class=t1><font
											color=#FFFFFF>수 량</font></td>
										<td width=166 height=25 bgcolor=#4682b4 align=center class=t1><font
											color=#FFFFFF>가 격</font></td>
										<td width=50 height=25 bgcolor=#4682b4 align=center class=t1><font
											color=#FFFFFF>비 고</font></td>
									</tr>
									
									<!-- cart item start -->
									<tr>
										<td width=290 height=26 align=center class=t1><a href='shop_product_detail.jsp?p_no=2'>달마시안</a></td>
										<td width=112 height=26 align=center class=t1>2</td>
										<td width=166 height=26 align=center class=t1>1,000,000</td>
										<td width=50 height=26 align=center class=t1></td>
									</tr>
									<!-- cart item end -->
									
									<!-- cart item start -->
									<tr>
										<td width=290 height=26 align=center class=t1><a href='shop_product_detail.jsp?p_no=1'>비글</a></td>
										<td width=112 height=26 align=center class=t1>3</td>
										<td width=166 height=26 align=center class=t1>1,650,000</td>
										<td width=50 height=26 align=center class=t1></td>
									</tr>
									<!-- cart item end -->
									

									<tr>
										<td width=640 colspan=4 height=26 class=t1>
											<p align=right>
												<font color=#FF0000>총 주문 금액 : 2,650,000 원
												</font>
											</p>
										</td>
									</tr>
								</table>
							</form> <br />
							<table border="0" cellpadding="0" cellspacing="1" width="590">
								<tr>
									<td align=center> 
										&nbsp;&nbsp;<a href=shop_jumun_list.jsp
										class=m1>주문목록</a>
										&nbsp;&nbsp;<a href=shop_product_list.jsp
										class=m1>계속 쇼핑하기</a>

									</td>
								</tr>
							</table></td>
					</tr>
				</table>
			</div>
			<!-- include_content.jsp end-->
			<!-- content end -->
		</div>
		<!--wrapper end-->
		<div id="footer">
			<!-- include_common_bottom.jsp start-->
			<jsp:include page="include_common_bottom.jsp"/>
			<!-- include_common_bottom.jsp end-->
		</div>
	</div>
	<!--container end-->
</body>
</html>