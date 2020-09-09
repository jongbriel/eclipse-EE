<%@page import="java.io.InputStream"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
/*
	POST 방식으로 전송되어진 파일을 입력스트림으로 읽어서
	클라이언트에 보여준다.
*/
%>
<h1>Upload Data View</h1><hr/>
<xmp>
<%
	InputStream in=request.getInputStream();
	while(true){
		int readByte=in.read();
		if(readByte==-1){
			break;
		}
		System.out.print((char)readByte);
		out.write(readByte);
	}
%>
</xmp>