package com.itwill.user.controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itwill.summer.Controller;
import com.itwill.user.User;
import com.itwill.user.UserService;
import com.itwill.user.exception.ExistedUserException;

public class UserWriteActionController implements Controller{
	
	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		String forwardPath="";
		if(request.getMethod().equalsIgnoreCase("GET")){
			forwardPath="redirect:user_write_form.do";
			return forwardPath;
		}else {
			String userId=request.getParameter("userId");
			String password=request.getParameter("password");
			String name=request.getParameter("name");
			String email=request.getParameter("email");
			User newUser=null;
			try{
				newUser=new User(userId,password,name,email);
				UserService userService=new UserService();
				int rowCount = userService.create(newUser);
				forwardPath="redirect:user_login_form.do";
			}catch(ExistedUserException e){
				/*
				이동할려는 page로 데이타를 전달해야할때
				 */
				/*
				<jsp:forward parth="user_write_form.jsp"/>
				 */
				request.setAttribute("fuser", newUser);
				request.setAttribute("msg", e.getMessage());
				forwardPath="forward:/WEB-INF/views/user_write_form.jsp";
				/*
				RequestDispatcher rd=
						request.getRequestDispatcher("user_write_form.jsp");
				rd.forward(request, response);
				*/
				/*****************[정상응답]**********************
				out.println("<script>");
				out.println("alert('"+e.getMessage()+"');");
				out.println("location.href='user_write_form.jsp';");
				out.println("</script>");
				 ********************************************/
			}catch(Exception e){
				e.printStackTrace();
				forwardPath="forward:/WEB-INF/views/user_error.jsp";
			}
		}
		return forwardPath;
	}
	
}
