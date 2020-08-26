<%@page import="com.itwill.user.User"%>
<%@page import="com.itwill.user.exception.UserNotFoundException"%>
<%@page import="com.itwill.user.UserService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ include file="login_check.jspf" %>
 <%
 	String userId = request.getParameter("userId");
 	if(userId==null || userId.equals("")){
 		response.sendRedirect("user_main.jsp");
 		return;
 	}
 	User user = null;
 	try{
 		UserService userService = new UserService();
 		user = userService.findUser(userId);
 	}catch(UserNotFoundException e){
 		out.println("<script>");
 		out.println("alert('"+e.getMessage()+"');");
 		out.println("location.href='user_list.jsp';");
 		out.println("</script>");
 		
 		return;
 	}
 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>사용자 관리</title>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
<link rel=stylesheet href="css/styles.css" type="text/css">
<link rel=stylesheet href="css/user.css" type="text/css">
<script type="text/javascript">
	function userList() {
		
		f.action = "user_list.jsp";
		f.submit();
		
		//location.href='user_list.jsp';
	}

	function userModifyForm() {
		f.action = "user_modify_form.jsp";
		f.method = 'POST';
		f.submit();
	}

	function userRemove() {
		if (confirm("정말 삭제하시겠습니까?")) {
			f.action = "user_remove_action.jsp";
			f.method='POST';
			f.submit();
		}
	}
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
						<td>
							<!--contents--> <br />
							<table style="padding-left: 10px" border=0 cellpadding=0
								cellspacing=0>
								<tr>
									<td bgcolor="f4f4f4" height="22">&nbsp;&nbsp;<b>사용자 관리
											- 사용자 정보보기</b></td>
								</tr>
							</table> <!-- view Form  -->
							<form name="f" method="post">
<%--포스트로 전송할려면 폼을 써야하는데 지금은 그냥 보여지는 값만 설정되어있찌. 인풋이 필요해 입력된 값을 보내야 하니깐~
근데 다 인풋으로 해두면 네모상자 막 생기고 보기 추잡해져.
그래서 타입=히든으로 해놓고~ 아이디값(pk값) 포스트 전송~ --%>
								<input type="hidden" name="userId" value="<%=user.getUserId()%>" />
								<table border="0" cellpadding="0" cellspacing="1" width="590"
									bgcolor="BBBBBB">
									<tr>
									<%--이건 인풋이 아니라 그냥 테이블에 값쓴거. 서브밋해도 데이터 전송 안됨. --%>
										<td width=100 align=center bgcolor="E6ECDE" height="22">사용자
											아이디</td>
										<td width=490 bgcolor="ffffff" style="padding-left: 10">
											<%=user.getUserId()%>
										</td>
									</tr>
									<tr>
										<td width=100 align=center bgcolor="E6ECDE" height="22">이름</td>
										<td width=490 bgcolor="ffffff" style="padding-left: 10">
											<%=user.getName()%>
										</td>
									</tr>
									<tr>
										<td width=100 align=center bgcolor="E6ECDE" height="22">이메일
											주소</td>
										<td width=490 bgcolor="ffffff" style="padding-left: 10">
											<%=user.getEmail()%>
										</td>
									</tr>
								</table>
							</form> <br />
							<table border="0" cellpadding="0" cellspacing="1">
								<tr>
									<td align=center><input type="button" value="수정"
										onClick="userModifyForm()"> &nbsp; <input type="button"
										value="삭제" onClick="userRemove()"> &nbsp; <input
										type="button" value="목록" onClick="userList()"></td>
								</tr>
							</table>
						</td>
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
