<%@page import="com.itwill.user.exception.ExistedUserException"%>
<%@page import="org.omg.CORBA.UserException"%>
<%@page import="com.itwill.user.UserService"%>
<%@page import="com.itwill.user.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	if(request.getMethod().equalsIgnoreCase("GET")){
		response.sendRedirect("user_write_form.jsp");
		return;
	}

	String userId = request.getParameter("userId");
	String password = request.getParameter("password");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	User newUser=null;
	try{
		newUser = new User(userId, password, name, email);
		UserService userService=new UserService();
		int rowCount = userService.create(newUser);
		response.sendRedirect("user_login_form.jsp");
	}catch(ExistedUserException e){
		e.printStackTrace();
		/*
		포워드 사용 : 이동할려는 page로 데이터를 전달해야 할때
		*/
		/*
		<jsp:forward path = "user_write_form.jsp"/>
		이것과 아래는 동일함. 근데 이 태그를 쓸려면 중간에 <% 으로 끊어야 해서 그냥 아래로 씀.
		*/
		//자바로 포워드 하는 방법!!!
		//스코프 객체
		//복원할 데이터를 리퀘스트에 담아서 폼으로 다시 전송.(포워드)
		request.setAttribute("fuser", newUser);
		request.setAttribute("msg", e.getMessage());
		RequestDispatcher rd = request.getRequestDispatcher("user_write_form.jsp");
		rd.forward(request, response);
		
		/*****************[정상응답]**********************/
		//out.println("<script>");
		//out.println("alert('"+e.getMessage()+"');");
		//out.println("location.href='user_write_form.jsp';");
		//out.println("</script>");
		/********************************************/
	}catch(Exception e){
		e.printStackTrace();
		response.sendRedirect("user_error.jsp");
	}
	
	
%>


