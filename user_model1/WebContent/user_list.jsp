
<%@page import="java.util.ArrayList"%>
<%@page import="com.itwill.user.UserService"%>
<%@page import="com.itwill.user.User"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="login_check.jspf" %>
<%
	//errorPage="user_error.jsp" 요 페이지에서 에러나면 요 url로 포워딩 해줄래~?
	//jsp에서 흐름제어에는 딱 2가지 포워딩과 리다이렉션 밖에 없다. 그리고 포워딩이 99프로다!!!
	//포스트 방식으로 서버에 요청하는 유일한 방법은 form!!!
	UserService userService = new UserService();
	ArrayList<User> userList = userService.findUserList();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>사용자 관리</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel=stylesheet href="css/styles.css" type="text/css">
<link rel=stylesheet href="css/user.css" type="text/css">
<script type="text/javascript">

function userList() {
		f.action = "user_write_form.jsp";
		f.submit();
}
</script>
	
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
									<td bgcolor="f4f4f4" height="22">&nbsp;&nbsp;<b>사용자 관리
											- 리스트</b></td>
								</tr>
							</table>

							<form name="f" method="post">
								<table border="0" cellpadding="0" cellspacing="1"
									bgcolor="BBBBBB">
									<tr>
										<td align=center bgcolor="E6ECDE" height="22">사용자 아이디</td>
										<td align=center bgcolor="E6ECDE">이름</td>
										<td align=center bgcolor="E6ECDE">이메일</td>
									</tr>
									<%for(User user:userList){
										if(!user.getUserId().equals(sUserId)){
									%>
									<tr>
										<td width=190 align=center bgcolor="ffffff" height="20">
											<%=user.getUserId()%>
										</td>
										<td width=200 bgcolor="ffffff" style="padding-left: 10">
											<a href="user_view.jsp?userId=<%=user.getUserId()%>"
											class="user"><%=user.getName()%></a>
										</td>
										<td width=200 align=center bgcolor="ffffff"><%=user.getEmail()%>
										</td>
									</tr>
									<%	}
									}
									%>
									
									
								</table>
							</form> <br />
							<table border="0" cellpadding="0" cellspacing="1">
								<tr>
									<td align="right"><!-- input type="button" value="사용자 추가"  onclick="userList();"/-->
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
