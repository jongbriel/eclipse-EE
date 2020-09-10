package com.itwill.guest.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itwill.guest.Guest;
import com.itwill.guest.GuestService;
import com.itwill.summer.Controller;

public class GuestListController implements Controller{

	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		/**************guest_list.do*****************/
		String forwardPath="";
		try {
			GuestService guestService=new GuestService();
			ArrayList<Guest> guestList=guestService.selectAll();
			//이 request와 guest_list.jsp의 request는 같은 요청 범위다. 포워드잖아! 그래서 request에 담아 보낸다.
			request.setAttribute("guestList", guestList);
			forwardPath="forward:/WEB-INF/views/guest_list.jsp";
		}catch (Exception e) {
			e.printStackTrace();
			forwardPath="forward:/WEB-INF/views/guest_error.jsp";
		}
		return forwardPath;
	}
}
