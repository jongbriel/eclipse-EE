package com.itwill.guest;

import java.text.SimpleDateFormat;
import java.util.Date;

public class GuestServiceTestMain {

	public static void main(String[] args) throws Exception {

		GuestService guestService = new GuestService();
		System.out.println();
		
		//int i1 = guestService.insertGuest(new Guest("흐흐흐", "2020/08/19", "dd@naver.com", "naver.com", "크앙", "하하하"));
		//int d1 = guestService.deleteGuest(82);
		//System.out.println(i1);
		//System.out.println(d1);
		
		
		//Guest updateGuest = new Guest(85, "흐흐흐1", "2020/08/19", "dd@naver.com", "naver.com", "크앙", "하하하");
		
		
		//int u1 = guestService.insertGuest(updateGuest);
		//int u2 = guestService.updateGuest(updateGuest);
		
		
		//int d1 = guestService.deleteGuest();
		
		Date date = new Date();
		SimpleDateFormat format = new SimpleDateFormat("yyyy/MM/dd");
		System.out.println(format.format(date));
		
	}

}
