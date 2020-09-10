package com.itwill.summer;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itwill.guest.controller.GuestListController;
import com.itwill.guest.controller.GuestMainController;
import com.itwill.guest.controller.GuestViewController;
import com.itwill.guest.controller.GuestWriteFormController;


public class DispatcherServlet extends HttpServlet {
	
	public void init(ServletConfig config) throws ServletException {
		
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.processRequest(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.processRequest(request, response);
	}
	private void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		/*
		 * 1. 클라이언트의 요청URI을 분석하여 구분
		 */
		String requestURI=request.getRequestURI();
		//System.out.println("requestURI"+requestURI);
		String contextPath=request.getContextPath();
		//System.out.println("contextPath"+contextPath);
		String command=requestURI.substring(contextPath.length());
		//System.out.println("command"+command);
		
		/*
		 * 2.클라이언트의 요청에 따른 업무실행(XXService),forwardPath
		 */
		/*############################################################################*/
		/** 요청커맨드 하나당 하나의 객체를 만드는 방식!!! (Command Pattern) **/
		String forwardPath="";
		Controller controller=null;
		if (command.equals("/guest_main.do")) {
			controller=new GuestMainController();
		}else if (command.equals("/guest_list.do")) {
			controller=new GuestListController();
		}else if (command.equals("/guest_view.do")) {
			controller=new GuestViewController();
		}else if (command.equals("/guest_write_form.do")) {
			controller=new GuestWriteFormController();
		}else if (command.equals("/guest_modify_form.do")) {
			//controller=new GuestModifyFormController();
			/*
			if(request.getMethod().equalsIgnoreCase("GET")){
				forwardPath="redirect:guest_main.do";
			}else {
				try {
					String guest_noStr = request.getParameter("guest_no");
					GuestService guestService=new GuestService();
					Guest guest=
							guestService.selectByNo(Integer.parseInt(guest_noStr));
					request.setAttribute("guest", guest);
					forwardPath="forward:/WEB-INF/views/guest_modify_form.jsp";
				}catch (Exception e) {
					e.printStackTrace();
					forwardPath="forward:/WEB-INF/views/guest_error.jsp";
				}
			}
			*/
		}else if (command.equals("/guest_write_action.do")) {
			//controller=new GuestWriteActionController();
			/*
			if(request.getMethod().equalsIgnoreCase("GET")){
				forwardPath="redirect:guest_write_form.do";
			}else {
				try{
					String guest_name=request.getParameter("guest_name");
					String guest_email=request.getParameter("guest_email");
					String guest_homepage=request.getParameter("guest_homepage");
					String guest_title=request.getParameter("guest_title");
					String guest_content=request.getParameter("guest_content");
					Guest guest=
							new Guest(-999,guest_name,
									  null,guest_email,
									  guest_homepage,guest_title,
									  guest_content);
					GuestService guestService=new GuestService();
					int insertRowCount=guestService.insertGuest(guest);
					forwardPath="redirect:guest_list.do";
				}catch(Exception e){
					e.printStackTrace();
					forwardPath="forward:/WEB-INF/views/guest_error.jsp";
				}
			}
			*/
		}else if (command.equals("/guest_modify_action.do")) {
			//controller=new GuestModifyActionController();
			/*
			if(request.getMethod().equalsIgnoreCase("GET")){
				forwardPath="redirect:guest_main.do";
			}else {
				try{
					String guest_noStr=request.getParameter("guest_no");
					String guest_name=request.getParameter("guest_name");
					String guest_email=request.getParameter("guest_email");
					String guest_homepage=request.getParameter("guest_homepage");
					String guest_title=request.getParameter("guest_title");
					String guest_content=request.getParameter("guest_content");
					GuestService guestService=new GuestService();
					int updateRowCount=
							guestService.updateGuest(
										new Guest(Integer.parseInt(guest_noStr),
											guest_name,null,
											guest_email,guest_homepage,
											guest_title,guest_content));
					forwardPath="redirect:guest_view.do?guest_no="+guest_noStr;
					//포워드이기에 같은 리퀘스트라 "guest_no" 파라메타가 들어있다.
					//forwardPath="forward:guest_view.do";
				}catch(Exception e){
					e.printStackTrace();
					forwardPath="forward:/WEB-INF/views/guest_error.jsp";
				}
			}
			*/
		}else if (command.equals("/guest_remove_action.do")) {
			//controller=new GuestRemoveActionController();
			/*
			if(request.getMethod().equalsIgnoreCase("GET")){
				forwardPath="redirect:guest_main.do";
			}else {
			    try{
				    String guest_noStr = request.getParameter("guest_no");
				    GuestService guestService=new GuestService();
				    guestService.deleteGuest(Integer.parseInt(guest_noStr));
				    forwardPath="redirect:guest_list.do";
			    }catch(Exception e){
			    	e.printStackTrace();
			    	forwardPath="forward:/WEB-INF/views/guest_error.jsp";
			    }
			}
			*/		
		}else {
			//controller=new GuestErrorController();
			//forwardPath="forward:/WEB-INF/views/guest_error.jsp";
		}
		/*############################################################################*/
		//이제 if문에서는 컨트롤러 자식객체만 만들어준다. 그 객체가 만들어지면 메써드 실행하고 반환.
		forwardPath=controller.handleRequest(request, response);
		
		/*
		 * 3. JSP forward or redirect
		 */
		String [] pathArray = forwardPath.split(":");
		String forwardOrRedirect=pathArray[0];
		String path=pathArray[1];
		
		if(forwardOrRedirect.equals("redirect")) {
			response.sendRedirect(path);
		}else {
			RequestDispatcher rd=request.getRequestDispatcher(path);
			rd.forward(request, response);
		}
		
	}
	
}
