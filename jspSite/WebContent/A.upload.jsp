<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	if(request.getMethod().equalsIgnoreCase("GET")){
		response.sendRedirect("A.file_upload.jsp");
		return;
	}

	/*
	POST 방식으로 전송되어진 파일을 입력스트림으로 읽어서
	서버의 특정위치에 저장한다.
	*/
	String saveDirectory=application.getRealPath("upload");
	MultipartRequest multipartRequest=new MultipartRequest(request,saveDirectory,1024*1024*100,"UTF-8");
	
	/*
	- MultipartRequest 라는 외부 라이브러리 객체를 사용해서 업로드를 종료한 후에는
	  request.getParameter("xxx")를 사용할 수 없다.
	- MultipartRequest 객체를 사용해서 파라메타를 읽어야 한다.
	  리퀘스트안의 파라메타를 지워버리고 자기가 가지고 있기 때문.
	*/
	/*
	<input type=text name=name/>
	<input type=file name=fileone/>
	<input type=file name=filetwo/>
	*/
	String name1=request.getParameter("name");
	String name2=multipartRequest.getParameter("name");
	String fileName1=multipartRequest.getFilesystemName("fileone");
	String fileName2=multipartRequest.getFilesystemName("filetwo");
	
	/*
	실제 업로드 되는 경로
	C:\\JAVA_PYTHON\\eclipse-workspaceEE\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\jspSite\\upload
	*/
%>
<h1>Upload Data</h1>
<hr/>
<br/>
<br/>
<br/>
<li>name1:<%=name1%></li>
<li>name2:<%=name2%></li>
<li>fileone:<%=fileName1%></li>
<li>filetwo:<%=fileName2%></li>



