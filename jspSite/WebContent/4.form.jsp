<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원 가입</title>
<link rel="stylesheet" type="text/css" href="css/common.css">
<link rel="stylesheet" type="text/css" href="css/member.css">
<style type="text/css">
	/*
	tag(html) selector
	*/
	/*
	body{
		background-color: aqua;
		color:white;
	}
	form{
		color:purple;
	}
	h3{
		color: maroon;
	}
	*/
	/*
	class selector
		- 이름앞에 . 을 기술한다.
	*/
	/*
	.TXTFLD{
		border-width: 1px;
		border-color: blue;
		color: blue;
		border-style: dotted;
		border-radius: 10px;
	}
	.TXTFLD1{
		border-width: 1px;
		border-color: red;
		color: red;
		border-style: dotted;
		border-radius: 10px;
	}
	*/
	/*
	id selector
		- 이름앞에 #을 기술
		- id와 일치하는 tag에 적용
	*/
	/*
	#jointbl{
		background-color: orange;
		border: 2px dashed red;
	}
	*/

</style>

</head>
<body>
	<h3 align="center">◆◆◆ 회원가입 ◆◆◆<%=request.getRemoteAddr()%>에서 접속</h3>
	<form name="join" method="post" action="4.join.jsp">
		<table id="jointbl" bgcolor="black" cellspacing="1" cellpadding="5" align="center">
			<tr id="first-tr">
				<th bgcolor="44ff44"><font size="2">아이디</font></th>
				<td bgcolor="white" width="300"><input type="text" size="10"
					name="id" class="TXTFLD"></td>
			</tr>
			<tr>
				<th bgcolor="44ff44"><font size="2">비밀번호</font></th>
				<td bgcolor="white" width="300"><input type="password"
					size="10" name="pass" class="TXTFLD1"></td>
			</tr>
			<tr>
				<th bgcolor="44ff44"><font size="2">비밀번호확인</font></th>
				<td bgcolor="white" width="300"><input type="password"
					size="10" name="repass" class="TXTFLD"></td>
			</tr>
			<tr>
				<th bgcolor="44ff44"><font size="2">이름</font></th>
				<td bgcolor="white" width="300"><input type="text" size="10"
					name="name" class="TXTFLD"></td>
			</tr>
			<tr>
				<th bgcolor="44ff44"><font size="2">주소</font></th>
				<td bgcolor="white" width="300"><input type="text" size="30"
					name="addr" class="TXTFLD"></td>
			</tr>
			<tr>
				<th bgcolor="44ff44"><font size="2">성별</font></th>
				<td bgcolor="white" width="300"><input type="radio"
					name="gender" value="남자"><font size="2">남자</font> <input
					type="radio" name="gender" value="여자" checked="checked"><font
					size="2">여자</font></td>
			</tr>
			<tr>
				<th bgcolor="44ff44"><font size="2">직업</font></th>
				<td bgcolor="white" width="300"><select name="job" size="1">
						<option value="직업을선택하세요"><font size="2">직업을선택하세요</font></option>
						<option value="학생"><font size="2">학생</font></option>
						<option value="주부"><font size="2">주부</font></option>
						<option value="회사원"><font size="2">회사원</font></option>
						<option value="기타"><font size="2">기타</font></option>
				</select></td>
			</tr>
			<tr>
				<th bgcolor="44ff44"><font size="2">취미</font></th>
				<td bgcolor="white" width="300"><input type="checkbox"
					name="hobby" value="컴퓨터" checked><font size="2">컴퓨터</font>
					<input type="checkbox" name="hobby" value="낮잠"><font
					size="2">낮잠</font> <input type="checkbox" name="hobby" value="연애"><font
					size="2">연애</font> <input type="checkbox" name="hobby" value="운동"><font
					size="2">운동</font> <input type="checkbox" name="hobby" value="기타"><font
					size="2">기타</font></td>
			</tr>
			<th colspan="2" bgcolor="ff8888"><input type="submit" value="가입">
				<input type="reset" value="취소"></th>
			</tr>
		</table>
	</form>
</body>
</html>
