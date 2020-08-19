<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	File webContent=new File("C:\\JAVA_PYTHON\\eclipse-workspaceEE\\jspSite\\WebContent");
	File[] fileList=webContent.listFiles();
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>JSP 수업 파일목록</h1><hr>
<ol>
	<%for(int i=0;i < fileList.length;i++){ %>
		<li><a href='<%=fileList[i].getName()%>'><%=fileList[i].getName()%></a></li>
	<%} %>
</ol>
</body>
</html>