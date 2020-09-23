package com.itwill.user.controller;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itwill.summer.Controller;
import com.itwill.user.UserService;

public class UserRemoveActionController implements Controller{
	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		String forwardPath="";
		if(request.getMethod().equalsIgnoreCase("GET")){
			forwardPath="redirect=user_main.do";
		}else {
			try{
				String userId=request.getParameter("userId");
				UserService userService=new UserService();
				int removeRowCount=userService.remove(userId);
				HttpSession session=request.getSession();
				String sUserId=(String)session.getAttribute("sUserId");
				if(userId.equals(sUserId)){
					//로그인 한사람일경우 로그아웃
					forwardPath="redirect:user_logout_action.do";
					//response.sendRedirect("user_logout_action.jsp");
				}else{
					forwardPath="redirect:user_list.do";
					//response.sendRedirect("user_list.jsp");
				}
			}catch(Exception e){
				e.printStackTrace();
				forwardPath="forward:/WEB-INF/views/user_error.jsp";
				//response.sendRedirect("user_error.jsp");
			}	
		}
		return forwardPath;
	}
}
