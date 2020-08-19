<%@page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<HTML>
<HEAD>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<TITLE>방가워요 JSP</TITLE>
</HEAD>
<BODY>
	<center>
		<H2>JSP 잘났어 정말 별꼴이야!!!!!!!!!</H2>
		<center>
			<img src='tomcat.gif' />
			<center>
				<H2>JSP구구단</H2>
			</center>
			<h2>스크립렛[scriptlet]</h2>
			<table border=1 width=600 bgcolor=#CCFF33 bordercolordark=#FF6600
				cellspacing=0>
				<%
				for(int i=1;i<10;i++){
				%>
				<tr>
					<%for(int j=2;j<10;j++){%>
						<td align=center><%out.print(j);%>*<%out.print(i);%>=<%out.print(j*i);%></td>
					<%}%>					
				</tr>
				<%}%>
			</table>
			<hr>
			<h2>표현식[expression]</h2>
			<table border=1 width=600 bgcolor=#CCFF33 bordercolordark=#FF6600
				cellspacing=0>
				<%
				for(int i=1;i<10;i++){
				%>
				<tr>
					<%for(int j=2;j<10;j++){%>
						<td align=center><%=j%>*<%=i%>=<%=j*i%></td>
					<%}%>		
				</tr>
				<%}%>
			</table>
			<br/>
</BODY>
</HTML>
