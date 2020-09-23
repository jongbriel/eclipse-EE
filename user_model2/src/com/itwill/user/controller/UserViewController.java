package com.itwill.user.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itwill.summer.Controller;
import com.itwill.user.User;
import com.itwill.user.UserService;
import com.itwill.user.exception.UserNotFoundException;

public class UserViewController implements Controller{
	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		String forwardPath="";
		String userId = request.getParameter("userId");
		if(userId==null|| userId.equals("")){
			forwardPath="redirect:user_main.do";
			//response.sendRedirect("user_main.jsp");
		}else {
			User user=null;
			try{
				UserService userService=new UserService();
				user = userService.findUser(userId);
				request.setAttribute("User", user);
				HttpSession session=request.getSession();
				session.getAttribute("sUserId");
				forwardPath="forward:/WEB-INF/views/user_view.jsp";
			}catch(UserNotFoundException e){
				e.printStackTrace();
				forwardPath="forward:/WEB-INF/views/user_error.jsp";
				//out.println("<script>");
				//out.println("alert('"+e.getMessage()+"');");
				//out.println("location.href='user_list.jsp';");
				//out.println("</script>");
			} catch (Exception e) {
				e.printStackTrace();
				forwardPath="forward:/WEB-INF/views/user_error.jsp";
			}
		}
		return forwardPath;
	}
}
